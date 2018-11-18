<?php

defined('_JEXEC') or die( 'Restricted access' );

class SyncPullRequest extends ApiResource
{
//IN `device` VARCHAR(50),
//IN `table_name` VARCHAR(128)
//IN `log_level` INT,
//OUT `result`
  public function get(){
    $app = JFactory::getApplication();
    $db = JFactory::getDbo();

    $device = $app->input->get('device', '0');
    $table = $app->input->get('table', '0');

    if (strcmp($device, "0") == 0) {
      $ex = new ApiException('missing device id',400);
      throw $ex;
    }

    if (strcmp($table, "0") == 0) {
      $ex = new ApiException('missing table',400);
      throw $ex;
    }

    $db->transactionStart();

    // table data to sync
    $spResult = null;
    $db->setQuery('CALL SyncPullRequest(' . $db->quote($device) . ',' . $db->quote($table) . ',1);');
//    $db->execute();
    $tableData = $db->loadObjectList();

    $db->transactionCommit();

    // client state
    $querySyncClientState = $db->getQuery(true);

    $querySyncClientState
        ->select($db->quoteName('*'))
        ->from($db->quoteName('SyncClientState'))
        ->where($db->quoteName('DeviceId') . ' = ' . $db->quote($device))
        ->where($db->quoteName('TableName') . ' = ' . $db->quote($table));

    // Reset the query using our newly populated query object.
    $db->setQuery($querySyncClientState);
//    $db->execute();
    $syncClientState = $db->loadObjectList();

    // Add row count
    $syncClientState[0]->RowCount = count($tableData);

    $result = new stdClass;
    $result->syncClientState = $syncClientState[0];
    $result->tableData = $tableData;

    $this->plugin->setResponse( $result );

  }
}
