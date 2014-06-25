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
<ul class="latestnews<?php echo $moduleclass_sfx; ?>">
<?php 
$i = 0;
foreach ($list as $item) :  ?>
	<li>
		<a href="<?php echo $item->link; ?>">
			<?php echo $item->title; ?>
			<span class="createdate">(<?php echo date('d-m-Y',strtotime($item->created))?>)</span>
			<?php if ($i==0 && $item->catid==27){?>
			<img src="images/new.gif"/>
			<?php }?>
		</a>
	</li>
<?php $i++; endforeach; ?>
</ul>
