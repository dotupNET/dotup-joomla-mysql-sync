<?php

defined('_JEXEC') or die( 'Restricted access' );

class ResetClientState extends ApiResource
{

  public function post(){
    $app = JFactory::getApplication();
    $db = JFactory::getDbo();

    $device = $app->input->get('device', '0');
    $table = $app->input->get('table', '');

    if (strcmp($device, "0") == 0) {
      $ex = new ApiException('missing device id',400);
      throw $ex;
    }

    //$table = $table == '' ? null : $table;
    // tables to sync
    $db->setQuery('CALL SyncResetClientState("' . $device . '","' . $table . '");');
    $result = $db->execute();

    if ($result === false) {
      $ex = new ApiException('could not reset device id ' . $device,400);
      throw $ex;
    }

    $this->plugin->setResponse( "ok" );

  }
}

