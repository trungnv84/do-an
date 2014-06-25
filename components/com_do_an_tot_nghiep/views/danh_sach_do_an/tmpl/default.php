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
?>
<script type="text/javascript">
    function deleteItem(item_id){
        if(confirm("<?php echo JText::_('COM_DO_AN_TOT_NGHIEP_DELETE_MESSAGE'); ?>")){
            document.getElementById('form-do_an-delete-' + item_id).submit();
        }
    }
</script>

<div class="items">
    <ul class="items_list">
<?php $show = false; ?>
        <?php foreach ($this->items as $item) : ?>

            
				<?php
						$show = true;
						?>
							<li>
								<a href="<?php echo JRoute::_('index.php?option=com_do_an_tot_nghiep&view=do_an&id=' . (int)$item->id); ?>"><?php echo $item->ma_sv; ?></a>
								<?php
									if(JFactory::getUser()->authorise('core.delete','com_do_an_tot_nghiep')):
									?>
										<a href="javascript:deleteItem(<?php echo $item->id; ?>);"><?php echo JText::_("COM_DO_AN_TOT_NGHIEP_DELETE_ITEM"); ?></a>
										<form id="form-do_an-delete-<?php echo $item->id; ?>" style="display:inline" action="<?php echo JRoute::_('index.php?option=com_do_an_tot_nghiep&task=do_an.remove'); ?>" method="post" class="form-validate" enctype="multipart/form-data">
											<input type="hidden" name="jform[id]" value="<?php echo $item->id; ?>" />
											<input type="hidden" name="option" value="com_do_an_tot_nghiep" />
											<input type="hidden" name="task" value="do_an.remove" />
											<?php echo JHtml::_('form.token'); ?>
										</form>
									<?php
									endif;
								?>
							</li>

<?php endforeach; ?>
        <?php
        if (!$show):
            echo JText::_('COM_DO_AN_TOT_NGHIEP_NO_ITEMS');
        endif;
        ?>
    </ul>
</div>
<?php if ($show): ?>
    <div class="pagination">
        <p class="counter">
            <?php echo $this->pagination->getPagesCounter(); ?>
        </p>
        <?php echo $this->pagination->getPagesLinks(); ?>
    </div>
<?php endif; ?>


									<?php if(JFactory::getUser()->authorise('core.create','com_do_an_tot_nghiep')): ?><a href="<?php echo JRoute::_('index.php?option=com_do_an_tot_nghiep&task=do_an.edit&id=0'); ?>"><?php echo JText::_("COM_DO_AN_TOT_NGHIEP_ADD_ITEM"); ?></a>
	<?php endif; ?>