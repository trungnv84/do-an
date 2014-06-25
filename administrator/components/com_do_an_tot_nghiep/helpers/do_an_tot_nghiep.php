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
 * Do_an_tot_nghiep helper.
 */
class Do_an_tot_nghiepBackendHelper {

    /**
     * Configure the Linkbar.
     */
    public static function addSubmenu($vName = '') {
        		JSubMenuHelper::addEntry(
			JText::_('COM_DO_AN_TOT_NGHIEP_TITLE_DANH_SACH_DO_AN'),
			'index.php?option=com_do_an_tot_nghiep&view=danh_sach_do_an',
			$vName == 'danh_sach_do_an'
		);
        		JSubMenuHelper::addEntry(
			JText::_('COM_DO_AN_TOT_NGHIEP_TITLE_DANH_SACH_GIAO_VIEN'),
			'index.php?option=com_do_an_tot_nghiep&view=danh_sach_giao_vien',
			$vName == 'danh_sach_giao_vien'
		);
               		JSubMenuHelper::addEntry(
			JText::_('COM_DO_AN_TOT_NGHIEP_TITLE_KHOA_HOC'),
			'index.php?option=com_do_an_tot_nghiep&view=khoa_hoc',
			$vName == 'khoa_hoc'
		);


    }

    /**
     * Gets a list of the actions that can be performed.
     *
     * @return	JObject
     * @since	1.6
     */
    public static function getActions() {
        $user = JFactory::getUser();
        $result = new JObject;

        $assetName = 'com_do_an_tot_nghiep';

        $actions = array(
            'core.admin', 'core.manage', 'core.create', 'core.edit', 'core.edit.own', 'core.edit.state', 'core.delete'
        );

        foreach ($actions as $action) {
            $result->set($action, $user->authorise($action, $assetName));
        }

        return $result;
    }


}
