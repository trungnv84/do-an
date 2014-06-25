<?php
/**
 * @version     1.0.0
 * @package     com_do_an_tot_nghiep
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      NVHoang <hoang_hoang55@yahoo.com> - http://hoangtrung.org
 */


// no direct access
defined('_JEXEC') or die;

// Access check.
if (!JFactory::getUser()->authorise('core.manage', 'com_do_an_tot_nghiep')) 
{
	throw new Exception(JText::_('JERROR_ALERTNOAUTHOR'));
}

// Include dependancies
jimport('joomla.application.component.controller');

$controller	= JController::getInstance('Do_an_tot_nghiep');
$controller->execute(JFactory::getApplication()->input->get('task'));
$controller->redirect();
