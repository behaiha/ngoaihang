<?php
class View_Event_Thumbai extends CWidget{
    public $model;
    public function init(){
        $this->render('view_event_thumbai',array('model'=>$this->model));
    }
}
?>