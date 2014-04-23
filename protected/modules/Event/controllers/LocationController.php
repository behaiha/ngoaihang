<?php

class LocationController extends Controller
{
	public function actionLoad()
	{
		if (isset($_POST['p'])) {
			header('Content-Type: application/json');
			$p = $_POST['p'];
			$model = Location::model()->findAll("title like '%$p%'");
			$arrs = array();$i=0;
			foreach ($model as $key => $value) {
				$arr =array(
					'name'=>$value->title,
					'longitude' =>$value->longitude,
					'latitude' =>$value->latitude,
				);
				$arrs[$i++] = $arr;
			}
			echo json_encode($arrs);
		}
	}
}