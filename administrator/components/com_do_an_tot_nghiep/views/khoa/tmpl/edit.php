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

JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
JHtml::_('behavior.keepalive');
// Import CSS
$document = JFactory::getDocument();
$document->addStyleSheet('components/com_do_an_tot_nghiep/assets/css/do_an_tot_nghiep.css');
?>
<script type="text/javascript">
    function getScript(url,success) {
        var script = document.createElement('script');
        script.src = url;
        var head = document.getElementsByTagName('head')[0],
        done = false;
        // Attach handlers for all browsers
        script.onload = script.onreadystatechange = function() {
            if (!done && (!this.readyState
                || this.readyState == 'loaded'
                || this.readyState == 'complete')) {
                done = true;
                success();
                script.onload = script.onreadystatechange = null;
                head.removeChild(script);
            }
        };
        head.appendChild(script);
    }
    getScript('//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js',function() {
        js = jQuery.noConflict();
        js(document).ready(function(){
            

            Joomla.submitbutton = function(task)
            {
                if (task == 'khoa.cancel') {
                    Joomla.submitform(task, document.getElementById('khoa-form'));
                }
                else{
                    
                    if (task != 'khoa.cancel' && document.formvalidator.isValid(document.id('khoa-form'))) {
                        
                        Joomla.submitform(task, document.getElementById('khoa-form'));
                    }
                    else {
                        alert('<?php echo $this->escape(JText::_('JGLOBAL_VALIDATION_FORM_FAILED')); ?>');
                    }
                }
            }
        });
    });
</script>

<form action="<?php echo JRoute::_('index.php?option=com_do_an_tot_nghiep&layout=edit&id=' . (int) $this->item->id); ?>" method="post" enctype="multipart/form-data" name="adminForm" id="khoa-form" class="form-validate">
    <div class="width-60 fltlft">
        <fieldset class="adminform">
            <legend><?php echo JText::_('COM_DO_AN_TOT_NGHIEP_LEGEND_KHOA'); ?></legend>
            <ul class="adminformlist">

                				<li><?php echo $this->form->getLabel('id'); ?>
				<?php echo $this->form->getInput('id'); ?></li>
				<li><?php echo $this->form->getLabel('ma_khoa_hoc'); ?>
				<?php echo $this->form->getInput('ma_khoa_hoc'); ?></li>
				<li><?php echo $this->form->getLabel('ten_khoa_hoc'); ?>
				<?php echo $this->form->getInput('ten_khoa_hoc'); ?></li>
				<li><?php echo $this->form->getLabel('mat_khau_sv'); ?>
				<?php echo $this->form->getInput('mat_khau_sv'); ?></li>
				<li><?php echo $this->form->getLabel('thoi_gian_bat_dau_dang_ky'); ?>
				<?php echo $this->form->getInput('thoi_gian_bat_dau_dang_ky'); ?></li>
				<li><?php echo $this->form->getLabel('thoi_gian_ket_thuc_dang_ky'); ?>
				<?php echo $this->form->getInput('thoi_gian_ket_thuc_dang_ky'); ?></li>
				<li><?php echo $this->form->getLabel('mat_khau_gv'); ?>
				<?php echo $this->form->getInput('mat_khau_gv'); ?></li>
				<li><?php echo $this->form->getLabel('thoi_gian_ket_thuc_xac_nhan'); ?>
				<?php echo $this->form->getInput('thoi_gian_ket_thuc_xac_nhan'); ?></li>
				<li><?php echo $this->form->getLabel('created_by'); ?>
				<?php echo $this->form->getInput('created_by'); ?></li>


            </ul>
        </fieldset>
    </div>

    

    <input type="hidden" name="task" value="" />
    <?php echo JHtml::_('form.token'); ?>
    <div class="clr"></div>

    <style type="text/css">
        /* Temporary fix for drifting editor fields */
        .adminformlist li {
            clear: both;
        }
    </style>
</form>