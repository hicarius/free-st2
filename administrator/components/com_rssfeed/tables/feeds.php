<?php
/**
 * @author		
 * @copyright	
 * @license		
 */

defined("_JEXEC") or die("Restricted access");

/**
 * Feeds table class.
 *
 * @package     Rssfeed
 * @subpackage  Tables
 */
class RssfeedTableFeeds extends JTable
{
	/**
	 * Constructor
	 *
	 * @param   JDatabaseDriver  &$db  A database connector object
	 */
	public function __construct(&$db)
	{
		parent::__construct('#__feed', 'id', $db);
	}

	/**
     * Overloaded check function
     */
    public function check()
	{
		// Check alias
		if (empty($this->alias))
		{
			$this->alias = $this->id;
		}
		$this->alias = JApplication::stringURLSafe($this->alias);
		
		// check for valid category
		if (trim($this->catid) == '')
		{
			$this->setError(JText::_('JGLOBAL_CHOOSE_CATEGORY_LABEL'));

			return false;
		}
		
		// Check the publish down date is not earlier than publish up.
		if ((int) $this->publish_down > 0 && $this->publish_down < $this->publish_up)
		{
			$this->setError(JText::_('JGLOBAL_START_PUBLISH_AFTER_FINISH'));
			return false;
		}

        return parent::check();
    }

	/**
	 * Method to bind an associative array or object to the JTable instance.
	 *
	 * @see JTable
	 */
	public function bind($array, $ignore = '')
	{

		return parent::bind($array, $ignore);
	}
	
	/**
	 * Overriden JTable::store to set modified data.
	 *
	 * @param   boolean	True to update fields even if they are null.
	 * @return  boolean  True on success.
	 * @since   1.6
	 */
	public function store($updateNulls = false)
	{
		$date	= JFactory::getDate();
		$user	= JFactory::getUser();
		
		if ($this->id)
		{
			// Existing item
			
			
		}
		else
		{
			// New item. An item created and created_by field can be set by the user,
			// so we don't touch either of these if they are set.			
			if (!(int) $this->created)
			{
				$this->created = $date->toSql();
			}
			
			if (empty($this->created_by))
			{
				$this->created_by = $user->get('id');
			}
		}
		
		// Set publish_up to null date if not set
		if (!$this->publish_up)
		{
			$this->publish_up = $this->_db->getNullDate();
		}

		// Set publish_down to null date if not set
		if (!$this->publish_down)
		{
			$this->publish_down = $this->_db->getNullDate();
		}
		
		// Verify that the alias is unique
		$table = JTable::getInstance('Feeds', 'RssfeedTable');
		if ($table->load(array('alias' => $this->alias, 'catid' => $this->catid)) && ($table->id != $this->id || $this->id == 0))
		{
			$this->setError(JText::_('UNIQUE_ALIAS'));
			return false;
		}
		
		return parent::store($updateNulls);
	}
}
?>