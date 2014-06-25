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

//Load admin language file
$lang = JFactory::getLanguage();
$lang->load('com_do_an_tot_nghiep', JPATH_ADMINISTRATOR);
$canEdit = JFactory::getUser()->authorise('core.edit', 'com_do_an_tot_nghiep');
if (!$canEdit && JFactory::getUser()->authorise('core.edit.own', 'com_do_an_tot_nghiep')) {
	$canEdit = JFactory::getUser()->id == $this->item->created_by;
}
?>
<?php if ($this->item) : ?>

    <div class="item_fields">

        <ul class="fields_list">

            			<li><?php echo JText::_('COM_DO_AN_TOT_NGHIEP_FORM_LBL_DO_AN_ID'); ?>:
			<?php echo $this->item->id; ?></li>
			<li><?php echo JText::_('COM_DO_AN_TOT_NGHIEP_FORM_LBL_DO_AN_MA_SV'); ?>:
			<?php echo $this->item->ma_sv; ?></li>
			<li><?php echo JText::_('COM_DO_AN_TOT_NGHIEP_FORM_LBL_DO_AN_HO_TEN'); ?>:
			<?php echo $this->item->ho_ten; ?></li>
			<li><?php echo JText::_('COM_DO_AN_TOT_NGHIEP_FORM_LBL_DO_AN_EMAIL'); ?>:
			<?php echo $this->item->email; ?></li>
			<li><?php echo JText::_('COM_DO_AN_TOT_NGHIEP_FORM_LBL_DO_AN_DIEN_THOAI'); ?>:
			<?php echo $this->item->dien_thoai; ?></li>
			<li><?php echo JText::_('COM_DO_AN_TOT_NGHIEP_FORM_LBL_DO_AN_LOP'); ?>:
			<?php echo $this->item->lop; ?></li>
			<li><?php echo JText::_('COM_DO_AN_TOT_NGHIEP_FORM_LBL_DO_AN_MA_KHOA_HOC'); ?>:
			<?php echo $this->item->ma_khoa_hoc; ?></li>
			<li><?php echo JText::_('COM_DO_AN_TOT_NGHIEP_FORM_LBL_DO_AN_MA_GV_HUONG_DAN'); ?>:
			<?php echo $this->item->ma_gv_huong_dan; ?></li>
			<li><?php echo JText::_('COM_DO_AN_TOT_NGHIEP_FORM_LBL_DO_AN_GV_HUONG_DAN'); ?>:
			<?php echo $this->item->gv_huong_dan; ?></li>
			<li><?php echo JText::_('COM_DO_AN_TOT_NGHIEP_FORM_LBL_DO_AN_GV_XAC_NHAN_HUONG_DAN'); ?>:
			<?php echo $this->item->gv_xac_nhan_huong_dan; ?></li>
			<li><?php echo JText::_('COM_DO_AN_TOT_NGHIEP_FORM_LBL_DO_AN_GV_PHAN_BIEN'); ?>:
			<?php echo $this->item->gv_phan_bien; ?></li>
			<li><?php echo JText::_('COM_DO_AN_TOT_NGHIEP_FORM_LBL_DO_AN_FILE_DO_AN'); ?>:

			<?php 
				$uploadPath = 'administrator' . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_do_an_tot_nghiep' . DIRECTORY_SEPARATOR . 'files' . DIRECTORY_SEPARATOR . $this->item->file_do_an;
			?>
			<a href="<?php echo JRoute::_(JUri::base() . $uploadPath, false); ?>" target="_blank"><?php echo $this->item->file_do_an; ?></a></li>			<li><?php echo JText::_('COM_DO_AN_TOT_NGHIEP_FORM_LBL_DO_AN_MO_TA'); ?>:
			<?php echo $this->item->mo_ta; ?></li>
			<li><?php echo JText::_('COM_DO_AN_TOT_NGHIEP_FORM_LBL_DO_AN_TU_KHOA'); ?>:
			<?php echo $this->item->tu_khoa; ?></li>
			<li><?php echo JText::_('COM_DO_AN_TOT_NGHIEP_FORM_LBL_DO_AN_CHECKED_OUT'); ?>:
			<?php echo $this->item->checked_out; ?></li>
			<li><?php echo JText::_('COM_DO_AN_TOT_NGHIEP_FORM_LBL_DO_AN_CHECKED_OUT_TIME'); ?>:
			<?php echo $this->item->checked_out_time; ?></li>
			<li><?php echo JText::_('COM_DO_AN_TOT_NGHIEP_FORM_LBL_DO_AN_CREATED_BY'); ?>:
			<?php echo $this->item->created_by_name; ?></li>


        </ul>

    </div>
    <?php if($canEdit && $this->item->checked_out == 0): ?>
		<a href="<?php echo JRoute::_('index.php?option=com_do_an_tot_nghiep&task=do_an.edit&id='.$this->item->id); ?>"><?php echo JText::_("COM_DO_AN_TOT_NGHIEP_EDIT_ITEM"); ?></a>
	<?php endif; ?>
								<?php if(JFactory::getUser()->authorise('core.delete','com_do_an_tot_nghiep')):
								?>
									<a href="javascript:document.getElementById('form-do_an-delete-<?php echo $this->item->id ?>').submit()"><?php echo JText::_("COM_DO_AN_TOT_NGHIEP_DELETE_ITEM"); ?></a>
									<form id="form-do_an-delete-<?php echo $this->item->id; ?>" style="display:inline" action="<?php echo JRoute::_('index.php?option=com_do_an_tot_nghiep&task=do_an.remove'); ?>" method="post" class="form-validate" enctype="multipart/form-data">
										<input type="hidden" name="jform[id]" value="<?php echo $this->item->id; ?>" />
										<input type="hidden" name="option" value="com_do_an_tot_nghiep" />
										<input type="hidden" name="task" value="do_an.remove" />
										<?php echo JHtml::_('form.token'); ?>
									</form>
								<?php
								endif;
							?>
<?php
else:
    echo JText::_('COM_DO_AN_TOT_NGHIEP_ITEM_NOT_LOADED');
endif;
?>
