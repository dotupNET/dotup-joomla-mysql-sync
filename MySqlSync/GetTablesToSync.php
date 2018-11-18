<?php

defined('_JEXEC') or die( 'Restricted access' );

class GetTablesToSync extends ApiResource
{

  public function get(){
    $app = JFactory::getApplication();
    $db = JFactory::getDbo();

    $device = $app->input->get('device', '0');

    if (strcmp($device, "0") == 0) {
      $ex = new ApiException('missing device id',400);
      throw $ex;
    }

    // client state
    $query = $db->getQuery(true);

    $query
        ->select($db->quoteName('*'))
        ->from($db->quoteName('SyncClientState'))
        ->where($db->quoteName('DeviceId') . ' = ' . $db->quote($device));

    // Reset the query using our newly populated query object.
    $db->setQuery($query);

    $syncClientState = $db->loadObjectList();

    // tables to sync
    $db->setQuery('CALL SyncGetTablesToSync("' . $device . '");');
    $tablesToSync = $db->loadObjectList();

    $result = new stdClass;
    $result->syncClientState = $syncClientState;
    $result->tablesToSync = $tablesToSync;

    $this->plugin->setResponse( $result );

  }
}

