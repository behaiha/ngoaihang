<?php
class ServicesController extends Controller{
    
    public function actionGetLink(){
        if (isset($_POST['link_youtube'])) {
            $yt_url = $_POST['link_youtube'];
            $model = new ShareVideos;
            $model->user_id = Yii::app()->user->id;
            $model->videos = $_POST['link_youtube'];
            $model->save();
            
            $data = array();
            $data_tube = array();
            $arr_tube = array();
            
            $link = parserContent($yt_url);
            if($link != null){
                $i = 0;
                foreach($link as $key1=>$value){
                    foreach($value as $key2=>$row){
                        $check = get_youtube_id_from_url($row);
                        if($check and  $check != '' and $check != null){
                            
                            $id = $check;
                            $videoTitle = file_get_contents("http://gdata.youtube.com/feeds/api/videos/${id}?v=2&fields=title");
                            preg_match("/<title>(.+?)<\/title>/is", $videoTitle, $titleOfVideo);
                            $videoTitle = $titleOfVideo[1];
                            
                            $arr_tube = array(
                                'id' => $id,
                                'title' => $videoTitle,
                                'link' => $row,
                            );
                            $data_tube[$i] = $arr_tube;
                            
                            $model_youtube = VideosYoutube;
                            $model_youtube->video_id = $id;
                            $model_youtube->video_link = $row;
                            $model_youtube->title = $videoTitle;
                            $model_youtube->save();
                            
                            $i++;
                            
                        }
                    }
                }
            }
            $content =  formatInputContent($yt_url);
            $data = array(
                'content'=>$content,
                'tube'=>$data_tube,
            );
            echo json_encode($data);
        }
     }
}
?>