<?php
class View_Show_Status extends CWidget{
	public $value;
    public function init(){
        $this->render('view_show_status',array('value'=>$this->value));
    }
}
?>