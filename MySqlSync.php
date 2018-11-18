<?php

jimport('joomla.plugin.plugin');
//class structure example
class MySqlSync extends ApiPlugin
{
	public function __construct(&$subject, $config = array())
	{
		parent::__construct($subject, $config = array());
		
		// Set resource path
		ApiResource::addIncludePath(dirname(__FILE__).'/MySqlSync');
		
		// Load language files
		$lang = JFactory::getLanguage(); 
		$lang->load('com_users', JPATH_ADMINISTRATOR, '', true);
		
		$this->setResourceAccess('GetTablesToSync', 'protected', 'GET');
		$this->setResourceAccess('ResetClientState', 'protected', 'GET');
		$this->setResourceAccess('SyncPullRequest', 'protected', 'GET');
		$this->setResourceAccess('SyncPullResponse', 'protected', 'GET');
	}
}

?>