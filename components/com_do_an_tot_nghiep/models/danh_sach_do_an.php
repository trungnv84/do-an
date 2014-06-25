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
        parent::__construct($config);
    }

    /**
     * Method to auto-populate the model state.
     *
     * Note. Calling getState in this method will result in recursion.
     *
     * @since	1.6
     */
    protected function populateState($ordering = null, $direction = null) {

        // Initialise variables.
        $app = JFactory::getApplication();

        // List state information
        $limit = $app->getUserStateFromRequest('global.list.limit', 'limit', $app->getCfg('list_limit'));
        $this->setState('list.limit', $limit);

        $limitstart = JFactory::getApplication()->input->getInt('limitstart', 0);
        $this->setState('list.start', $limitstart);

        

        // List state information.
        parent::populateState($ordering, $direction);
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

        
    // Join over the users for the checked out user.
    $query->select('uc.name AS editor');
    $query->join('LEFT', '#__users AS uc ON uc.id=a.checked_out');
    
		// Join over the foreign key 'ma_khoa_hoc'
		$query->select('#__khoa_hoc_1337458.ten_khoa_hoc AS khoa_hoc_ten_khoa_hoc_1337458');
		$query->join('LEFT', '#__khoa_hoc AS #__khoa_hoc_1337458 ON #__khoa_hoc_1337458.ma_khoa_hoc = a.ma_khoa_hoc');
		// Join over the foreign key 'ma_gv_huong_dan'
		$query->select('#__giao_vien_1337459.ten_giao_vien AS danh_sach_giao_vien_ten_giao_vien_1337459');
		$query->join('LEFT', '#__giao_vien AS #__giao_vien_1337459 ON #__giao_vien_1337459.ma_giao_vien = a.ma_gv_huong_dan');
		// Join over the foreign key 'gv_phan_bien'
		$query->select('#__giao_vien_1337462.ten_giao_vien AS danh_sach_giao_vien_ten_giao_vien_1337462');
		$query->join('LEFT', '#__giao_vien AS #__giao_vien_1337462 ON #__giao_vien_1337462.ma_giao_vien = a.gv_phan_bien');
		// Join over the created by field 'created_by'
		$query->select('created_by.name AS created_by');
		$query->join('LEFT', '#__users AS created_by ON created_by.id = a.created_by');
        

        // Filter by search in title
        $search = $this->getState('filter.search');
        if (!empty($search)) {
            if (stripos($search, 'id:') === 0) {
                $query->where('a.id = ' . (int) substr($search, 3));
            } else {
                $search = $db->Quote('%' . $db->escape($search, true) . '%');
                $query->where('( a.ma_sv LIKE '.$search.'  OR  a.ho_ten LIKE '.$search.'  OR  a.dien_thoai LIKE '.$search.'  OR  a.lop LIKE '.$search.'  OR  a.gv_huong_dan LIKE '.$search.' )');
            }
        }

        

		//Filtering email

		//Filtering dien_thoai

		//Filtering ma_gv_huong_dan
		$filter_ma_gv_huong_dan = $this->state->get("filter.ma_gv_huong_dan");
		if ($filter_ma_gv_huong_dan) {
			$query->where("a.ma_gv_huong_dan = '".$filter_ma_gv_huong_dan."'");
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
        return parent::getItems();
    }

}
