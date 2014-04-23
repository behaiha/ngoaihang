<?php

/**
 * This is the model class for table "rating".
 *
 * The followings are the available columns in table 'rating':
 * @property integer $id
 * @property integer $user_id
 * @property integer $article_id
 * @property double $rate
 */
class Rating extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Rating the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'rating';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('user_id, article_id, rate', 'required'),
			array('user_id, article_id', 'numerical', 'integerOnly'=>true),
			array('rate', 'numerical'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, user_id, article_id, rate', 'safe', 'on'=>'search'),
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
			'user_id' => 'User',
			'article_id' => 'Article',
			'rate' => 'Rate',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('user_id',$this->user_id);
		$criteria->compare('article_id',$this->article_id);
		$criteria->compare('rate',$this->rate);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
    public function getRate($model)
	{
		$value = Rating::model()->findByAttributes(array('article_id'=>$model->id,'user_id'=>Yii::app()->user->id));
		if ($value != null) {
			return $value->rate;
		}
		return 0;
	}
}