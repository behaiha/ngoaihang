<script src="https://ajax.googleapis.com/ajax/libs/prototype/1.7.0.0/prototype.js" type="text/javascript"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/scriptaculous/1.9.0/scriptaculous.js" type="text/javascript"></script>
	
  <script src="<?php echo Yii::app()->theme->baseUrl ?>/lib/uicropper/cropper.js" type="text/javascript"></script>
  <script src="<?php echo Yii::app()->theme->baseUrl ?>/lib/pixastic\pixastic.core.js" type="text/javascript"></script>
  <script src="<?php echo Yii::app()->theme->baseUrl ?>/lib/pixastic\pixastic.jquery.js" type="text/javascript"></script>
  <script src="<?php echo Yii::app()->theme->baseUrl ?>/lib/pixastic\actions\crop.js" type="text/javascript"></script>
  <div id="primary-left">   
  		<script type="text/javascript" charset="utf-8">
		var x1,y1,x2,y2;
		function onEndCrop( coords, dimensions ) {
			console.log(coords,dimensions);
			x1 = coords.x1;
			y1 = coords.y1;
			x2 = coords.x2;
			y2 = coords.y2;
			// $( 'width' ).value = dimensions.width;
			// $( 'height' ).value = dimensions.height;
		}
		
		// example with a preview of crop results, must have minimumm dimensions
		Event.observe( 
			window, 
			'load', 
			function() { 
				new Cropper.ImgWithPreview( 
					'testImage',
					{ 
						minWidth: 200, 
						minHeight: 120,
						ratioDim: { x: 200, y: 120 },
						displayOnInit: true, 
						onEndCrop: onEndCrop,
						previewWrap: 'previewArea'
					} 
				) 
			} 
		);
	</script>
	<style type="text/css">
		label { 
			clear: left;
			margin-left: 50px;
			float: left;
			width: 5em;
		}
		
		#testWrap {
			width: 500px;
			float: left;
			margin: 20px 0 0 50px; /* Just while testing, to make sure we return the correct positions for the image & not the window */
		}
		
		#previewArea {
			margin: 20px; 0 0 20px;
			float: left;
		}
		
		#results {
			clear: both;
		}
	</style>
	<div id="testWrap">
		<img src="/giaingoaihang/image/castle.jpg" alt="test image" id="testImage" width="500" height="333" />
	</div>
	
	<div id="previewArea"></div>
	<button id="crop">Crop</button>
	<img src="/giaingoaihang/image/castle.jpg" alt="test image" id="testIma1ge" width="500" height="333" />
	<img src="" id="MyPix">
	<script type="text/javascript">
		jQuery('#crop').click(function(event) {
			Pixastic.process(document.getElementById("testIma1ge"), "crop", {
				rect : {
					left : x1, top : y1, width : (x2 - x1), height : (y2 - y1)
				}
			});
			 var canvas1 = document.getElementById("testImage");        
			  if (canvas1.getContext) {
			     var ctx = canvas1.getContext("2d");                
			     var myImage = canvas1.toDataURL("image/png");      
			  }
			  var imageElement = document.getElementById("MyPix");  
			  imageElement.src = myImage;     
			console.log(myImage);
			jQuery.ajax({
				url: '<?php echo Yii::app()->createUrl("/Event/default/image") ?>',
				type: 'POST',
				data: {data: myImage},
			})
			.done(function(data) {
				console.log(data);
				console.log("success");
			})
			.fail(function() {
				console.log("error");
			})
			.always(function() {
				console.log("complete");
			});
			  
			return false;
		});
	</script>
  </div>