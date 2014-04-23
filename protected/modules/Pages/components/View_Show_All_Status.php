<?php
class View_Show_All_Status extends CWidget{
	public $type = 'U';
    public function init(){
    	$criteria=new CDbCriteria;
    	$criteria->condition = "type ='".$this->type."' and user_id =".Yii::app()->user->id;
    	$criteria->order ='id desc';
    	$model = Pages::model()->findAll($criteria);
        $this->render('view_show_all_status',array('model'=>$model));
    }
}
?>