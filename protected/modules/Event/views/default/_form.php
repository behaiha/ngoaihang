<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
<link rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl ?>/lib/datetimepicker/jquery.datetimepicker.css">
  <script src="<?php echo Yii::app()->theme->baseUrl ?>/lib/datetimepicker/jquery.datetimepicker.js"></script>
<style type="text/css">
#map-canvas{
	width: 640px;
	height: 320px;
}
</style>
<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'event-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'title'); ?>
		<?php echo $form->textField($model,'title',array('size'=>60,'maxlength'=>70)); ?>
		<?php echo $form->error($model,'title'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'content'); ?>
		<?php echo $form->textArea($model,'content',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'content'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'nameLocation'); ?>
		<?php echo $form->textField($model,'nameLocation',array('size'=>60,'maxlength'=>70)); ?>
		<?php echo $form->error($model,'nameLocation'); ?>
	</div>
	<div class="row">
		<?php echo $form->labelEx($model,'addressLocation'); ?>
		<?php echo $form->textField($model,'addressLocation',array('size'=>60,'maxlength'=>140,'id'=>'pac-input')); ?>
		<?php echo $form->error($model,'addressLocation'); ?>
	</div>
	<div id="map-canvas"></div>
	<div class="row">
		<?php echo $form->labelEx($model,'end_date'); ?>
		<?php echo $form->textField($model,'end_date'); ?>
		<?php echo $form->error($model,'end_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'begin_date'); ?>
		<?php echo $form->textField($model,'begin_date'); ?>
		<?php echo $form->error($model,'begin_date'); ?>
	</div>
	
	<script>$( "#Event_begin_date" ).datetimepicker();</script>
	<script>$( "#Event_end_date" ).datetimepicker();</script>
	<div id="place_address"></div>
	<div class="row buttons">
		<?php echo CHtml::submitButton('Tạo sự kiện',array('id'=>'create_event')); ?>
	</div>
<?php $this->endWidget(); ?>

</div><!-- form -->
<script src="<?php echo Yii::app()->theme->baseUrl; ?>/lib/place/place.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script type="text/javascript">
	$('#pac-input').keydown(function(e) {
		if (e.keyCode == 13) return false;
	});
	var u;
	$(function() {
		$("#Event_nameLocation").autocomplete({
		    minLength: 0,
		    source: function(request, response) {
		    	$.ajax({
		    		url: '<?php echo Yii::app()->createUrl("/Event/location/load"); ?>',
		    		type: 'POST',
		    		dataType: 'json',
		    		data: {p:$("#Event_nameLocation").val() },
		    		success: function(data) {
		              	response($.map(data,function (items) {
		              		return{
		              			value: items.name,
		              			latitude:items.latitude,
		              			longitude:items.longitude,
		              			image:<?php echo '"'.Yii::app()->theme->baseUrl.'/lib/images/location.png"'; ?>,
		              		}
		              	}));
		    		}
		    	});
		    	
		    	},
		select: function( event, ui ) {
			console.log(ui.item);
			$('#pac-input').val(ui.item.value);
			codeLatLng(ui.item.latitude,ui.item.longitude);
			return false;
		}
		}).data( "ui-autocomplete" )._renderItem = function( ul, item ) {
		    return $( '<li></li>' )
		        .data( "item.autocomplete", item )
		        .append('<a><div class="auto_complete"><img src="'+item.image+'"><p>'+item.value+'</p></div></a>').appendTo(ul);
		    };
	});
</script>
<style type="text/css">
.ui-menu .ui-menu-item:hover a{
	background: red;
}
.ui-menu .ui-menu-item{
	background: #f19d94;
	margin-bottom: 6px;
	height: 37px;
}
.auto_complete {
	display: block;
	width: 100%;
	height: 30px;

}
.auto_complete img{
	width: 40px;
	display:inline;
}
::selection{
	background: none;
}
.auto_complete p {
	display: inline-block;
	color: rgb(30, 27, 27);
	margin: 5px;
}
</style>