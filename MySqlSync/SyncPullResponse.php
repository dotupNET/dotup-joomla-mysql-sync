<?php

defined('_JEXEC') or die( 'Restricted access' );

class SyncPullResponse extends ApiResource
{

  /*

  PROCEDURE `SyncPullResponse`
	IN `device_id` VARCHAR(50),
	IN `table_name` VARCHAR(128),
	IN `new_state` INT,
	IN `current_sync_id` CHAR(36)
	IN `sync_response` JSON

   * */
  public function post(){
    $app = JFactory::getApplication();
    $db = JFactory::getDbo();

    $body = json_decode(file_get_contents('php://input'), TRUE);

    if (!array_key_exists('syncResponse', $body)) {
      $ex = new ApiException('missing response',400);
      throw $ex;
    }

    $syncResponse = $body['syncResponse'];
    $RR = json_encode( $syncResponse);

    // table data to sync
    $spResult = null;
    $db->setQuery('CALL SyncPullResponse(' .
        $db->quote($syncResponse['DeviceId']) . ',' .
        $db->quote($syncResponse['TableName']) . ',' .
        $db->quote($syncResponse['State']) . ',' .
        $db->quote($syncResponse['CurrentSyncId']) . ',' .
        $db->quote($RR) . ');');

    $resi = $db->loadResult();

    // TODO: what to return?
    $response = new stdClass();
    $response->result = $resi;
    $this->plugin->setResponse( $response );

    if (strcmp($resi, "success") <> 0) {
      $ex = new ApiException('wrong response',400, $syncResponse);
      throw $ex;
    }

  }
}
