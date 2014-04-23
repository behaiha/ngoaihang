<?php
    /*$content = "TA OLALA AAAhttp://www.php.net/stristr tong cong tien tong cong tienhttp://www.youtube.com/watch?v=A6rK38B1APctong cong 
    minh nguyen tien http://www.youtube.com/watch?v=hN2c7ztQlkI nguyen minh tien tong tien";
    $link = parserContent($content);
    foreach($link as $key1=>$value){
        foreach($value as $key2=>$row){
            $check = get_youtube_id_from_url($row);
            if($check){
                echo $check."<br/>";
            }
        }
    }
    echo formatInputContent($content);*/
?>

<section id="main" class="prl-span-9"> 
   <article id="article-single"> 
	   <div class="prl-grid">	
    		<div class="prl-span-9 prl-span-flip" id="content_tube" style="border-left: 1px solid #ddd">
                <div class="post-status-user">
                	<textarea id="comments" placeholder="Chia sẻ videos?"></textarea>
                	<div class="div-button">
                		<a href="javscript::void(0);"><i class="fa fa-youtube-play"></i></a>
                		<button>Đăng bài</button>
                		<div class="status-post">
                			<a href="javscript::void(0);">Công khai</a>
                			<i class="fa fa-filter fa-lg"></i>
                			<div class="types">
                				<a href="javscript::void(0);">Riêng tư</a>
                			</div>
                		</div>
                	</div>
                	<div class="clr"></div>
                </div>
                <div class="content" >
                    <div class="post-status">
                        <div class="user">
                            <div class="user_avatar">
                                <img src="<?php echo Yii::app()->theme->baseUrl; ?>/assets/images/_small/1.jpg">
                            </div>
                            <div class="user_name" style="float: left;">
                                <a class="p-username-show">Tiến Minh</a><br />
                                <a class="p-show">Fan: Chelsea FC</a>
                                <p class="p-show">Cập nhật 1h trước</p>
                            </div>
                            <a href="javscript::void(0);" class="icon edit-post-status"></a>
                            <div class="activity-post">
                                <a href="">Chỉnh sửa</a>
                                <a href="">Xóa</a>
                                <a href="">Riêng tư</a>
                            </div>
                        </div>  
                        <div class="clr"></div>
                        <div class="content-post">
                            <div class="prl-entry-content">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In luctus luctus est vestibulum luctus akjsit amet, consectetur adipiscing elit. In luctus luctus est vestibulum luctus akjsit amet, consectetur adipiscing elit. In luctus luctus est vestibulum luctus akj</p>
                                <iframe src="//www.youtube.com/embed/scuxovLtYuA" id="fitvid290741"></iframe>
                            </div>
                        </div>
                    </div>
                    <div class="user-activity post-user-activity">
                        <a href="">Thích</a>
                        <a href="">Bình luận</a>
                        <a href="">Chia sẻ</a>
                    </div>
                     <div class="many-like">
                        <a class="">Tiến Minh</a>
                        <p> và </p>
                        <a href="">100 người khác </a>
                        <p>thích điều này</p>
                    </div>
                    <?php $this->widget('Users.components.View_All_Comment_Status'); ?>
                </div>
        </div>	
		<?php $this->widget('Videos.components.Left_Sidebar');?>
	   </div>
   </article>    		   		  
</section>

<script>

/*$('#videos_youtube').bind('paste', function(e){
    
    console.log("paste");
    
    var text = $(this).html();
    console.log("Fuck:"+text);
    if(text != null){
        jQuery.ajax({
            type: 'POST',
    		url: '<?php echo Yii::app()->createUrl('/Videos/services/getLink');?>',
            dataType: 'json',
            data: { link_youtube : text},
            success: function (json) {
                
                var videos = '';
                $.each(json.tube, function( index, value ){
                    videos = videos +
                    '<div class="space-bot">'+
    				    '<div class="fluid-width-video-wrapper" style="padding-top: 56.25%;">'+
                            '<iframe src="//www.youtube.com/embed/'+value.id+'" id="fitvid290741"></iframe>'+
                        '</div>'+
    				'</div>'+
    			   '<h2><a href="'+value.link+'" target="_blank">'+value.title+'</a></h2>';
                    
                });
                var content =
                '<div class="prl-entry-content">'+
                    '<p>'+json.content+'</p>'+
    				videos +
    			'</div>';
                
                $("#content_tube").prepend(content);
            },
            complete : function(){
                
            },
            error: function () {
            }
    
        });
    }*/
    
    

$('#videos_youtube').on('paste', function () {
  var element = this;
  setTimeout(function () {
    var text = $(element).val();
    console.log("end..."+text);
    // do something with text
  }, 100);
});

function send_videos(){
    var text = $("#videos_youtube").val();
    if(text != null){
        jQuery.ajax({
            type: 'POST',
    		url: '<?php echo Yii::app()->createUrl('/Videos/services/getLink');?>',
            dataType: 'json',
            data: { link_youtube : text},
            success: function (json) {
                
                var videos = '';
                $.each(json.tube, function( index, value ){
                    videos = videos +
                    '<div class="space-bot">'+
    				    '<div class="fluid-width-video-wrapper" style="padding-top: 56.25%;">'+
                            '<iframe src="//www.youtube.com/embed/'+value.id+'" id="fitvid290741"></iframe>'+
                        '</div>'+
    				'</div>'+
    			   '<h2><a href="'+value.link+'" target="_blank">'+value.title+'</a></h2>';
                    
                });
                var content =
                '<div class="prl-entry-content">'+
                    '<p>'+json.content+'</p>'+
    				videos +
    			'</div>';
                
                $("#content_append").prepend(content);
            },
            complete : function(){
                
            },
            error: function () {
            }
    
        });
    }
}

</script>

