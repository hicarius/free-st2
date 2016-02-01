<?php
/*------------------------------------------------------------------------
# @author - Alonzo Weatherby
# copyright Copyright (C) 2013 highschooldiploma.us. All Rights Reserved.
# @license - http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
# Websites: http://highschooldiploma.us/
# Technical Support: http://highschooldiploma.us/extensions/index.php/contact-us
-------------------------------------------------------------------------*/
// no direct access
defined( '_JEXEC' ) or die;
$document = JFactory::getDocument();
$document->addStyleSheet('modules/mod_youtubeslider/assets/style.css');


$margintop = $params->get('margintop');
$ywidth = $params->get('ywidth');
$ybox1_width = trim($params->get( 'ywidth' )+10);

$yheight = $params->get('yheight');

?>
<div id="youtube_slider">
    <div id="ybox1" style="margin-top: 10px;">
	    <div id="yobx2" style="text-align: left;width:<?php echo $ywidth; ?>px;height:<?php echo $yheight; ?>px;">
			<object width="<?php echo $params->get( 'ywidth' )-2; ?>" height="<?php echo $params->get( 'yheight' ); ?>"
					data="http://www.youtube.com/embed/<?php echo $params->get( 'video_url' ); ?>">
			</object>
		</div>
	</div>
</div>
<?php
	if (trim( $params->get( 'loadjquery' ) ) == 1){
	$document->addScript("http://code.jquery.com/jquery-latest.min.js");}
?>
