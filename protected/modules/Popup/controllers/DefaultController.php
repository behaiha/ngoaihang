<?php

class DefaultController extends Controller
{
	public function actionIndex()
	{
        $model = Slideshow::model()->findAll();
		$this->render('index',array('model'=>$model));
	}
    public function actionView($id){
        $this->layout ='//layouts/popup';
        $model = Slideshow::model()->findByPk($id);
        $this->render('view',array('model'=>$model));
    }
}