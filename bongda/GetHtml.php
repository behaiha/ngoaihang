<?php 
/**
* 
*/
class GetHtml
{
	public $url = "http://hn.24h.com.vn";
	public $test_link = 'bong-da-ngoai-hang-anh';
	public $link = "http://hn.24h.com.vn/bong-da-ngoai-hang-anh-c149.html";
	public function getAll()
	{
		header('Content-Type: text/html; charset=UTF-8');
		$html = file_get_html($this->link);
		$elem = $html->find('.colCenter a');
		$i = 0;
		$array = array();
		foreach ($elem as $key => $value) {
			if (strrpos($value->href, $this->test_link) && !strrpos($value->href, "http://")) {
				$link_one =$this->url . $value->href;
				$db = new DbConnect();
				if (!in_array($link_one, $array) && $db->checkLink($link_one) == 1) {
					array_push($array, $link_one);
					$arr = $this->getOneArticles($link_one);
					if (count($arr)> 1) {
						$i++;
						$db->insertDb($arr['content'],$arr['title'],$link_one);
						echo ":".$link_one.'<br>';
					}
				}
			}
		}
		echo $i;
	}
	public function getOneArticles($url)
	{
		header('Content-Type: text/html; charset=UTF-8');
		$html = file_get_html($url);
		$elem = $html->find('.colCenter .boxDon-c');
		$title = $html->find('.colCenter .boxDon-c .baiviet-title');
		$subtitle = $html->find('.colCenter .boxDon-c .baiviet-sapo');
		$content = $html->find('#baiviet-container');
		if (count($title) <= 0 || count($subtitle) <= 0 || count($content) <= 0) {
			return '';
		}
		return array(
			'title'=>strip_tags($title[0]),
			'sub_title'=>$subtitle[0],
			'content' => $content[0],
		);
	}
	public function getClub($url)
	{
		$url = "http://hn.24h.com.vn/lich-thi-dau-bong-da/lich-thi-dau-bong-da-anh-2013-2014-c287a466567.html";
		header('Content-Type: text/html; charset=UTF-8');
		$html = file_get_html($url);
		$elem = $html->find('#baiviet-container div table tbody tr td.team');
		// var_dump($elem);
		foreach ($elem as $key => $value) {
			echo $value.'<br>';
		}
	}
}
?>