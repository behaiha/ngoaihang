<?php
/* @var $this DefaultController */
/* @var $model Tags */

$this->breadcrumbs=array(
	'Tags'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Tags', 'url'=>array('index')),
	array('label'=>'Manage Tags', 'url'=>array('admin')),
);
?>

<h1>Create Tags</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>