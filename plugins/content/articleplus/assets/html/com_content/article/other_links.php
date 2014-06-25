<?php defined('_JEXEC') or die('Restricted access');
JHtml::_('behavior.tooltip');?>
<div class="blog_more blog_other">
<?php if($other_title):?>
<div class="other_article">
	<strong><?php echo JText::_($other_title);?></strong>
</div>
<?php endif;?>
<ul class="other_article">
<?php foreach ($articles as $other_article) {
	$title = plgContentArticlePlus::makeTitle($other_article->introtext . $other_article->fulltext, $lengoftip, null, 100, 100, 75);
	$title = htmlentities($title, ENT_COMPAT, 'UTF-8');
	$other_article->slug = $other_article->alias ? ($other_article->id . ':' . $other_article->alias) : $other_article->id;
?>
	<li>
		<a class="blogsection hasTip" href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($other_article->slug, $other_article->catid)); ?>" title="<?php echo $other_article->title;?>::<?php echo $title;?>"><?php echo $other_article->title; ?></a>
		<span class="createdate"><?php echo JHTML::_('date', $other_article->created, $this->ex_dateformat);?></span>
	</li>
<?php }?>
</ul>
</div>