<?php
/**
 * @package     JDeveloper
 * @subpackage  Create.Library
 *
 * @copyright  	Copyright (C) 2014, Tilo-Lars Flasche. All rights reserved.
 * @license     GNU General Public License version 2 or later
 */

defined('_JEXEC') or die;
require_once JDeveloperCREATE . '/language.php';
require_once JDeveloperLIB . '/table.php';

/**
 * Library Language Create Class
 *
 * @package     JDeveloper
 * @subpackage  Create.Modue
 */
class JDeveloperCreateLanguageLibrary extends JDeveloperCreateLanguage
{	
	/**
	 * The languages
	 *
	 * @var	array<String>
	 */
	protected $languages = array();

	/**
	 * The language key prefix
	 *
	 * @var	string
	 */
	protected $prefix;
	
	/**
	 * Is this a system language file (file ending sys.ini) ? 
	 *
	 * @var	boolean
	 */
	protected $system = false;

	/**
	 * Constructor
	 *
	 * @param	array	$config		The configuration
	 */
	public function __construct($config)
	{
		parent::__construct($config);
		
		$this->item			= $this->getModel('library')->getItem($config['item_id']);
		$this->languages	= $this->item->params["languages"];
		$this->prefix		= 'LIB_' . str_replace(' ', '_', strtoupper($this->item->name));
		$this->createDir	= $this->item->createDir . "/language";
		$this->element		= "lib_" . strtolower($this->item->name);
		
		if (empty($this->languages))
		{
			$this->languages = array('en-GB');
		}
	}
	
	/**
	 *	Creates the language files
	 *
	 *	@return	boolean		Have the files been created successfully?
	 */
	public function create()
	{		
		if (!$this->write())
		{
			$this->setError($this->name . " : Could not create file");
			return false;
		}
		else return true;
	}
}