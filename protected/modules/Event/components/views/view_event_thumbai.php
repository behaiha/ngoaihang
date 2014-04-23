<?php 
	$srcImg = "./images/event/image.jpg";
	$styleImg = '';$style = '';
	if ($model->coveImage != null) {
		$srcImg = Yii::app()->baseUrl.$model->coveImage->path.$model->coveImage->image;
		$styleImg = "style='".$model->coveImage->style."'";
		$style = $model->coveImage->style;
	}
?>

<div id="slider">
	<div id="homeslider" class="fullwidth flexslider">
		<article>
			<div class="image-logo">
				<a href="#">
					<img class="drag" src="<?php echo $srcImg; ?>" <?php echo $styleImg; ?> >
				</a>
				<button class="delete-image chang-image prl-button prl-button-newsletter" >Hủy bỏ</button>
				<button class="save-image chang-image prl-button prl-button-primary">Thay đổi ảnh bìa </button>
			</div>
			<div class="event-title slider-title">
				<h2>
					<a ><?php echo $model->title; ?></a> <span class="prl-badge prl-badge-success">Dicussion</span>
				</h2>
			</div>
			<div class="event-about slider-meta">
				<span>Nov 23th, 2013</span> 
				<i class="fa fa-comment-o"></i> 
				<span class="cm">04</span>
			</div>				
		</article>
	</div><!-- #slider -->	
</div>
<input type="file" name="filesToUpload[]" id="filesToUpload" />
<style type="text/css">
#filesToUpload{
	display: none;
}
</style>
<script src="<?php echo Yii::app()->theme->baseUrl; ?>/assets/js/coverImage.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function(e) {
		var dataEvent = {
			fileUpload:'filesToUpload',
			buttonUpload:'.save-image',
			nameImg:'.drag',
			nameDiv:'.image-logo',
			btnDelete:'.delete-image',
			title:'.event-title',
			urlSaveImg : '<?php echo Yii::app()->createUrl("/Image/coverImage/saveimage") ?>',
			urlUpImg : '<?php echo Yii::app()->createUrl("/Image/coverImage/image") ?>',
			urlDeImge:  '<?php echo Yii::app()->createUrl("/Image/coverImage/deleteimage") ?>',
			nameTable:'E',
			idEvent: <?php echo $model->id; ?>,
			styleOld : '<?php echo $style; ?>',
			imgEvent : '<?php echo $srcImg; ?>',
			sizeMax:10000000,
			widthMin : 400,
			heightMin:100,
		};
		var imgView = new CoverImage(dataEvent);
	});
</script> 