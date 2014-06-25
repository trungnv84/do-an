<?php

/**
 * @version     1.0.0
 * @package     com_do_an_tot_nghiep
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      NVHoang <hoang_hoang55@yahoo.com> - http://hoangtrung.org
 */
// No direct access.
defined('_JEXEC') or die;

jimport('joomla.application.component.modelitem');
jimport('joomla.event.dispatcher');

/**
 * Do_an_tot_nghiep model.
 */
class Do_an_tot_nghiepModelDo_an extends JModelItem {

    /**
     * Method to auto-populate the model state.
     *
     * Note. Calling getState in this method will result in recursion.
     *
     * @since	1.6
     */
    protected function populateState() {
        $app = JFactory::getApplication('com_do_an_tot_nghiep');

        // Load state from the request userState on edit or from the passed variable on default
        if (JFactory::getApplication()->input->get('layout') == 'edit') {
            $id = JFactory::getApplication()->getUserState('com_do_an_tot_nghiep.edit.do_an.id');
        } else {
            $id = JFactory::getApplication()->input->get('id');
            JFactory::getApplication()->setUserState('com_do_an_tot_nghiep.edit.do_an.id', $id);
        }
        $this->setState('do_an.id', $id);

        // Load the parameters.
        $params = $app->getParams();
        $params_array = $params->toArray();
        if (isset($params_array['item_id'])) {
            $this->setState('do_an.id', $params_array['item_id']);
        }
        $this->setState('params', $params);
    }

    /**
     * Method to get an ojbect.
     *
     * @param	integer	The id of the object to get.
     *
     * @return	mixed	Object on success, false on failure.
     */
    public function &getData($id = null) {
        if ($this->_item === null) {
            $this->_item = false;

            if (empty($id)) {
                $id = $this->getState('do_an.id');
            }

            // Get a level row instance.
            $table = $this->getTable();

            // Attempt to load the row.
            if ($table->load($id)) {
                // Check published state.
                if ($published = $this->getState('filter.published')) {
                    if ($table->state != $published) {
                        return $this->_item;
                    }
                }

                // Convert the JTable to a clean JObject.
                $properties = $table->getProperties(1);
                $this->_item = JArrayHelper::toObject($properties, 'JObject');
            } elseif ($error = $table->getError()) {
                $this->setError($error);
            }
        }

        

			if (isset($this->_item->ma_khoa_hoc) && $this->_item->ma_khoa_hoc != '') {
				if(is_object($this->_item->ma_khoa_hoc)){
					$this->_item->ma_khoa_hoc = JArrayHelper::fromObject($this->_item->ma_khoa_hoc);
				}
				$values = (is_array($this->_item->ma_khoa_hoc)) ? $this->_item->ma_khoa_hoc : explode(',',$this->_item->ma_khoa_hoc);

				$textValue = array();
				foreach ($values as $value){
					$db = JFactory::getDbo();
					$query = $db->getQuery(true);
					$query
							->select('ten_khoa_hoc')
							->from('`#__khoa_hoc`')
							->where('ma_khoa_hoc = ' .$value);
					$db->setQuery($query);
					$results = $db->loadObject();
					if ($results) {
						$textValue[] = $results->ten_khoa_hoc;
					}
				}

			$this->_item->ma_khoa_hoc = !empty($textValue) ? implode(', ', $textValue) : $this->_item->ma_khoa_hoc;

			}

			if (isset($this->_item->ma_gv_huong_dan) && $this->_item->ma_gv_huong_dan != '') {
				if(is_object($this->_item->ma_gv_huong_dan)){
					$this->_item->ma_gv_huong_dan = JArrayHelper::fromObject($this->_item->ma_gv_huong_dan);
				}
				$values = (is_array($this->_item->ma_gv_huong_dan)) ? $this->_item->ma_gv_huong_dan : explode(',',$this->_item->ma_gv_huong_dan);

				$textValue = array();
				foreach ($values as $value){
					$db = JFactory::getDbo();
					$query = $db->getQuery(true);
					$query
							->select('ten_giao_vien')
							->from('`#__giao_vien`')
							->where('ma_giao_vien = ' .$value);
					$db->setQuery($query);
					$results = $db->loadObject();
					if ($results) {
						$textValue[] = $results->ten_giao_vien;
					}
				}

			$this->_item->ma_gv_huong_dan = !empty($textValue) ? implode(', ', $textValue) : $this->_item->ma_gv_huong_dan;

			}

			if (isset($this->_item->gv_phan_bien) && $this->_item->gv_phan_bien != '') {
				if(is_object($this->_item->gv_phan_bien)){
					$this->_item->gv_phan_bien = JArrayHelper::fromObject($this->_item->gv_phan_bien);
				}
				$values = (is_array($this->_item->gv_phan_bien)) ? $this->_item->gv_phan_bien : explode(',',$this->_item->gv_phan_bien);

				$textValue = array();
				foreach ($values as $value){
					$db = JFactory::getDbo();
					$query = $db->getQuery(true);
					$query
							->select('ten_giao_vien')
							->from('`#__giao_vien`')
							->where('ma_giao_vien = ' .$value);
					$db->setQuery($query);
					$results = $db->loadObject();
					if ($results) {
						$textValue[] = $results->ten_giao_vien;
					}
				}

			$this->_item->gv_phan_bien = !empty($textValue) ? implode(', ', $textValue) : $this->_item->gv_phan_bien;

			}
		if ( isset($this->_item->created_by) ) {
			$this->_item->created_by_name = JFactory::getUser($this->_item->created_by)->name;
		}

        return $this->_item;
    }

    public function getTable($type = 'Do_an', $prefix = 'Do_an_tot_nghiepTable', $config = array()) {
        $this->addTablePath(JPATH_COMPONENT_ADMINISTRATOR . '/tables');
        return JTable::getInstance($type, $prefix, $config);
    }

    /**
     * Method to check in an item.
     *
     * @param	integer		The id of the row to check out.
     * @return	boolean		True on success, false on failure.
     * @since	1.6
     */
    public function checkin($id = null) {
        // Get the id.
        $id = (!empty($id)) ? $id : (int) $this->getState('do_an.id');

        if ($id) {

            // Initialise the table
            $table = $this->getTable();

            // Attempt to check the row in.
            if (method_exists($table, 'checkin')) {
                if (!$table->checkin($id)) {
                    $this->setError($table->getError());
                    return false;
                }
            }
        }

        return true;
    }

    /**
     * Method to check out an item for editing.
     *
     * @param	integer		The id of the row to check out.
     * @return	boolean		True on success, false on failure.
     * @since	1.6
     */
    public function checkout($id = null) {
        // Get the user id.
        $id = (!empty($id)) ? $id : (int) $this->getState('do_an.id');

        if ($id) {

            // Initialise the table
            $table = $this->getTable();

            // Get the current user object.
            $user = JFactory::getUser();

            // Attempt to check the row out.
            if (method_exists($table, 'checkout')) {
                if (!$table->checkout($user->get('id'), $id)) {
                    $this->setError($table->getError());
                    return false;
                }
            }
        }

        return true;
    }

    public function getCategoryName($id) {
        $db = JFactory::getDbo();
        $query = $db->getQuery(true);
        $query
                ->select('title')
                ->from('#__categories')
                ->where('id = ' . $id);
        $db->setQuery($query);
        return $db->loadObject();
    }

    public function publish($id, $state) {
        $table = $this->getTable();
        $table->load($id);
        $table->state = $state;
        return $table->store();
    }

    public function delete($id) {
        $table = $this->getTable();
        return $table->delete($id);
    }

}
