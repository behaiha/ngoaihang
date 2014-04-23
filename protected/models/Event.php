<?php

/**
 * This is the model class for table "event".
 *
 * The followings are the available columns in table 'event':
 * @property integer $id
 * @property string $title
 * @property string $content
 * @property string $sub_title
 * @property string $sub_content
 * @property integer $location_id
 * @property integer $status
 * @property string $end_date
 * @property string $begin_date
 */
class Event extends CActiveRecord
{
	public $nameLocation;
	public $addressLocation;
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'event';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('title, content,nameLocation, end_date, begin_date', 'required'),
			array('location_id, status', 'numerical', 'integerOnly'=>true),
			array('title, sub_title', 'length', 'max'=>70),
			array('sub_content', 'length', 'max'=>140),
			array('begin_date,end_date', 'checkTime'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, title, content, sub_title, sub_content, location_id, status, end_date, begin_date', 'safe', 'on'=>'search'),
		);
	}
	public function checkTime($attributes,$params)
	{
		if (strtotime($this->end_date) < strtotime(date("Y-m-d H:i:s"))) {
			$this->addError('end_date', "Thời gian cuối bé hơn thời gian hiện tại");
			return false;
		}
		if (strtotime($this->end_date) >= strtotime($this->begin_date)) {
			return true;
		}else{
			$this->addError('end_date', "Thời gian cuối nhở hơn thời gian đầu");
			return false;
		}
		return true;
	}
	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'coveImage'=> array(self::HAS_ONE,'CoverImage','table_id','on'=>'status = 1 and table_name ="E"'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'title' => 'Title',
			'content' => 'Content',
			'sub_title' => 'Sub Title',
			'sub_content' => 'Sub Content',
			'location_id' => 'Location',
			'status' => 'Status',
			'end_date' => 'End Date',
			'begin_date' => 'Begin Date',
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
		$criteria->compare('title',$this->title,true);
		$criteria->compare('content',$this->content,true);
		$criteria->compare('sub_title',$this->sub_title,true);
		$criteria->compare('sub_content',$this->sub_content,true);
		$criteria->compare('location_id',$this->location_id);
		$criteria->compare('status',$this->status);
		$criteria->compare('end_date',$this->end_date,true);
		$criteria->compare('begin_date',$this->begin_date,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Event the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
