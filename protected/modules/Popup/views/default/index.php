<style>
	/* Some basic style resets to make the page look slightly nicer */
	h1, h2 {
		font-family: Arial, sans-serif;
		margin: 10px 0;
	}

	p, a {
		font-family: Verdana, sans-serif;
		font-size: 13px;
	}

	/* Gallery */
	[href="#next"] {
		float: right;
	}

	[href="#prev"] {
		float: left;
	}

	[href="#next"], [href="#prev"] {
		padding-top: 10px;
	}

	div.popup {
		overflow: hidden;
	}
</style>

<link href="<?php echo Yii::app()->theme->baseUrl; ?>/popup/css/popup.css" rel="stylesheet">
<script src="<?php echo Yii::app()->theme->baseUrl; ?>/popup/js/jquery.popup.js"></script>


<section id="main" class="prl-span-9"> 
   <article id="article-single"> 
	   
	   <div class="prl-grid">	
    		<div class="prl-span-9 prl-span-flip" id="content_tube" style="border-left: 1px solid #ddd">
                <div class="prl-span-12">		
        			<div class="prl-form-row space-bot">
        				<label class="prl-form-label" for="form-s-t">Chia sẻ videos về CLB của bạn</label>
        				<div class="prl-form-controls">
        					<textarea id="videos_youtube" placeholder="Chia sẻ videos youtube về CLB của bạn" class="prl-width-1-1"></textarea>
                        </div>
                        <div class="select_upload">
                            <div class="select_left">
                                <div class="icon-youtube">
                                    <img src="<?php echo Yii::app()->theme->baseUrl; ?>/assets/images/U_lagre.png"/>
                                </div>
                            </div>
                            <div class="select_right">
                                <button onclick="send_videos();">Chia sẻ</button>
                            </div>
                        </div>
                        <div class="clearfix"></div>
        			</div>
        		</div>
                <style>
                .select_upload{
                    overflow: hidden; /****/
                    background: rgba(0,0,0,0.1);
                }
                .select_left{
                    float: left;
                }
                .select_right{
                    float: right;
                }
                </style>
    	   <hr class="prl-grid-divider">
            <div class="content" id="content_append">
                <div class="user">
                    <div class="user_avatar" style="float: left; margin-right: 10px;">
                        <img src="<?php echo Yii::app()->theme->baseUrl; ?>/assets/images/_small/1.jpg"/ style="width: 60px;">
                    </div>
                    <div class="user_name" style="float: left;">
                        <a style="font-weight: bold">Tiến Minh</a><br />
                        <a style="color: #bbb; font-weight: normal ">Fan: Chelsea FC</a>
                        <p style="color: #bbb; font-weight: normal ">Cập nhật 1h trước</p>
                    </div>
                </div>	
                <div class="clearfix"></div>
    			<div class="prl-entry-content">
                    
                    
                    <?php foreach($model as $row):?>

                    <div class="content">
                        <a href="<?php echo "http://localhost".Yii::app()->createUrl('Popup/default/view',array('id'=>$row->id));?>" class="popup_gallery">
                        <?php echo Slideshow::model()->getImageSlide($row);?>
                        </a>    
                        <p>Tôi yêu quê hương tôi</p>
                    </div>
                    <?php endforeach;?>
                    
                    
    			</div>
                <hr class="prl-grid-divider">
            </div>
            
		</div>	
		<?php $this->widget('Videos.components.Left_Sidebar');?>
	   </div>
   </article>    		   		  
</section>

<script>
	var gallerySettings = {
			markup : '' +
				'<div class="popup">' +
					'<div class="popup_wrap">' +
						'<div class="popup_content">Minh Tiến</div>' +
                    '</div>' +
					'<a href="#next">Next</a>' +
					'<a href="#prev">Previous</a>' +
				'</div>',
			// This is a custom variable
			gallery	: '.popup_gallery',
			replaced : function($popup, $back){
				var plugin = this,
					$wrap = $('.popup_wrap', $popup);

				// Animate the popup to new size
				$wrap.animate({
					width 	: $wrap.children().children().outerWidth(true),
					height 	: $wrap.children().children().outerHeight(true)
				}, {
					duration	: 500,
					easing		: 'easeOutBack',
					step		: function(){

						// Need to center the poup on each step
						$popup
							.css({
								top		: plugin.getCenter().top,
								left	: plugin.getCenter().left
							});

					},
					complete	: function(){

						// Fade in!
						$wrap
							.children()
							.animate({opacity : 1}, plugin.o.speed, function(){
								plugin.center();
								plugin.o.afterOpen.call(plugin);
							});

					}
				});
			},
			show		: function($popup, $back){

				var plugin = this,
					$wrap = $('.popup_wrap', $popup);

				// Center the plugin
				plugin.center();

				// Default fade in
				$popup
					.animate({opacity : 1}, plugin.o.speed, function(){
						plugin.o.afterOpen.call(plugin);
					});

				// Set the inline styles as we animate later
				$wrap.css({
					width 	: $wrap.outerWidth(true),
					height 	: $wrap.outerHeight(true)
				});

			},
			afterClose		: function(){
				this.currentIndex = undefined;
			}

		};

	$(function(){

		/*---------------------

			POPUP

		*/

		$('.popup_gallery').popup(gallerySettings);

		/*---------------------

			NEXT & PREVIOUS LINKS

		*/

		$(document).on('click', '[href="#next"], [href="#prev"]', function(e){

			e.preventDefault();
            console.log("Minh Tiến");
			var $current = $('.popup_active'),
				popup = $current.data('popup'),
				$items = $(popup.o.gallery);

			// If this is the first time
			// and we don't have a currentIndex set
			if( popup.currentIndex === undefined ){

				popup.currentIndex = $items.index($current);

			}

			// Fade the current item out
			$('.'+popup.o.contentClass)
				.animate({opacity : 0}, 'fast', function(){

					// Get the next index
					var newIndex = $(e.target).attr('href') === '#next'
						? popup.currentIndex + 1
						: popup.currentIndex - 1;

					// Make sure the index is valid
					if( newIndex > $items.length -1 ){

						popup.currentIndex = 0;

					}else if( newIndex < 0 ){

						popup.currentIndex = $items.length - 1;

					}else{

						popup.currentIndex = newIndex;

					}

					// Get the new current link
					$current = $($items[popup.currentIndex]);

					// Load the content
					popup.open($current.attr('href'), undefined, $current[0]);

				});

		});

	});

	/*---------------------

		JQUERY EASING

	*/

	$.extend($.easing, {
		easeOutBack: function (x, t, b, c, d, s) {
			if (s == undefined) s = 1.70158;
			return c*((t=t/d-1)*t*((s+1)*t + s) + 1) + b;
		},
		easeInBack: function (x, t, b, c, d, s) {
			if (s == undefined) s = 1.70158;
			return c*(t/=d)*t*((s+1)*t - s) + b;
		}
	});

</script>
