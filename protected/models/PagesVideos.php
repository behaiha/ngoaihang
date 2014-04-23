<?php

/**
 * This is the model class for table "pages_videos".
 *
 * The followings are the available columns in table 'pages_videos':
 * @property integer $id
 * @property integer $page_id
 * @property string $youtube_id
 * @property string $youtube_tile
 * @property string $youtube_link
 * @property string $create_date
 * @property string $update_date
 */
class PagesVideos extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'pages_videos';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('page_id, youtube_id, youtube_tile, youtube_link, create_date', 'required'),
			array('page_id', 'numerical', 'integerOnly'=>true),
			array('youtube_id', 'length', 'max'=>100),
			array('youtube_tile', 'length', 'max'=>300),
			array('youtube_link', 'length', 'max'=>200),
			array('update_date', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, page_id, youtube_id, youtube_tile, youtube_link, create_date, update_date', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'page_id' => 'Page',
			'youtube_id' => 'Youtube',
			'youtube_tile' => 'Youtube Tile',
			'youtube_link' => 'Youtube Link',
			'create_date' => 'Create Date',
			'update_date' => 'Update Date',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('page_id',$this->page_id);
		$criteria->compare('youtube_id',$this->youtube_id,true);
		$criteria->compare('youtube_tile',$this->youtube_tile,true);
		$criteria->compare('youtube_link',$this->youtube_link,true);
		$criteria->compare('create_date',$this->create_date,true);
		$criteria->compare('update_date',$this->update_date,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return PagesVideos the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
