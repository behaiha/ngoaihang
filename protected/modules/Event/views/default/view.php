<section id="main" class="prl-span-9">
    <article id="article-single"> 
    <?php $this->widget('Event.components.View_Event_Thumbai',array('model'=>$model)); ?>
    <div class="prl-grid">  
        <div class="view-show-post prl-span-9 prl-span-flip posts-users" id="content_tube" >
            <?php $this->widget('Pages.components.View_Post_Status'); ?>
            <?php $this->widget('Pages.components.View_Show_All_Status'); ?>
       </div>
       <?php $this->widget('Event.components.View_Left_Sidebar'); ?>
    </div>
</article>
</section>
<script type="text/javascript">
    var t,statusShowEditPost = 0;
    jQuery('.edit-comment').click(function (e) {
        t = jQuery(this);
        statusShowEditPost = 1;
        t.css('display','inline');
        t.parent().find('.activity-post').slideToggle();
    })
    jQuery('.edit-post-status').click(function (e) {
        t = jQuery(this);
        statusShowEditPost = 1;
        t.parent().find('.activity-post').slideToggle();
    })
    jQuery('body').click(function(e) {
        if (statusShowEditPost == 0) {
            jQuery('.activity-post').hide();
            jQuery('.edit-comment').hide();
            jQuery('.edit-comment').css('display','');
        };
        statusShowEditPost = 0;
    })

</script>
