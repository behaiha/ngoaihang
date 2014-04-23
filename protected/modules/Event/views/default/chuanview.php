<?php 
	$srcImg = "./images/event/image.jpg";
	$styleImg = '';
	if ($model->image != null) {
		$srcImg = Yii::app()->baseUrl.$model->image->path.$model->image->image;
		$styleImg = "style='".$model->image->style."'";
	}
?>
<section id="main" class="prl-span-9">
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
</section>
<input type="file" name="filesToUpload[]" id="filesToUpload" />
<style type="text/css">
#filesToUpload{
	display: none;
}
</style>
<script type="text/javascript">
var statusUpimage = 0,dataImage = null,moveIng = 0;
var maxHeight = 385,minHeight = 0;
function getMinHeight () {
	if (jQuery('.drag').height() <= maxHeight) {
		minHeight = jQuery('.drag').height();
	}else{
		minHeight = maxHeight;
	}
	return minHeight;
}
jQuery(document).ready(function() {
	
	console.log($('.drag').height());
	jQuery('.image-logo').css('height',getMinHeight());
})
jQuery('.save-image').click(function(e) {
	if (statusUpimage == 0) {
		document.getElementById('filesToUpload').click();
	}else{
		if (dataImage != null) {
			topImage = jQuery('.drag').position().top;
			style = 'top:'+topImage +'px;position: relative;';
			jQuery.ajax({
			  url: '<?php echo Yii::app()->createUrl("/Event/default/saveimage") ?>',
			  type: 'POST',
			  data: {name:dataImage.name,style:style,id:<?php echo $model->id; ?>},
			  success: function(data) {
			  	console.log(data);
			    jQuery('.image-logo a img').attr('src',data.linkI);
			    jQuery('.save-image').html('Thay đổi ảnh bìa');
			    jQuery('.delete-image').hide();
			    jQuery('.event-title').show();
			    statusUpimage = 0;
				destroyDrag();	    
				jQuery('.save-image').css('display','');
			  },
			});
		};
	};
});
function TypeFile()
{
    var fup = document.getElementById('filesToUpload');
    var fileName = fup.value;
    var ext = fileName.substring(fileName.lastIndexOf('.') + 1);
    if(ext == "gif" || ext == "GIF" || ext == "JPEG" || ext == "jpeg" || ext == "jpg" || ext == "JPG" || ext == "PNG" || ext == "png" )
    {
        return ext;
    }
}

function fileSelect(evt) {
    if (window.File && window.FileReader && window.FileList && window.Blob) {

        var files = evt.target.files;
        var result = '';
        var file;
        console.log(files,'askj');
        alert('1c1');
        for (var i = 0; file = files[i]; i++) {
            // if the file is not an image, continue
            if (!file.type.match('image.*')) {
                continue;
            }
            if (file.size > 1000) {
            	// alert('Ảnh quá lớn');
            	// return false;
            };
            alert('1c');
            reader = new FileReader();
            status = 0;
            var imageU  = new Image();
            reader.onload = (function (tFile) {
                return function (evt) {
                	// imageU.src = evt.target.result;
                	alert('c');
                	imageU.onload = function() {
		            var w = this.width;
		                alert('a');
        			};
			        imageU.onerror= function() {
			            alert('Invalid file type: '+ file.type);
			        }; 
                	// alert(imageU.width); 
                	if (imageU.width >= 0) {
                		var div = document.createElement('div');
	                    var type_image = TypeFile();
	                    var dataU = [];
	                    dataU.push({
			                image : evt.target.result,
			                type : type_image,
			            });
			            sendImages(dataU);
                	}else{
                		status = 1;
                	}
                };
            }(file));
            if (status == 1) {
            	alert('aaa');
            }else{
            	reader.readAsDataURL(file);
            }
        }
    } else {
        alert('The File APIs are not fully supported in this browser.');
    }
}
function sendImages (ima) {
	jQuery.ajax({
	  url: '<?php echo Yii::app()->createUrl("/Event/default/image") ?>',
	  type: 'POST',
	  data: {data: JSON.stringify(ima)},
	  success: function(data) {
	  	dataImage = data;
	    jQuery('.image-logo a img').attr('src',data.linkI);
	    jQuery('.save-image').html('Lưu hình ảnh');
	    jQuery('.save-image').css('display','block');
	    jQuery('.delete-image').show();
	    jQuery('.event-title').hide();
	    statusUpimage = 1;
	    moveIng = 1;
	    height = jQuery('.drag').width() * data.height / data.width;
	    console.log(height);
	    if (height >= maxHeight) {
	    	height = maxHeight;
	    };
	    jQuery('.image-logo').css('height',height);
	    InitDragDrop();
	  },
	});
	
}
document.getElementById('filesToUpload').addEventListener('change', fileSelect, false);

var _startX = 0;			// mouse starting positions
var _startY = 0;
var _offsetX = 0;			// current element offset
var _offsetY = 0;
var _dragElement;			// needs to be passed from OnMouseDown to OnMouseMove
var _oldZIndex = 0;			// we temporarily increase the z-index during drag



function destroyDrag () {
	document.onmousedown = null;
	document.onmouseup = null;
}
function InitDragDrop()
{
	document.onmousedown = OnMouseDown;
	document.onmouseup = OnMouseUp;
}

function OnMouseDown(e)
{
	// IE is retarded and doesn't pass the event object
	if (e == null) 
		e = window.event; 
	
	// IE uses srcElement, others use target
	var target = e.target != null ? e.target : e.srcElement;
		// console.log(e.button,window.event);
	// for IE, left click == 1
	// for Firefox, left click == 0
	if ((e.button == 1 && window.event != null || e.button == 0) && target.className == 'drag'){
		// console.log(e.target);
		// grab the mouse position
		_startX = e.clientX;
		_startY = e.clientY;
		
		// grab the clicked element's position
		_offsetX = ExtractNumber(target.style.left);
		_offsetY = ExtractNumber(target.style.top);
		
		// bring the clicked element to the front while it is being dragged
		// _oldZIndex = target.style.zIndex;
		// target.style.zIndex = 10000;
		
		// we need to access the element in OnMouseMove
		_dragElement = target;

		// tell our code to start moving the element with the mouse
		document.onmousemove = OnMouseMove;
		
		// cancel out any text selections
		document.body.focus();
		
		// prevent text selection in IE
		document.onselectstart = function () { return false; };
		// prevent IE from trying to drag an image
		target.ondragstart = function() { return false; };
		
		// prevent text selection (except IE)
		return false;
	}
}

function ExtractNumber(value)
{
	var n = parseInt(value);
	
	return n == null || isNaN(n) ? 0 : n;
}

function OnMouseMove(e)
{
	if (e == null) 
		var e = window.event; 
		var changY = _offsetY + e.clientY - _startY;
		var max = jQuery('.drag').height() - 385;
		if((changY >= -max) && changY <= 0){
			_dragElement.style.position = 'relative';
			_dragElement.style.top = changY + 'px';
		}
}

function OnMouseUp(e)
{
	if (_dragElement != null)
	{
		_dragElement.style.zIndex = _oldZIndex;
		// _dragElement.style.position = 'static';
		// we're done with these events until the next OnMouseDown
		document.onmousemove = null;
		document.onselectstart = null;
		_dragElement.ondragstart = null;

		// this is how we know we're not dragging
		_dragElement = null;
	}
}
</script>