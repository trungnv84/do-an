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
            
					js('input:hidden.ma_khoa_hoc').each(function(){
						var name = js(this).attr('name');
						if(name.indexOf('ma_khoa_hochidden')){
							js('#jform_ma_khoa_hoc option[value="'+jQuery(this).val()+'"]').attr('selected',true);
						}
					});
					js('input:hidden.ma_gv_huong_dan').each(function(){
						var name = js(this).attr('name');
						if(name.indexOf('ma_gv_huong_danhidden')){
							js('#jform_ma_gv_huong_dan option[value="'+jQuery(this).val()+'"]').attr('selected',true);
						}
					});
					js('input:hidden.gv_phan_bien').each(function(){
						var name = js(this).attr('name');
						if(name.indexOf('gv_phan_bienhidden')){
							js('#jform_gv_phan_bien option[value="'+jQuery(this).val()+'"]').attr('selected',true);
						}
					});

            Joomla.submitbutton = function(task)
            {
                if (task == 'do_an.cancel') {
                    Joomla.submitform(task, document.getElementById('do_an-form'));
                }
                else{
                    
				js = jQuery.noConflict();
				if(js('#jform_file_do_an').val() != ''){
					js('#jform_file_do_an_hidden').val(js('#jform_file_do_an').val());
				}
                    if (task != 'do_an.cancel' && document.formvalidator.isValid(document.id('do_an-form'))) {
                        
                        Joomla.submitform(task, document.getElementById('do_an-form'));
                    }
                    else {
                        alert('<?php echo $this->escape(JText::_('JGLOBAL_VALIDATION_FORM_FAILED')); ?>');
                    }
                }
            }
        });
    });
</script>

<form action="<?php echo JRoute::_('index.php?option=com_do_an_tot_nghiep&layout=edit&id=' . (int) $this->item->id); ?>" method="post" enctype="multipart/form-data" name="adminForm" id="do_an-form" class="form-validate">
    <div class="width-60 fltlft">
        <fieldset class="adminform">
            <legend><?php echo JText::_('COM_DO_AN_TOT_NGHIEP_LEGEND_DO_AN'); ?></legend>
            <ul class="adminformlist">

                				<li><?php echo $this->form->getLabel('id'); ?>
				<?php echo $this->form->getInput('id'); ?></li>
				<li><?php echo $this->form->getLabel('ma_sv'); ?>
				<?php echo $this->form->getInput('ma_sv'); ?></li>
				<li><?php echo $this->form->getLabel('ho_ten'); ?>
				<?php echo $this->form->getInput('ho_ten'); ?></li>
				<li><?php echo $this->form->getLabel('email'); ?>
				<?php echo $this->form->getInput('email'); ?></li>
				<li><?php echo $this->form->getLabel('dien_thoai'); ?>
				<?php echo $this->form->getInput('dien_thoai'); ?></li>
				<li><?php echo $this->form->getLabel('lop'); ?>
				<?php echo $this->form->getInput('lop'); ?></li>
				<li><?php echo $this->form->getLabel('ma_khoa_hoc'); ?>
				<?php echo $this->form->getInput('ma_khoa_hoc'); ?></li>

			<?php
				foreach((array)$this->item->ma_khoa_hoc as $value): 
					if(!is_array($value)):
						echo '<input type="hidden" class="ma_khoa_hoc" name="jform[ma_khoa_hochidden]['.$value.']" value="'.$value.'" />';
					endif;
				endforeach;
			?>				<li><?php echo $this->form->getLabel('ma_gv_huong_dan'); ?>
				<?php echo $this->form->getInput('ma_gv_huong_dan'); ?></li>

			<?php
				foreach((array)$this->item->ma_gv_huong_dan as $value): 
					if(!is_array($value)):
						echo '<input type="hidden" class="ma_gv_huong_dan" name="jform[ma_gv_huong_danhidden]['.$value.']" value="'.$value.'" />';
					endif;
				endforeach;
			?>				<li><?php echo $this->form->getLabel('gv_huong_dan'); ?>
				<?php echo $this->form->getInput('gv_huong_dan'); ?></li>
				<li><?php echo $this->form->getLabel('gv_xac_nhan_huong_dan'); ?>
				<?php echo $this->form->getInput('gv_xac_nhan_huong_dan'); ?></li>
				<li><?php echo $this->form->getLabel('gv_phan_bien'); ?>
				<?php echo $this->form->getInput('gv_phan_bien'); ?></li>

			<?php
				foreach((array)$this->item->gv_phan_bien as $value): 
					if(!is_array($value)):
						echo '<input type="hidden" class="gv_phan_bien" name="jform[gv_phan_bienhidden]['.$value.']" value="'.$value.'" />';
					endif;
				endforeach;
			?>				<li><?php echo $this->form->getLabel('file_do_an'); ?>
				<?php echo $this->form->getInput('file_do_an'); ?></li>

				<?php if (!empty($this->item->file_do_an)) : ?>
						<a href="<?php echo JRoute::_(JUri::base() . 'components' . DIRECTORY_SEPARATOR . 'com_do_an_tot_nghiep' . DIRECTORY_SEPARATOR . 'files' .DIRECTORY_SEPARATOR . $this->item->file_do_an, false);?>">[View File]</a>
				<?php endif; ?>
				<input type="hidden" name="jform[file_do_an]" id="jform_file_do_an_hidden" value="<?php echo $this->item->file_do_an ?>" />				<li><?php echo $this->form->getLabel('mo_ta'); ?>
				<?php echo $this->form->getInput('mo_ta'); ?></li>
				<li><?php echo $this->form->getLabel('tu_khoa'); ?>
				<?php echo $this->form->getInput('tu_khoa'); ?></li>
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