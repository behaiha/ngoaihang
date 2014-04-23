<?php

class CoverImageController extends Controller
{
	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
			'postOnly + delete', // we only allow deletion via POST request
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array(''),
				'users'=>array('*'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('deleteimage','saveimage','image','place'),
				'users'=>array('@'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete'),
				'users'=>array('admin'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}
	public function actionDeleteImage()
	{
		if (isset($_POST['name'])) {
			$name = $_POST['name'];
			$pathTemp = Yii::app()->basePath .'/../'.TEMP_IMAGE;
			$file = $pathTemp.$name;
			if (is_file($file)) {
				unlink($file);
			}
		}
	}
	public function actionSaveImage()
	{
		if(isset($_POST['id'])){
			header('Content-Type: application/json');
			$id = $_POST['id'];
			$name = $_POST['name'];
			$nameTable = $_POST['nameTable'];
			if ($nameTable == 'E') {
				$model = Event::model()->findByPk($id);
			}elseif($nameTable == 'U'){
				$model = Users::model()->findByPk($id);
			}
			if ($model != null) {
				checkdirectory(DATE_COVER_IMAGE);
				$pathTemp = Yii::app()->basePath .'/../'.TEMP_IMAGE;
				$path = Yii::app()->basePath .'/../'.DATE_COVER_IMAGE_PATH;
				$image = CoverImage::model()->findByAttributes(array('table_id'=>$id,'table_name'=>$nameTable,'status'=>1));
				$status = 0;
				$nameOld = '';
				if ($image == null) {
					$image = new CoverImage;
					$image->table_id = $id;
					$image->table_name = $nameTable;
					$image->image = $name;
					$image->path = DATE_COVER_IMAGE_PATH;					
					$image->style = $_POST['style'];
					$image->status = 1;
					$image->save(false);
				}else{
					if ($image->image != $name) {
						$image->status = 0;
						$image->save(false);
						$image = new CoverImage;
						$image->table_id = $id;
						$image->table_name = $nameTable;
						$image->image = $name;
						$image->path = DATE_COVER_IMAGE_PATH;					
						$image->style = $_POST['style'];
						$image->status = 1;
						$image->save(false);
					}else{
						$image->style = $_POST['style'];
						$image->save(false);
					}	
				}
				if (is_file($pathTemp.$name)) {
					rename($pathTemp.$name, $path.$image->image);
				}
				$link =  Yii::app()->baseUrl.$image->path.$image->image;
				$arr = array(
					'linkI'=>$link,
					'name' =>$name,
				);
				echo json_encode($arr);
			}

		}	
	}
	public function actionImage()
	{
		if(isset($_POST['data'])){
			header('Content-Type: application/json');
			$rows = json_decode($_POST['data'],true);
			$img = $rows[0]['image'];
			$typeImage = strtolower($rows[0]['type']);
			if($typeImage == 'jpg' || $typeImage == 'jpeg'){
            	$img = str_replace('data:image/jpeg;base64', '', $img);
            }
			if($typeImage == 'png' || $typeImage == 'PNG'){
				$img = str_replace('data:image/png;base64', '', $img);
			}
			if($typeImage == 'gif' || $typeImage == 'GIF'){
				$img = str_replace('data:image/gif;base64', '', $img);
			}
			// $img = str_replace(' ', '+', $img);
			$data = base64_decode($img);
			$path = Yii::app()->basePath .'/../'.TEMP_IMAGE;
			$name = strtotime(date('y-m-d H:i:s')).uniqid() . '.jpg';
			$nameNew = strtotime(date('y-m-d H:i:s')).uniqid() . '.jpg';
            $file = $path.$name;
            $fileNew =$path. $nameNew;
			$success = file_put_contents($file, $data);
			if ($success) {
				$status = compress($file,$fileNew);
				if ($status == null) {
					$link =  Yii::app()->baseUrl.TEMP_IMAGE.$name;
				}else{
					$link =  Yii::app()->baseUrl.TEMP_IMAGE.$nameNew;
					$name = $nameNew;
					unlink($file);
					$file = $fileNew;
				}		
				$info = getimagesize($file);
				$arr = array(
					'linkI'=>$link,
					'name' =>$name,
					'height' => $info[1],
					'width' => $info[0],
				);
				echo json_encode($arr);
			}
		}
	}
}