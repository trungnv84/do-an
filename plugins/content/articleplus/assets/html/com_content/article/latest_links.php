<?php defined('_JEXEC') or die('Restricted access');
JHtml::_('behavior.tooltip');?>
<div class="blog_more blog_latest">
<?php if($latest_title):?>
<div class="latest_article">
	<strong><?php echo JText::_($latest_title);?></strong>
</div>
<?php endif;?>
<ul class="latest_article">
<?php foreach ($articles as $latest_article) {
	$latest_articles[] = $latest_article->id;
	$title = plgContentArticlePlus::makeTitle($latest_article->introtext . $latest_article->fulltext, $lengoftip, null, 100, 100, 75);
	$title = htmlentities($title, ENT_COMPAT, 'UTF-8');
	$latest_article->slug = $latest_article->alias ? ($latest_article->id . ':' . $latest_article->alias) : $latest_article->id;
?>
	<li>
		<a class="blogsection hasTip" href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($latest_article->slug, $latest_article->catid)); ?>" title="<?php echo $latest_article->title;?>::<?php echo $title;?>"><?php echo $latest_article->title; ?></a>
		<span class="createdate"><?php echo JHTML::_('date', $latest_article->created, $this->ex_dateformat);?></span>
	</li>
<?php }?>
</ul>
</div>