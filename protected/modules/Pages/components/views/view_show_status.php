<div class="content" id="all-content-post-<?php echo $value->id; ?>">
    <div class="post-status">
        <div class="user">
            <div class="user_avatar">
                <?php Users::getAvatar(Yii::app()->user->id); ?>
            </div>
            <div class="user_name" style="float: left;">
                <?php Users::getName(Yii::app()->user->id); ?><br />
                <a class="p-show">Fan: Chelsea FC</a>
                <p class="p-show">Cập nhật 1h trước</p>
            </div>
            <a href="javscript::void(0);" class="icon edit-post-status" onclick="edit_post(jQuery(this));"></a>
            <div class="activity-post">
                <a href="javscript::void(0);">Chỉnh sửa</a>
                <a onclick="del_post(<?php echo $value->id;?>);">Xóa</a>
                <a href="">Riêng tư</a>
            </div>
        </div>  
        <div class="clr"></div>
        <div class="content-post">
            <div class="prl-entry-content">
                <?php echo $value->content; ?>
                <!-- <iframe src="//www.youtube.com/embed/scuxovLtYuA" id="fitvid290741"></iframe> -->
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
    <?php $this->widget('Pages.components.View_All_Comment_Status'); ?>
</div>

<script>
function del_post(id){
    console.log("abc");
    jQuery.ajax({
		url:'<?php echo Yii::app()->createUrl("/Pages/default/deletepost")?>',
		data:{post_id : id},
		type:'POST',
		success:function (data) {
		      console.log("cba");
            $("#all-content-post-"+id).remove();
		},
	});
    
    $("#all-content-post-"+id).remove();
}
</script>