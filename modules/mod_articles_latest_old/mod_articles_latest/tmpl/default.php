<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_articles_latest
 * @copyright	Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;
?>
<style>
#Mod99 .img_news{
	display: none;
}
#Mod94 .read_more{
	display: none;
}
</style>
<ul class="latestnews<?php echo $moduleclass_sfx; ?>">
<?php 
$i = 0;
$left= 0;

foreach ($list as $item) :  
if ($item->parent_id==18){$left_t_f = 1;}else{$left_t_f = 2;}
?>
	<li>
		<a href="<?php echo $item->link; ?>">
			<?php echo $item->title; ?>
			<span class="createdate">(<?php echo date('d-m-Y',strtotime($item->created))?>)</span>
			<?php if ($i==0){?>
			<img src="images/new.gif" class="img_news"/>
			<?php }?>
		</a>
	</li>
<?php $i++; endforeach; ?>
</ul>
<?php $url = JURI::root();?>
<p class="read_more" style="text-align: right; padding-right: 30px;"><a href="<?php echo $url?>index.php/category">Xem thêm</a></p>