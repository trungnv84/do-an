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

jimport('joomla.application.component.controllerform');

/**
 * Do_an controller class.
 */
class Do_an_tot_nghiepControllerDo_an extends JControllerForm
{

    function __construct() {
        $this->view_list = 'danh_sach_do_an';
        parent::__construct();
    }

}