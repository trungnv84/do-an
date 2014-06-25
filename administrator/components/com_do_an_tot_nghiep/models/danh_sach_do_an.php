<?php

/**
 * @version     1.0.0
 * @package     com_do_an_tot_nghiep
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      NVHoang <hoang_hoang55@yahoo.com> - http://hoangtrung.org
 */
defined('_JEXEC') or die;

jimport('joomla.application.component.modellist');

/**
 * Methods supporting a list of Do_an_tot_nghiep records.
 */
class Do_an_tot_nghiepModelDanh_sach_do_an extends JModelList {

    /**
     * Constructor.
     *
     * @param    array    An optional associative array of configuration settings.
     * @see        JController
     * @since    1.6
     */
    public function __construct($config = array()) {
        if (empty($config['filter_fields'])) {
            $config['filter_fields'] = array(
                                'id', 'a.id',
                'ma_sv', 'a.ma_sv',
                'ho_ten', 'a.ho_ten',
                'email', 'a.email',
                'dien_thoai', 'a.dien_thoai',
                'lop', 'a.lop',
                'ma_khoa_hoc', 'a.ma_khoa_hoc',
                'ma_gv_huong_dan', 'a.ma_gv_huong_dan',
                'gv_huong_dan', 'a.gv_huong_dan',
                'gv_xac_nhan_huong_dan', 'a.gv_xac_nhan_huong_dan',
                'gv_phan_bien', 'a.gv_phan_bien',
                'file_do_an', 'a.file_do_an',
                'mo_ta', 'a.mo_ta',
                'tu_khoa', 'a.tu_khoa',
                'created_by', 'a.created_by',

            );
        }

        parent::__construct($config);
    }

    /**
     * Method to auto-populate the model state.
     *
     * Note. Calling getState in this method will result in recursion.
     */
    protected function populateState($ordering = null, $direction = null) {
        // Initialise variables.
        $app = JFactory::getApplication('administrator');

        // Load the filter state.
        $search = $app->getUserStateFromRequest($this->context . '.filter.search', 'filter_search');
        $this->setState('filter.search', $search);

        $published = $app->getUserStateFromRequest($this->context . '.filter.state', 'filter_published', '', 'string');
        $this->setState('filter.state', $published);

        
		//Filtering email
		$this->setState('filter.email', $app->getUserStateFromRequest($this->context.'.filter.email', 'filter_email', '', 'string'));

		//Filtering dien_thoai
		$this->setState('filter.dien_thoai', $app->getUserStateFromRequest($this->context.'.filter.dien_thoai', 'filter_dien_thoai', '', 'string'));

		//Filtering ma_gv_huong_dan
		$this->setState('filter.ma_gv_huong_dan', $app->getUserStateFromRequest($this->context.'.filter.ma_gv_huong_dan', 'filter_ma_gv_huong_dan', '', 'string'));

		//Filtering gv_huong_dan
		$this->setState('filter.gv_huong_dan', $app->getUserStateFromRequest($this->context.'.filter.gv_huong_dan', 'filter_gv_huong_dan', '', 'string'));


        // Load the parameters.
        $params = JComponentHelper::getParams('com_do_an_tot_nghiep');
        $this->setState('params', $params);

        // List state information.
        parent::populateState('a.ma_sv', 'asc');
    }

    /**
     * Method to get a store id based on model configuration state.
     *
     * This is necessary because the model is used by the component and
     * different modules that might need different sets of data or different
     * ordering requirements.
     *
     * @param	string		$id	A prefix for the store id.
     * @return	string		A store id.
     * @since	1.6
     */
    protected function getStoreId($id = '') {
        // Compile the store id.
        $id.= ':' . $this->getState('filter.search');
        $id.= ':' . $this->getState('filter.state');

        return parent::getStoreId($id);
    }

    /**
     * Build an SQL query to load the list data.
     *
     * @return	JDatabaseQuery
     * @since	1.6
     */
    protected function getListQuery() {
        // Create a new query object.
        $db = $this->getDbo();
        $query = $db->getQuery(true);

        // Select the required fields from the table.
        $query->select(
                $this->getState(
                        'list.select', 'a.*'
                )
        );
        $query->from('`#__do_an` AS a');

        
		// Join over the users for the checked out user
		$query->select("uc.name AS editor");
		$query->join("LEFT", "#__users AS uc ON uc.id=a.checked_out");
		// Join over the foreign key 'ma_khoa_hoc'
		$query->select('#__khoa_hoc_1337458.ten_khoa_hoc AS khoa_hoc_ten_khoa_hoc_1337458');
		$query->join('LEFT', '#__khoa_hoc AS #__khoa_hoc_1337458 ON #__khoa_hoc_1337458.ma_khoa_hoc = a.ma_khoa_hoc');
		// Join over the foreign key 'ma_gv_huong_dan'
		$query->select('#__giao_vien_1337459.ten_giao_vien AS danh_sach_giao_vien_ten_giao_vien_1337459');
		$query->join('LEFT', '#__giao_vien AS #__giao_vien_1337459 ON #__giao_vien_1337459.ma_giao_vien = a.ma_gv_huong_dan');
		// Join over the foreign key 'gv_phan_bien'
		$query->select('#__giao_vien_1337462.ten_giao_vien AS danh_sach_giao_vien_ten_giao_vien_1337462');
		$query->join('LEFT', '#__giao_vien AS #__giao_vien_1337462 ON #__giao_vien_1337462.ma_giao_vien = a.gv_phan_bien');
		// Join over the user field 'created_by'
		$query->select('created_by.name AS created_by');
		$query->join('LEFT', '#__users AS created_by ON created_by.id = a.created_by');

        

        // Filter by search in title
        $search = $this->getState('filter.search');
        if (!empty($search)) {
            if (stripos($search, 'id:') === 0) {
                $query->where('a.id = ' . (int) substr($search, 3));
            } else {
                $search = $db->Quote('%' . $db->escape($search, true) . '%');
                $query->where('( a.ma_sv LIKE '.$search.'  OR  a.ho_ten LIKE '.$search.'  OR  a.email LIKE '.$search.'  OR  a.dien_thoai LIKE '.$search.'  OR  a.lop LIKE '.$search.'  OR  a.ma_gv_huong_dan LIKE '.$search.'  OR  a.gv_huong_dan LIKE '.$search.' )');
            }
        }

        

		//Filtering email

		//Filtering dien_thoai

		//Filtering ma_gv_huong_dan
		$filter_ma_gv_huong_dan = $this->state->get("filter.ma_gv_huong_dan");
		if ($filter_ma_gv_huong_dan) {
			$query->where("a.ma_gv_huong_dan = '".$db->escape($filter_ma_gv_huong_dan)."'");
		}

		//Filtering gv_huong_dan


        // Add the list ordering clause.
        $orderCol = $this->state->get('list.ordering');
        $orderDirn = $this->state->get('list.direction');
        if ($orderCol && $orderDirn) {
            $query->order($db->escape($orderCol . ' ' . $orderDirn));
        }

        return $query;
    }

    public function getItems() {
        $items = parent::getItems();
        
		foreach ($items as $oneItem) {

			if (isset($oneItem->ma_khoa_hoc)) {
				$values = explode(',', $oneItem->ma_khoa_hoc);

				$textValue = array();
				foreach ($values as $value){
					$db = JFactory::getDbo();
					$query = $db->getQuery(true);
					$query
							->select('ten_khoa_hoc')
							->from('`#__khoa_hoc`')
							->where('ma_khoa_hoc = ' . $db->quote($db->escape($value)));
					$db->setQuery($query);
					$results = $db->loadObject();
					if ($results) {
						$textValue[] = $results->ten_khoa_hoc;
					}
				}

			$oneItem->ma_khoa_hoc = !empty($textValue) ? implode(', ', $textValue) : $oneItem->ma_khoa_hoc;

			}

			if (isset($oneItem->ma_gv_huong_dan)) {
				$values = explode(',', $oneItem->ma_gv_huong_dan);

				$textValue = array();
				foreach ($values as $value){
					$db = JFactory::getDbo();
					$query = $db->getQuery(true);
					$query
							->select('ten_giao_vien')
							->from('`#__giao_vien`')
							->where('ma_giao_vien = ' . $db->quote($db->escape($value)));
					$db->setQuery($query);
					$results = $db->loadObject();
					if ($results) {
						$textValue[] = $results->ten_giao_vien;
					}
				}

			$oneItem->ma_gv_huong_dan = !empty($textValue) ? implode(', ', $textValue) : $oneItem->ma_gv_huong_dan;

			}

			if (isset($oneItem->gv_phan_bien)) {
				$values = explode(',', $oneItem->gv_phan_bien);

				$textValue = array();
				foreach ($values as $value){
					$db = JFactory::getDbo();
					$query = $db->getQuery(true);
					$query
							->select('ten_giao_vien')
							->from('`#__giao_vien`')
							->where('ma_giao_vien = ' . $db->quote($db->escape($value)));
					$db->setQuery($query);
					$results = $db->loadObject();
					if ($results) {
						$textValue[] = $results->ten_giao_vien;
					}
				}

			$oneItem->gv_phan_bien = !empty($textValue) ? implode(', ', $textValue) : $oneItem->gv_phan_bien;

			}
		}
        return $items;
    }

}
