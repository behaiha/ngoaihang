<!-- <script src="//code.jquery.com/jquery-1.9.1.js"></script> -->
  <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<input id="thing" />
<button id="thu">a</button>

<script type="text/javascript">
$('#thu').click(function(event) {
	console.log('baaaaaaaaaaaaa');
	$.ajax({
    		url: '<?php echo Yii::app()->createUrl("Event/default/view"); ?>',
    		type: 'POST',
    		dataType: 'json',
    		data: {p: 'value1'},
    		success: function(data) {
    			console.log('b');
    		}
    	});
});
var myArray = ['StackOverflow', 'Google', 'Yahoo'];

var thing = $("#thing").autocomplete({
    minLength: 0,
    source: function(request, response) {
    	console.log('a');
    	$.ajax({
    		url: '<?php echo Yii::app()->createUrl("/Event/default"); ?>',
    		type: 'POST',
    		dataType: 'json',
    		data: {p: 'value1'},
    		success: function(data) {
    			console.log('b');
    		}
    	});
    	
    }
}).data( "ui-autocomplete" )._renderMenu  = function(ul, item) {
   return $("<li>")
            .data("item.autocomplete", item)
            .append("<a class='helper'>Add <b>\"" + item.value + "\"</b> as a new item</a>")
            .appendTo(ul);
};;

</script>