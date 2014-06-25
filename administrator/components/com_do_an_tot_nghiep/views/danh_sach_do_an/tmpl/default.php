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
JHTML::_('script', 'system/multiselect.js', false, true);
// Import CSS
$document = JFactory::getDocument();
$document->addStyleSheet('components/com_do_an_tot_nghiep/assets/css/do_an_tot_nghiep.css');

$user = JFactory::getUser();
$userId = $user->get('id');
$listOrder = $this->state->get('list.ordering');
$listDirn = $this->state->get('list.direction');
$canOrder = $user->authorise('core.edit.state', 'com_do_an_tot_nghiep');
$saveOrder = $listOrder == 'a.ordering';
$input = JFactory::getApplication()->input;
jimport('joomla.form.form');
JForm::addFormPath(JPATH_COMPONENT . '/models/forms');
$form = JForm::getInstance('com_do_an_tot_nghiep.do_an', 'do_an');
?>

<form action="<?php echo JRoute::_('index.php?option=com_do_an_tot_nghiep&view=danh_sach_do_an'); ?>" method="post" name="adminForm" id="adminForm">
    <fieldset id="filter-bar">
        <div class="filter-search fltlft">
            <label class="filter-search-lbl" for="filter_search"><?php echo JText::_('JSEARCH_FILTER_LABEL'); ?></label>
            <input type="text" name="filter_search" id="filter_search" value="<?php echo $this->escape($this->state->get('filter.search')); ?>" title="<?php echo JText::_('Search'); ?>" />
            <button type="submit"><?php echo JText::_('JSEARCH_FILTER_SUBMIT'); ?></button>
            <button type="button" onclick="document.id('filter_search').value = '';
                    this.form.submit();"><?php echo JText::_('JSEARCH_FILTER_CLEAR'); ?></button>
        </div>

        
		<div class="filter-select fltrt">
			<?php //Filter for the field ma_gv_huong_dan
				$selected_ma_gv_huong_dan = $input->get('filter_ma_gv_huong_dan',$this->state->get('filter.ma_gv_huong_dan'));
				echo $form->getInput('filter_ma_gv_huong_dan', null, $selected_ma_gv_huong_dan);
			?>
		</div>


    </fieldset>
    <div class="clr"> </div>

    <table class="adminlist">
        <thead>
            <tr>
                <th width="1%">
                    <input type="checkbox" name="checkall-toggle" value="" onclick="checkAll(this)" />
                </th>
                
				<th class="left">
					<?php echo JHtml::_('grid.sort',  'COM_DO_AN_TOT_NGHIEP_DANH_SACH_DO_AN_MA_SV', 'a.ma_sv', $listDirn, $listOrder); ?>
				</th>

				<th class="left">
					<?php echo JHtml::_('grid.sort',  'COM_DO_AN_TOT_NGHIEP_DANH_SACH_DO_AN_HO_TEN', 'a.ho_ten', $listDirn, $listOrder); ?>
				</th>

				<th class="left">
					<?php echo JHtml::_('grid.sort',  'COM_DO_AN_TOT_NGHIEP_DANH_SACH_DO_AN_EMAIL', 'a.email', $listDirn, $listOrder); ?>
				</th>

				<th class="left">
					<?php echo JHtml::_('grid.sort',  'COM_DO_AN_TOT_NGHIEP_DANH_SACH_DO_AN_DIEN_THOAI', 'a.dien_thoai', $listDirn, $listOrder); ?>
				</th>

				<th class="left">
					<?php echo JHtml::_('grid.sort',  'COM_DO_AN_TOT_NGHIEP_DANH_SACH_DO_AN_LOP', 'a.lop', $listDirn, $listOrder); ?>
				</th>

				<th class="left">
					<?php echo JHtml::_('grid.sort',  'COM_DO_AN_TOT_NGHIEP_DANH_SACH_DO_AN_MA_GV_HUONG_DAN', 'a.ma_gv_huong_dan', $listDirn, $listOrder); ?>
				</th>

				<th class="left">
					<?php echo JHtml::_('grid.sort',  'COM_DO_AN_TOT_NGHIEP_DANH_SACH_DO_AN_GV_HUONG_DAN', 'a.gv_huong_dan', $listDirn, $listOrder); ?>
				</th>

				<th class="left">
					<?php echo JHtml::_('grid.sort',  'COM_DO_AN_TOT_NGHIEP_DANH_SACH_DO_AN_GV_XAC_NHAN_HUONG_DAN', 'a.gv_xac_nhan_huong_dan', $listDirn, $listOrder); ?>
				</th>

                <?php if (isset($this->items[0]->state)) : ?>
                    <th width="5%">
                        <?php echo JHtml::_('grid.sort', 'JPUBLISHED', 'a.state', $listDirn, $listOrder); ?>
                    </th>
                <?php endif; ?>

                <?php if (isset($this->items[0]->ordering)) : ?>
                    <th width="10%">
                        <?php echo JHtml::_('grid.sort', 'JGRID_HEADING_ORDERING', 'a.ordering', $listDirn, $listOrder); ?>
                        <?php if ($canOrder && $saveOrder) : ?>
                            <?php echo JHtml::_('grid.order', $this->items, 'filesave.png', 'danh_sach_do_an.saveorder'); ?>
                        <?php endif; ?>
                    </th>
                <?php endif; ?>

                <?php if (isset($this->items[0]->id)) : ?>
                    <th width="1%" class="nowrap">
                        <?php echo JHtml::_('grid.sort', 'JGRID_HEADING_ID', 'a.id', $listDirn, $listOrder); ?>
                    </th>
                <?php endif; ?>
            </tr>
        </thead>
        <tfoot>
            <?php
            if (isset($this->items[0])) {
                $colspan = count(get_object_vars($this->items[0]));
            } else {
                $colspan = 10;
            }
            ?>
            <tr>
                <td colspan="<?php echo $colspan ?>">
                    <?php echo $this->pagination->getListFooter(); ?>
                </td>
            </tr>
        </tfoot>
        <tbody>
            <?php
            foreach ($this->items as $i => $item) :
                $ordering = ($listOrder == 'a.ordering');
                $canCreate = $user->authorise('core.create', 'com_do_an_tot_nghiep');
                $canEdit = $user->authorise('core.edit', 'com_do_an_tot_nghiep');
                $canCheckin = $user->authorise('core.manage', 'com_do_an_tot_nghiep');
                $canChange = $user->authorise('core.edit.state', 'com_do_an_tot_nghiep');
                ?>
                <tr class="row<?php echo $i % 2; ?>">
                    <td class="center">
                        <?php echo JHtml::_('grid.id', $i, $item->id); ?>
                    </td>
                    
					<td>
					<?php if (isset($item->checked_out) && $item->checked_out) : ?>
						<?php echo JHtml::_('jgrid.checkedout', $i, $item->editor, $item->checked_out_time, 'danh_sach_do_an.', $canCheckin); ?>
					<?php endif; ?>
					<?php if ($canEdit): ?>
						<a href="<?php echo JRoute::_('index.php?option=com_do_an_tot_nghiep&task=do_an.edit&id=' . (int) $item->id); ?>">

							<?php echo $this->escape($item->ma_sv); ?>
						</a>
					<?php else: ?>
						<?php echo $this->escape($item->ma_sv); ?>
					<?php endif; ?>
					</td>

					<td>
						<?php echo $item->ho_ten; ?>
					</td>

					<td>
						<?php echo $item->email; ?>
					</td>

					<td>
						<?php echo $item->dien_thoai; ?>
					</td>

					<td>
						<?php echo $item->lop; ?>
					</td>

					<td>
						<?php echo $item->ma_gv_huong_dan; ?>
					</td>

					<td>
						<?php echo $item->gv_huong_dan; ?>
					</td>

					<td>
						<?php echo $item->gv_xac_nhan_huong_dan; ?>
					</td>

                    <?php if (isset($this->items[0]->state)) { ?>
                        <td class="center">
                            <?php echo JHtml::_('jgrid.published', $item->state, $i, 'danh_sach_do_an.', $canChange, 'cb'); ?>
                        </td>
                    <?php } ?>

                    <?php if (isset($this->items[0]->ordering)) { ?>
                        <td class="order">
                            <?php if ($canChange) : ?>
                                <?php if ($saveOrder) : ?>
                                    <?php if ($listDirn == 'asc') : ?>
                                        <span><?php echo $this->pagination->orderUpIcon($i, true, 'danh_sach_do_an.orderup', 'JLIB_HTML_MOVE_UP', $ordering); ?></span>
                                        <span><?php echo $this->pagination->orderDownIcon($i, $this->pagination->total, true, 'danh_sach_do_an.orderdown', 'JLIB_HTML_MOVE_DOWN', $ordering); ?></span>
                                    <?php elseif ($listDirn == 'desc') : ?>
                                        <span><?php echo $this->pagination->orderUpIcon($i, true, 'danh_sach_do_an.orderdown', 'JLIB_HTML_MOVE_UP', $ordering); ?></span>
                                        <span><?php echo $this->pagination->orderDownIcon($i, $this->pagination->total, true, 'danh_sach_do_an.orderup', 'JLIB_HTML_MOVE_DOWN', $ordering); ?></span>
                                    <?php endif; ?>
                                <?php endif; ?>
                                <?php $disabled = $saveOrder ? '' : 'disabled="disabled"'; ?>
                                <input type="text" name="order[]" size="5" value="<?php echo $item->ordering; ?>" <?php echo $disabled ?> class="text-area-order" />
                            <?php else : ?>
                                <?php echo $item->ordering; ?>
                            <?php endif; ?>
                        </td>
                    <?php } ?>

                    <?php if (isset($this->items[0]->id)) { ?>
                        <td class="center">
                            <?php echo (int) $item->id; ?>
                        </td>
                    <?php } ?>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

    <div>
        <input type="hidden" name="task" value="" />
        <input type="hidden" name="boxchecked" value="0" />
        <input type="hidden" name="filter_order" value="<?php echo $listOrder; ?>" />
        <input type="hidden" name="filter_order_Dir" value="<?php echo $listDirn; ?>" />
        <?php echo JHtml::_('form.token'); ?>
    </div>
</form>