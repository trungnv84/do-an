<?php
/*
# ------------------------------------------------------------------------
# Article Plus plugin for Joomla 1.6.0
# ------------------------------------------------------------------------
# Copyright (C) 2011 Nguyên Văn Trung (Số CMND: 111712060). All Rights Reserved.
# @license - Copyrighted Commercial.
# Author: Nguyễn Văn Trung
# Websites:  http://www.timbds.com
# ------------------------------------------------------------------------
*/

// No direct access.
defined('_JEXEC') or die();

jimport('joomla.plugin.plugin');

class plgContentArticlePlus extends JPlugin
{
	public function __construct(& $subject, $config)
	{
		parent::__construct($subject, $config);
		$this->loadLanguage();
		$this->_pluginLibPath = JPATH_PLUGINS.DS.'content'.DS.'articleplus'.DS;
	}

	public function onContentAfterDisplay($context, &$article, &$params, $page = 0)
	{
		$view = JRequest::getCmd('view');
		switch($view) {
		case 'article':
			//echo '<pre>';print_r($params);echo '</pre>';
			$categories = $this->params->get('categories');
			if(!is_array($categories)) $categories = array($categories);
			if(in_array($article->catid, $categories)) return;
			$latest_article = $this->params->get('ap_latest_article', 6);
			if($latest_article) {
				$model = &JModel::getInstance('Articles', 'ContentModel', array('ignore_request' => true));
				$app = JFactory::getApplication('site');
				$model->setState('list.ordering', 'a.created');
				$model->setState('list.start', 0);
				$model->setState('list.limit', $latest_article);
				$model->setState('list.direction', 'DESC');
				$model->setState('list.filter', '');
				$model->setState('list.links', 0);
				$model->setState('params', $app->getParams());
				$model->setState('filter.published', 1);
				$model->setState('filter.access', true);
				$model->setState('filter.featured', '');
				$model->setState('filter.article_id', $article->id);
				$model->setState('filter.article_id.include', false);
				$model->setState('filter.category_id', $article->catid);
				$model->setState('filter.category_id.include', true);
				$model->setState('filter.author_id', '');
				$model->setState('filter.author_alias', false);
				$model->setState('filter.date_filtering', 'off');
				$model->setState('filter.language', $app->getLanguageFilter());
				$model->setState('filter.subcategories', true);
				$model->setState('filter.max_category_levels', 1);
				$articles = $model->getItems();
				if(count($articles)>0) {
					$template = $app->getTemplate();
					jimport('joomla.filesystem.path');
					$layoutPath = JPath::find(array(JPATH_THEMES.DS.$template.DS.'html'.DS.'com_content'.DS.'article', $this->_pluginLibPath.'assets'.DS.'html'.DS.'com_content'.DS.'article'), "latest_links.php");
					if($layoutPath) {
						$latest_title = $this->params->get('ap_latest_title', false);
						//if(!isset($this->ex_dateformat)) {
							$this->ex_dateformat = $this->params->get('ap_dateformat', '(d/m/Y)');
							$lengoftip = $this->params->get('lengoftip', 300);
						//}
						ob_start();
						include($layoutPath);
						$contents = ob_get_contents();
						ob_end_clean();
					}
				}
			}

			$other_article = $this->params->get('ap_latest_article', 6);
			if($other_article) {
				if($latest_articles) $latest_articles[] = $article->id;
				else $latest_articles = $article->id;
				if(!$model) {
					$model = &JModel::getInstance('Articles', 'ContentModel', array('ignore_request' => true));
					$app = JFactory::getApplication('site');
					$model->setState('list.ordering', 'a.created');
					$model->setState('list.start', 0);
					$model->setState('list.direction', 'DESC');
					$model->setState('list.filter', '');
					$model->setState('list.links', 0);
					$model->setState('params', $app->getParams());
					$model->setState('filter.published', 1);
					$model->setState('filter.access', true);
					$model->setState('filter.featured', '');
					$model->setState('filter.article_id.include', false);
					$model->setState('filter.category_id', $article->catid);
					$model->setState('filter.category_id.include', true);
					$model->setState('filter.author_id', '');
					$model->setState('filter.author_alias', false);
					$model->setState('filter.language', $app->getLanguageFilter());
					$model->setState('filter.subcategories', true);
					$model->setState('filter.max_category_levels', 1);
				}
				$model->setState('list.limit', $other_article);
				$model->setState('filter.article_id', $latest_articles);
				$model->setState('filter.date_filtering', 'range');
				$model->setState('filter.date_field', 'a.created');
				$model->setState('filter.start_date_range');
				$model->setState('filter.end_date_range', $article->created);
				$articles = $model->getItems();
				if(count($articles)>0) {
					$template = $app->getTemplate();
					jimport('joomla.filesystem.path');
					$layoutPath = JPath::find(array(JPATH_THEMES.DS.$template.DS.'html'.DS.'com_content'.DS.'article', $this->_pluginLibPath.'assets'.DS.'html'.DS.'com_content'.DS.'article'), "other_links.php");
					if($layoutPath) {
						$other_title = $this->params->get('ap_other_title', false);
						if(!isset($this->ex_dateformat)) {
							$this->ex_dateformat = $this->params->get('ap_dateformat', '(d/m/Y)');
							$lengoftip = $this->params->get('lengoftip', 300);
						}
						ob_start();
						include($layoutPath);
						$contents .= ob_get_contents();
						ob_end_clean();
					}
				}
			}
			return $contents;
			break;
		}
	}

	function makeTitle($html, $length=300, $type = null, $width=100, $height = 0, $quality = 80)
	{
		if($width) {
			if(preg_match('#<img[^>]+src=("|\').+("|\')[^>]*\/?>#i', $html, $matches)) {
				if(preg_match('#src=("|\')[^("|\')]+("|\')#i', $matches[0], $matches)) {
					$img = substr($matches[0], 5, -1);
					$thumb = self::getThumbnail($img, $width, $height, $quality, null, 'fill');
					if($thumb)
						$title = '<div class="tip-img"><img src="' . $thumb . '" /></div>';
					else
						$title = '<div class="tip-img"><img src="' . $img . '" /></div>';
				}
			}
		}
		$text = mb_convert_encoding($html, 'HTML-ENTITIES', 'UTF-8');
		$text = preg_replace(array('/<[^>]*>/', '/\s{2,}/'), ' ', $text);
		$text = mb_convert_encoding($text, 'UTF-8', 'HTML-ENTITIES');
		if(mb_strlen($text, 'UTF-8')<=$length || $length==0)
			$title .= $text;
		else {
			if($type == 'sentence') {
				$texts = preg_split('/([\.\?\!]+\s*)+/', $text);
				foreach($texts as $text) {
					if($text) {
						$title .= $text . '. ';
						$leng = mb_strlen($title, 'UTF-8');
						if($leng>$length) break;
					}
				}
			} else {
				//$texts = preg_split('/\s+/', $text);
				$texts = explode(' ', $text);
				foreach($texts as $text) {
					if($text) {
						$title .= $text . ' ';
						$leng = mb_strlen($title, 'UTF-8');
						if($leng>$length) break;
					}
				}
				if(!in_array(substr($title, -2, 1), array('.', '?', '!')))
					$title .= '...';
			}
		}
		return $title;
	}

	function getThumbnail($path, $width, $height = 0, $quality = 80, $folder = null, $type = null, $align = null)
	{
		if(strpos($path, 'http://')!==false) {
			$thumb = preg_replace(array('/http:\/\/w*/', '/[\W]+/', '/-?png$/i', '/-?bmp$/i', '/-?jpg$/i', '/-?jpeg$/i', '/-?gif$/i'), array('', '-', '.png', '.jpg', '.jpg', '.jpg', '.gif'), $path);
			$thumb = ($folder?$folder:'images/thumbnails/').$thumb;
			$remoteFile = true;
		} else {
			if(strpos($path, '/')===false)
				$thumb = ($folder?$folder:'images/thumbnails/').$path;
			else $thumb = $path;
			$remoteFile = false;
		}
		jimport('joomla.filesystem.file');
		$ext = strtolower(JFile::getExt($thumb));
		if($ext=='bmp') $ext = 'jpg';
		$thumb = JFile::stripExt($thumb) . '-' . $width . '-' . $height . '-' . $quality;
		if($type) $thumb .= '-' . $type;
		if($align) $thumb .= '-' . $align;
		$thumb .= '.' . $ext;
		if(!JFile::exists($thumb)) {
			if($remoteFile) {
				if(!self::remoteFileExists($path)) return false;
			} else {
				if(strpos($path, '/')===false)
					$path = 'images/'.$path;
				if(!JFile::exists($path)) return false;
			}
			if(!self::createThumbnail($path, $thumb, $width, $height, $quality, $type, $align))
				return false;
		}
		return $thumb;
	}

	function createThumbnail($path, $thumb = null, $width, $height = 0, $quality = 80, $type = null, $align = null)
	{
		jimport('joomla.filesystem.file');
		if(strpos($path, '/')===false)
			$path = 'images/'.$path;
		if(!$thumb) {
			if(strpos($path, 'http://')!==false) {
				$thumb = preg_replace(array('/http:\/\/w*/', '/[\W]+/', '/-?png$/i', '/-?bmp$/i', '/-?jpg$/i', '/-?jpeg$/i', '/-?gif$/i'), array('', '-', '.png', '.jpg', '.jpg', '.jpg', '.gif'), $path);
				$thumb = 'images/thumbnails/'.$thumb;
			} else {
				$thumb = $path;
			}
			$ext = strtolower(JFile::getExt($thumb));
			if($ext=='bmp') $ext = 'jpg';
			$thumb = JFile::stripExt($thumb) . '-' . $width . '-' . $height . '-' . $quality;
			if($type) $thumb .= '-' . $type;
			if($align) $thumb .= '-' . $align;
			$thumb .= '.' . $ext;
		} elseif(strpos($thumb, '/')===false) {
			$thumb = 'images/thumbnails/'.$thumb;
		}
		if(!$dst = &self::imageResize($path, $width, $height, $type, $align)) return false;
		if (!file_exists(dirname($thumb))) {
			jimport('joomla.filesystem.folder');
			JFolder::create(dirname($thumb));
		}
		if(!$ext) $ext = strtolower(JFile::getExt($thumb));
		switch($ext) {
		case 'gif':
			if(imagegif($dst, $thumb)) return $thumb;
			else return false;
			break;
		case 'png':
			if (version_compare( phpversion(), '5.1.2') < 0){
				if(imagepng($dst, $thumb)) return $thumb;
				else return false;
			} else {
				if(imagepng($dst, $thumb, 10-max(intval($quality/10),1))) return $thumb;
				else return false;
			}
			break;
		case 'jpg':
		case 'jpeg':
			if(imagejpeg($dst, $thumb, $quality)) return $thumb;
			else return false;
			break;
		default:
			return false;
		}
	}

	function &imageResize(&$path, $width, $height = 0, $type = null, $align = null)
	{
		if(!$width && !$height) return false;
		list($w, $h) = getimagesize($path);
		$dst_x = 0; $dst_y = 0; $src_x = 0; $src_y = 0; 
		if($width > 0 && $height > 0) {
			if(($w == $width && $h == $height)||($w <= $width && $h <= $height && !in_array($type, array('fill', 'stretch', 'stretch-cut')))) return false;
			switch($type) {
			case 'cut':
			case 'cut-fill':
				if($w/$h > $width/$height) {
					if($h > $height) {
						$deviation = $w - ($h*$width/$height);
						$w = (int)($w - $deviation);
					} else {
						$deviation = $w - $width;
						$w = $width;
						if($h < $height)
							if($type=='cut') $height = $h;
							else $nh = $h;
					}
					switch($align) {
					case 'tl':
					case 'topleft':
					case 'top-left':
						break;
					case 'r':
					case 'right':
						$src_x = (int)$deviation;
					case 'l':
					case 'left':
						if($nh) $dst_y = (int)(($height - $nh)/2);
						break;
					default:
						if($nh) $dst_y = (int)(($height - $nh)/2);
					case 't':
					case 'top':
						$src_x = (int)($deviation/2);
						break;
					case 'b':
					case 'bottom':
						$src_x = (int)($deviation/2);
					case 'bl':
					case 'bottomleft':
					case 'bottom-left':
						if($nh) $dst_y = $height - $nh;
						break;
					case 'br':
					case 'bottomright':
					case 'bottom-right':
						if($nh) $dst_y = $height - $nh;
					case 'tr':
					case 'topright':
					case 'top-right':
						$src_x = (int)$deviation;
					}
				} elseif($w/$h < $width/$height) {
					if($w > $width) {
						$deviation = $h - ($w*$height/$width);
						$h = (int)($h - $deviation);
					} else {
						$deviation = $h - $height;
						$h = $height;
						if($w < $width) $nw = $w;
							if($type=='cut') $width = $w;
							else $nw = $w;
					}
					switch($align) {
					case 'tl':
					case 'topleft':
					case 'top-left':
						break;
					case 'r':
					case 'right':
						if($nw) $dst_x = $width - $nw;
					case 'l':
					case 'left':
						$src_y = (int)($deviation/2);
						break;
					default:
						$src_y = (int)($deviation/2);
					case 't':
					case 'top':
						if($nw) $dst_x = (int)(($width - $nw)/2);
						break;
					case 'b':
					case 'bottom':
						if($nw) $dst_x = (int)(($width - $nw)/2);
					case 'bl':
					case 'bottomleft':
					case 'bottom-left':
						$src_y = (int)$deviation;
						break;
					case 'br':
					case 'bottomright':
					case 'bottom-right':
						$src_y = (int)$deviation;
					case 'tr':
					case 'topright':
					case 'top-right':
						if($nw) $dst_x = $width - $nw;
					}
				}
				break;
			case 'cut-stretch':
				if($w/$h > $width/$height) {
					if($h > $height) {
						$deviation = $w - ($h*$width/$height);
						$w -= (int)$deviation;
					} else {
						$deviation = $w - $width;
						$w = $width;
					}
					switch($align) {
					case 'tl':
					case 'topleft':
					case 'top-left':
					case 'l':
					case 'left':
					case 'bl':
					case 'bottomleft':
					case 'bottom-left':
						break;
					default:
					case 't':
					case 'top':
					case 'b':
					case 'bottom':
						$src_x = (int)($deviation/2);
						break;
					case 'r':
					case 'right':
					case 'br':
					case 'bottomright':
					case 'bottom-right':
					case 'tr':
					case 'topright':
					case 'top-right':
						$src_x = (int)$deviation;
					}
				} elseif($w/$h < $width/$height) {
					if($w > $width) {
						$deviation = $h - ($w*$height/$width);
						$h = (int)($h - $deviation);
					} else {
						$deviation = $h - $height;
						$h = $height;
					}
					switch($align) {
					case 't':
					case 'top':
					case 'tl':
					case 'topleft':
					case 'top-left':
					case 'tr':
					case 'topright':
					case 'top-right':
						break;
					case 'r':
					case 'right':
					case 'l':
					case 'left':
					default:
						$src_y = (int)($deviation/2);
						break;
					case 'b':
					case 'bottom':
					case 'bl':
					case 'bottomleft':
					case 'bottom-left':
					case 'br':
					case 'bottomright':
					case 'bottom-right':
						$src_y = (int)$deviation;
					}
				}
				break;
			case 'fill':
				if($w/$h > $width/$height) {
					$nh = $width * $h/$w;
					$deviation = $height - $nh;
					$nh = (int)$nh;
					switch($align) {
					case 'tl':
					case 'topleft':
					case 'top-left':
					case 't':
					case 'top':
					case 'tr':
					case 'topright':
					case 'top-right':
						break;
					case 'r':
					case 'right':
					case 'l':
					case 'left':
					default:
						$dst_y = (int)($deviation/2);
						break;
					case 'b':
					case 'bottom':
					case 'bl':
					case 'bottomleft':
					case 'bottom-left':
					case 'br':
					case 'bottomright':
					case 'bottom-right':
						$dst_y = (int)$deviation;
					}
				} elseif($w/$h < $width/$height) {
					$nw = $height * $w/$h;
					$deviation = $width - $nw;
					$nw = (int)$nw;
					switch($align) {
					case 'tl':
					case 'topleft':
					case 'top-left':
					case 'l':
					case 'left':
					case 'bl':
					case 'bottomleft':
					case 'bottom-left':
						break;
					case 't':
					case 'top':
					case 'b':
					case 'bottom':
					default:
						$dst_x = (int)($deviation/2);
						break;
					case 'r':
					case 'right':
					case 'tr':
					case 'topright':
					case 'top-right':
					case 'br':
					case 'bottomright':
					case 'bottom-right':
						$dst_x = (int)$deviation;
					}
				} elseif($w <= $width && $h <= $height) {
					$nh = $h;
					$nw = $w;
					if(in_array($align, array('t', 'top', null, '', 'b', 'bottom')))
						$dst_x = (int)(($width - $w)/2);
					if(in_array($align, array('l', 'left', null, '', 'r', 'right')))
						$dst_y = (int)(($height - $h)/2);
					if(in_array($align, array('tr', 'topright', 'top-right', 'r', 'right', 'br', 'bottomright', 'bottom-right')))
						$dst_x = $width - $w;
					if(in_array($align, array('bl', 'bottomleft', 'bottom-left', 'b', 'bottom', 'br', 'bottomright', 'bottom-right')))
						$dst_y = $height - $h;
				}
				break;
			case 'stretch':
				break;
			case 'stretch-cut':
				if($w/$h > $width/$height) {
					$deviation = $w - ($height * $w/$h);
					if($deviation>0) {
						$w = (int)($w - $deviation);
						switch($align) {
						case 'tl':
						case 'topleft':
						case 'top-left':
						case 'l':
						case 'left':
						case 'bl':
						case 'bottomleft':
						case 'bottom-left':
							break;
						case 't':
						case 'top':
						default:
						case 'b':
						case 'bottom':
							$src_x = (int)($deviation/2);
							break;
						case 'r':
						case 'right':
						case 'tr':
						case 'topright':
						case 'top-right':
						case 'br':
						case 'bottomright':
						case 'bottom-right':
							$src_x = (int)$deviation;
						}
					}
				} elseif($w/$h < $width/$height) {
					$deviation = $h - ($width * $h/$w);
					if($deviation>0) {
						$h = (int)($h - $deviation);
						switch($align) {
						case 't':
						case 'top':
						case 'tl':
						case 'topleft':
						case 'top-left':
						case 'tr':
						case 'topright':
						case 'top-right':
							break;
						case 'l':
						case 'left':
						case 'r':
						case 'right':
						default:
							$src_y = (int)($deviation/2);
							break;
						case 'b':
						case 'bottom':
						case 'bl':
						case 'bottomleft':
						case 'bottom-left':
						case 'br':
						case 'bottomright':
						case 'bottom-right':
							$src_y = (int)$deviation;
						}
					}
				}
				break;
			default:
				if($w/$h > $width/$height) {
					$height = (int)($width * $h/$w); //round
				} elseif($w/$h < $width/$height) {
					$width = (int)($height * $w/$h);
				}
			}
		} elseif($width>0) {
			if($w<=$width) return false;
			$height = (int)($width * $h/$w);
		} else {
			if($h<=$height) return false;
			$width = (int)($height * $w/$h);
		}
		jimport('joomla.filesystem.file');
		$ext = strtolower(JFile::getExt($path));
		switch($ext) {
		case 'gif':
			$src = imagecreatefromgif($path);
			break;
		case 'jpg':
		case 'jpeg':
			$src = imagecreatefromjpeg($path);
			break;
		case 'png':
			$src = imagecreatefrompng($path);
			break;
		case 'bmp':
			$src = self::imagecreatefrombmp($path);
		}
//		$dst = imagecreatetruecolor($width, $height);
//		if(in_array($ext, array('gif','png'))) {
//			$transparent = imagecolorallocatealpha($dst, 0, 0, 0, 127);
//			imagefill($dst, 0, 0, $transparent);
//			imagecolortransparent($dst, $transparent); 
//		}
		$dst = imagecreatetruecolor($width, $height);
        if ($ext=="png"){
            imagealphablending($dst, false);
            imagesavealpha($dst, true);
			$trnprt_color = imagecolorallocatealpha($dst, 255, 255, 255, 127);
			imagefill($dst, 0, 0, $trnprt_color);
        } elseif ($ext=="gif"){
            $trnprt_color = imagecolorallocatealpha($dst, 255, 255, 255, 127);
            imagefill($dst, 0, 0, $trnprt_color);
            imagecolortransparent($dst, $trnprt_color);
            imagetruecolortopalette($dst, true, 256);
        }
		imagecopyresampled($dst, $src, $dst_x, $dst_y, $src_x, $src_y, $nw?$nw:$width, $nh?$nh:$height, $w, $h);
		imagedestroy($src);
		return $dst;
	}

	//---------------Thu vien ngoai---------------//
	function remoteFileExists($url)
	{
		if(function_exists('curl_init')) {
			$curl = curl_init($url);
			//don't fetch the actual page, you only want to check the connection is ok
			curl_setopt($curl, CURLOPT_NOBODY, true);
			//do request
			$result = curl_exec($curl);
			$ret = false;
			//if request did not fail
			if ($result !== false) {
				//if request was ok, check response code
				$statusCode = curl_getinfo($curl, CURLINFO_HTTP_CODE);  
				if ($statusCode == 200) {
					$ret = true;
				}
			}
			curl_close($curl);
		} elseif(@fclose(@fopen($url, "r"))) $ret = true; else $ret = false;
		return $ret;
	}
	
	//---------------Thu vien ngoai---------------//
	// Read & Save 24bit BMP files
	// Author: de77
	// Licence: MIT
	// Webpage: de77.com
	// Version: 07.02.2010
	function imagebmp(&$img, $filename = false)
	{
		$wid = imagesx($img);
		$hei = imagesy($img);
		$wid_pad = str_pad('', $wid % 4, "\0");
		
		$size = 54 + ($wid + $wid_pad) * $hei;
		
		//prepare & save header
		$header['identifier']		= 'BM';
		$header['file_size']		= self::dword($size);
		$header['reserved']			= self::dword(0);
		$header['bitmap_data']		= self::dword(54);
		$header['header_size']		= self::dword(40);
		$header['width']			= self::dword($wid);
		$header['height']			= self::dword($hei);
		$header['planes']			= self::word(1);
		$header['bits_per_pixel']	= self::word(24);
		$header['compression']		= self::dword(0);
		$header['data_size']		= self::dword(0);
		$header['h_resolution']		= self::dword(0);
		$header['v_resolution']		= self::dword(0);
		$header['colors']			= self::dword(0);
		$header['important_colors']	= self::dword(0);
	
		if ($filename)
		{
			$f = fopen($filename, "wb");
			foreach ($header AS $h)
			{
				fwrite($f, $h);
			}
			
			//save pixels
			for ($y=$hei-1; $y>=0; $y--)
			{
				for ($x=0; $x< $wid; $x++)
				{
					$rgb = imagecolorat($img, $x, $y);
					fwrite($f, self::byte3($rgb));
				}
				fwrite($f, $wid_pad);
			}
			fclose($f);
		}
		else
		{
			foreach ($header AS $h)
			{
				echo $h;
			}
			
			//save pixels
			for ($y=$hei-1; $y>=0; $y--)
			{
				for ($x=0; $x< $wid; $x++)
				{
					$rgb = imagecolorat($img, $x, $y);
					echo self::byte3($rgb);
				}
				echo $wid_pad;
			}
		}
	}
	
	function imagecreatefrombmp($filename)
	{
		$f = fopen($filename, "rb");
	
		//read header    
		$header = fread($f, 54);
		$header = unpack(	'c2identifier/Vfile_size/Vreserved/Vbitmap_data/Vheader_size/' .
							'Vwidth/Vheight/vplanes/vbits_per_pixel/Vcompression/Vdata_size/'.
							'Vh_resolution/Vv_resolution/Vcolors/Vimportant_colors', $header);
	
		if ($header['identifier1'] != 66 or $header['identifier2'] != 77)
		{
			die('Not a valid bmp file');
		}
		
		if ($header['bits_per_pixel'] != 24)
		{
			die('Only 24bit BMP images are supported');
		}
		
		$wid2 = ceil((3*$header['width']) / 4) * 4;
		
		$wid = $header['width'];
		$hei = $header['height'];
	
		$img = imagecreatetruecolor($header['width'], $header['height']);
	
		//read pixels    
		for ($y=$hei-1; $y>=0; $y--)
		{
			$row = fread($f, $wid2);
			$pixels = str_split($row, 3);
			for ($x=0; $x< $wid; $x++)
			{
				imagesetpixel($img, $x, $y, self::dwordize($pixels[$x]));
			}
		}
		fclose($f);    	    
		
		return $img;
	}	
	
	function dwordize($str)
	{
		$a = ord($str[0]);
		$b = ord($str[1]);
		$c = ord($str[2]);
		return $c*256*256 + $b*256 + $a;
	}
	
	function byte3($n)
	{
		return chr($n & 255) . chr(($n >> 8) & 255) . chr(($n >> 16) & 255);	
	}
	function dword($n)
	{
		return pack("V", $n);
	}
	function word($n)
	{
		return pack("v", $n);
	}
}
