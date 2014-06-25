<?php

/**
 * @version     1.0.0
 * @package     com_do_an_tot_nghiep
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      NVHoang <hoang_hoang55@yahoo.com> - http://hoangtrung.org
 */
// No direct access
defined('_JEXEC') or die;

/**
 * do_an Table class
 */
class Do_an_tot_nghiepTabledo_an extends JTable {

    /**
     * Constructor
     *
     * @param JDatabase A database connector object
     */
    public function __construct(&$db) {
        parent::__construct('#__do_an', 'id', $db);
    }

    /**
     * Overloaded bind function to pre-process the params.
     *
     * @param	array		Named array
     * @return	null|string	null is operation was satisfactory, otherwise returns an error
     * @see		JTable:bind
     * @since	1.5
     */
    public function bind($array, $ignore = '') {

        

		//Support for multiple or not foreign key field: ma_khoa_hoc
			if(isset($array['ma_khoa_hoc'])){
				if(is_array($array['ma_khoa_hoc'])){
					$array['ma_khoa_hoc'] = implode(',',$array['ma_khoa_hoc']);
				}
				else if(strrpos($array['ma_khoa_hoc'], ',') != false){
					$array['ma_khoa_hoc'] = explode(',',$array['ma_khoa_hoc']);
				}
				else if(empty($array['ma_khoa_hoc'])) {
					$array['ma_khoa_hoc'] = '';
				}
			}

		//Support for multiple or not foreign key field: ma_gv_huong_dan
			if(isset($array['ma_gv_huong_dan'])){
				if(is_array($array['ma_gv_huong_dan'])){
					$array['ma_gv_huong_dan'] = implode(',',$array['ma_gv_huong_dan']);
				}
				else if(strrpos($array['ma_gv_huong_dan'], ',') != false){
					$array['ma_gv_huong_dan'] = explode(',',$array['ma_gv_huong_dan']);
				}
				else if(empty($array['ma_gv_huong_dan'])) {
					$array['ma_gv_huong_dan'] = '';
				}
			}

		//Support for multiple or not foreign key field: gv_phan_bien
			if(isset($array['gv_phan_bien'])){
				if(is_array($array['gv_phan_bien'])){
					$array['gv_phan_bien'] = implode(',',$array['gv_phan_bien']);
				}
				else if(strrpos($array['gv_phan_bien'], ',') != false){
					$array['gv_phan_bien'] = explode(',',$array['gv_phan_bien']);
				}
				else if(empty($array['gv_phan_bien'])) {
					$array['gv_phan_bien'] = '';
				}
			}

				//Support for file field: file_do_an
				$input = JFactory::getApplication()->input;
				$files = $input->files->get('jform');
				if(!empty($files['file_do_an'])){
					jimport('joomla.filesystem.file');
					$file = $files['file_do_an'];

					//Check if the server found any error.
					$fileError = $file['error'];
					$message = '';
					if($fileError > 0 && $fileError != 4) {
						switch ($fileError) {
							case 1:
								$message = JText::_( 'File size exceeds allowed by the server');
								break;
							case 2:
								$message = JText::_( 'File size exceeds allowed by the html form');
								break;
							case 3:
								$message = JText::_( 'Partial upload error');
								break;
						}
						if($message != '') {
							JError::raiseWarning(500, $message);
							return false;
						}
					}
					else if($fileError == 4){
						if(isset($array['file_do_an_hidden'])){
							$array['file_do_an'] = $array['file_do_an_hidden'];
						}
					}
					else{

						//Check for filetype
						$okMIMETypes = 'zip,rar';
						$validMIMEArray = array_map('trim',explode(',', $okMIMETypes));
						$fileMime = $file['type'];
						if(!in_array($fileMime, $validMIMEArray)){
							JError::raiseWarning(500, 'This filetype is not allowed');
							return false;
						}

						//Replace any special characters in the filename
						$filename = explode('.', $file['name']);
						$filename[0] = preg_replace("/[^A-Za-z0-9]/i", "-", $filename[0]);

						//Add Timestamp MD5 to avoid overwriting
						$filename = md5(time()) . '-' . implode('.',$filename);
						$uploadPath = JPATH_ADMINISTRATOR . '/components/com_do_an_tot_nghiep/files/' . $filename;
						$fileTemp = $file['tmp_name'];
						if(!JFile::exists($uploadPath)){
							if (!JFile::upload($fileTemp, $uploadPath)){
								JError::raiseWarning(500, 'Error moving file');
								return false;
							}
						}
						$array['file_do_an'] = $filename;
					}
				}

        if (isset($array['params']) && is_array($array['params'])) {
            $registry = new JRegistry();
            $registry->loadArray($array['params']);
            $array['params'] = (string) $registry;
        }

        if (isset($array['metadata']) && is_array($array['metadata'])) {
            $registry = new JRegistry();
            $registry->loadArray($array['metadata']);
            $array['metadata'] = (string) $registry;
        }
        if (!JFactory::getUser()->authorise('core.admin', 'com_do_an_tot_nghiep.do_an.' . $array['id'])) {
            $actions = JFactory::getACL()->getActions('com_do_an_tot_nghiep', 'do_an');
            $default_actions = JFactory::getACL()->getAssetRules('com_do_an_tot_nghiep.do_an.' . $array['id'])->getData();
            $array_jaccess = array();
            foreach ($actions as $action) {
                $array_jaccess[$action->name] = $default_actions[$action->name];
            }
            $array['rules'] = $this->JAccessRulestoArray($array_jaccess);
        }
        //Bind the rules for ACL where supported.
        if (isset($array['rules']) && is_array($array['rules'])) {
            $this->setRules($array['rules']);
        }

        return parent::bind($array, $ignore);
    }

    /**
     * This function convert an array of JAccessRule objects into an rules array.
     * @param type $jaccessrules an arrao of JAccessRule objects.
     */
    private function JAccessRulestoArray($jaccessrules) {
        $rules = array();
        foreach ($jaccessrules as $action => $jaccess) {
            $actions = array();
            foreach ($jaccess->getData() as $group => $allow) {
                $actions[$group] = ((bool) $allow);
            }
            $rules[$action] = $actions;
        }
        return $rules;
    }

    /**
     * Overloaded check function
     */
    public function check() {

        //If there is an ordering column and this is a new row then get the next ordering value
        if (property_exists($this, 'ordering') && $this->id == 0) {
            $this->ordering = self::getNextOrder();
        }

        return parent::check();
    }

    /**
     * Method to set the publishing state for a row or list of rows in the database
     * table.  The method respects checked out rows by other users and will attempt
     * to checkin rows that it can after adjustments are made.
     *
     * @param    mixed    An optional array of primary key values to update.  If not
     *                    set the instance property value is used.
     * @param    integer The publishing state. eg. [0 = unpublished, 1 = published]
     * @param    integer The user id of the user performing the operation.
     * @return    boolean    True on success.
     * @since    1.0.4
     */
    public function publish($pks = null, $state = 1, $userId = 0) {
        // Initialise variables.
        $k = $this->_tbl_key;

        // Sanitize input.
        JArrayHelper::toInteger($pks);
        $userId = (int) $userId;
        $state = (int) $state;

        // If there are no primary keys set check to see if the instance key is set.
        if (empty($pks)) {
            if ($this->$k) {
                $pks = array($this->$k);
            }
            // Nothing to set publishing state on, return false.
            else {
                $this->setError(JText::_('JLIB_DATABASE_ERROR_NO_ROWS_SELECTED'));
                return false;
            }
        }

        // Build the WHERE clause for the primary keys.
        $where = $k . '=' . implode(' OR ' . $k . '=', $pks);

        // Determine if there is checkin support for the table.
        if (!property_exists($this, 'checked_out') || !property_exists($this, 'checked_out_time')) {
            $checkin = '';
        } else {
            $checkin = ' AND (checked_out = 0 OR checked_out = ' . (int) $userId . ')';
        }

        // Update the publishing state for rows with the given primary keys.
        $this->_db->setQuery(
                'UPDATE `' . $this->_tbl . '`' .
                ' SET `state` = ' . (int) $state .
                ' WHERE (' . $where . ')' .
                $checkin
        );
        $this->_db->query();

        // Check for a database error.
        if ($this->_db->getErrorNum()) {
            $this->setError($this->_db->getErrorMsg());
            return false;
        }

        // If checkin is supported and all rows were adjusted, check them in.
        if ($checkin && (count($pks) == $this->_db->getAffectedRows())) {
            // Checkin each row.
            foreach ($pks as $pk) {
                $this->checkin($pk);
            }
        }

        // If the JTable instance value is in the list of primary keys that were set, set the instance.
        if (in_array($this->$k, $pks)) {
            $this->state = $state;
        }

        $this->setError('');
        return true;
    }

    /**
     * Define a namespaced asset name for inclusion in the #__assets table
     * @return string The asset name 
     *
     * @see JTable::_getAssetName 
     */
    protected function _getAssetName() {
        $k = $this->_tbl_key;
        return 'com_do_an_tot_nghiep.do_an.' . (int) $this->$k;
    }

    /**
     * Returns the parent asset's id. If you have a tree structure, retrieve the parent's id using the external key field
     *
     * @see JTable::_getAssetParentId 
     */
    protected function _getAssetParentId($table = null, $id = null) {
        // We will retrieve the parent-asset from the Asset-table
        $assetParent = JTable::getInstance('Asset');
        // Default: if no asset-parent can be found we take the global asset
        $assetParentId = $assetParent->getRootId();
        // The item has the component as asset-parent
        $assetParent->loadByName('com_do_an_tot_nghiep');
        // Return the found asset-parent-id
        if ($assetParent->id) {
            $assetParentId = $assetParent->id;
        }
        return $assetParentId;
    }

    public function delete($pk = null) {
        $this->load($pk);
        $result = parent::delete($pk);
        if ($result) {
            
            
	jimport('joomla.filesystem.file');
	$result = JFile::delete(JPATH_ADMINISTRATOR . '/components/com_do_an_tot_nghiep/files/' . $this->file_do_an);
        }
        return $result;
    }

}
