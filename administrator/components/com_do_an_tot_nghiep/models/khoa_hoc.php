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
class Do_an_tot_nghiepModelKhoa_hoc extends JModelList {

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
                'ma_khoa_hoc', 'a.ma_khoa_hoc',
                'ten_khoa_hoc', 'a.ten_khoa_hoc',
                'mat_khau_sv', 'a.mat_khau_sv',
                'thoi_gian_bat_dau_dang_ky', 'a.thoi_gian_bat_dau_dang_ky',
                'thoi_gian_ket_thuc_dang_ky', 'a.thoi_gian_ket_thuc_dang_ky',
                'mat_khau_gv', 'a.mat_khau_gv',
                'thoi_gian_ket_thuc_xac_nhan', 'a.thoi_gian_ket_thuc_xac_nhan',
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

        
		//Filtering ma_khoa_hoc
		$this->setState('filter.ma_khoa_hoc', $app->getUserStateFromRequest($this->context.'.filter.ma_khoa_hoc', 'filter_ma_khoa_hoc', '', 'string'));

		//Filtering ten_khoa_hoc
		$this->setState('filter.ten_khoa_hoc', $app->getUserStateFromRequest($this->context.'.filter.ten_khoa_hoc', 'filter_ten_khoa_hoc', '', 'string'));

		//Filtering mat_khau_gv
		$this->setState('filter.mat_khau_gv', $app->getUserStateFromRequest($this->context.'.filter.mat_khau_gv', 'filter_mat_khau_gv', '', 'string'));


        // Load the parameters.
        $params = JComponentHelper::getParams('com_do_an_tot_nghiep');
        $this->setState('params', $params);

        // List state information.
        parent::populateState('a.ma_khoa_hoc', 'asc');
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
        $query->from('`#__khoa_hoc` AS a');

        
		// Join over the users for the checked out user
		$query->select("uc.name AS editor");
		$query->join("LEFT", "#__users AS uc ON uc.id=a.checked_out");
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
                $query->where('( a.ma_khoa_hoc LIKE '.$search.'  OR  a.ten_khoa_hoc LIKE '.$search.' )');
            }
        }

        

		//Filtering ma_khoa_hoc

		//Filtering ten_khoa_hoc

		//Filtering mat_khau_gv


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
        
        return $items;
    }

}
