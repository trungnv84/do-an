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

JHtml::_('behavior.keepalive');
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');

//Load admin language file
$lang = JFactory::getLanguage();
$lang->load('com_do_an_tot_nghiep', JPATH_ADMINISTRATOR);
?>

<!-- Styling for making front end forms look OK -->
<!-- This should probably be moved to the template CSS file -->
<style>
    .front-end-edit ul {
        padding: 0 !important;
    }
    .front-end-edit li {
        list-style: none;
        margin-bottom: 6px !important;
    }
    .front-end-edit label {
        margin-right: 10px;
        display: block;
        float: left;
        text-align: center;
        width: 200px !important;
    }
    .front-end-edit .radio label {
        float: none;
    }
    .front-end-edit .readonly {
        border: none !important;
        color: #666;
    }    
    .front-end-edit #editor-xtd-buttons {
        height: 50px;
        width: 600px;
        float: left;
    }
    .front-end-edit .toggle-editor {
        height: 50px;
        width: 120px;
        float: right;
    }

    #jform_rules-lbl{
        display:none;
    }

    #access-rules a:hover{
        background:#f5f5f5 url('../images/slider_minus.png') right  top no-repeat;
        color: #444;
    }

    fieldset.radio label{
        width: 50px !important;
    }
</style>
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
            js('#form-do_an').submit(function(event){
                
				if(js('#jform_file_do_an').val() != ''){
					js('#jform_file_do_an_hidden').val(js('#jform_file_do_an').val());
				} 
            }); 
        
            
        });
    });
    
</script>

<div class="do_an-edit front-end-edit">
    <?php if (!empty($this->item->id)): ?>
        <h1>Edit <?php echo $this->item->id; ?></h1>
    <?php else: ?>
        <h1>Add</h1>
    <?php endif; ?>

    <form id="form-do_an" action="<?php echo JRoute::_('index.php?option=com_do_an_tot_nghiep&task=do_an.save'); ?>" method="post" class="form-validate" enctype="multipart/form-data">
        <ul>
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
			?>
			<script type="text/javascript">
				window.onload = function(){
					jQuery.noConflict();
					jQuery('input:hidden.ma_khoa_hoc').each(function(){
						var name = jQuery(this).attr('name');
						if(name.indexOf('ma_khoa_hochidden')){
							jQuery('#jform_ma_khoa_hoc option[value="'+jQuery(this).val()+'"]').attr('selected',true);
						}
					});
				}
			</script>				<li><?php echo $this->form->getLabel('ma_gv_huong_dan'); ?>
				<?php echo $this->form->getInput('ma_gv_huong_dan'); ?></li>

			<?php
				foreach((array)$this->item->ma_gv_huong_dan as $value): 
					if(!is_array($value)):
						echo '<input type="hidden" class="ma_gv_huong_dan" name="jform[ma_gv_huong_danhidden]['.$value.']" value="'.$value.'" />';
					endif;
				endforeach;
			?>
			<script type="text/javascript">
				window.onload = function(){
					jQuery.noConflict();
					jQuery('input:hidden.ma_gv_huong_dan').each(function(){
						var name = jQuery(this).attr('name');
						if(name.indexOf('ma_gv_huong_danhidden')){
							jQuery('#jform_ma_gv_huong_dan option[value="'+jQuery(this).val()+'"]').attr('selected',true);
						}
					});
				}
			</script>				<li><?php echo $this->form->getLabel('gv_huong_dan'); ?>
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
			?>
			<script type="text/javascript">
				window.onload = function(){
					jQuery.noConflict();
					jQuery('input:hidden.gv_phan_bien').each(function(){
						var name = jQuery(this).attr('name');
						if(name.indexOf('gv_phan_bienhidden')){
							jQuery('#jform_gv_phan_bien option[value="'+jQuery(this).val()+'"]').attr('selected',true);
						}
					});
				}
			</script>				<li><?php echo $this->form->getLabel('file_do_an'); ?>
				<?php echo $this->form->getInput('file_do_an'); ?></li>

				<?php if (!empty($this->item->file_do_an)) : ?>
						<a href="<?php echo JRoute::_(JUri::base() . 'administrator' . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_do_an_tot_nghiep' . DIRECTORY_SEPARATOR . 'files' .DIRECTORY_SEPARATOR . $this->item->file_do_an, false);?>"><?php echo JText::_("COM_DO_AN_TOT_NGHIEP_VIEW_FILE"); ?></a>
				<?php endif; ?>
				<input type="hidden" name="jform[file_do_an]" id="jform_file_do_an_hidden" value="<?php echo $this->item->file_do_an ?>" />				<li><?php echo $this->form->getLabel('mo_ta'); ?>
				<?php echo $this->form->getInput('mo_ta'); ?></li>
				<li><?php echo $this->form->getLabel('tu_khoa'); ?>
				<?php echo $this->form->getInput('tu_khoa'); ?></li>
				<li><?php echo $this->form->getLabel('created_by'); ?>
				<?php echo $this->form->getInput('created_by'); ?></li>

        </ul>

        <div>
            <button type="submit" class="validate"><span><?php echo JText::_('JSUBMIT'); ?></span></button>
            <?php echo JText::_('or'); ?>
            <a href="<?php echo JRoute::_('index.php?option=com_do_an_tot_nghiep&task=do_anform.cancel'); ?>" title="<?php echo JText::_('JCANCEL'); ?>"><?php echo JText::_('JCANCEL'); ?></a>

            <input type="hidden" name="option" value="com_do_an_tot_nghiep" />
            <input type="hidden" name="task" value="do_anform.save" />
            <?php echo JHtml::_('form.token'); ?>
        </div>
    </form>
</div>
