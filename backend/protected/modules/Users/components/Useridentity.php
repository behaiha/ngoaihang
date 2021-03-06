<?php

/**
 * UserIdentity represents the data needed to identity a user.
 * It contains the authentication method that checks if the provided
 * data can identity the user.
 */
class UserIdentity extends CUserIdentity
{
	private $_id;
	/**
	 * Authenticates a user.
	 * The example implementation makes sure if the username and password
	 * are both 'demo'.
	 * In practical applications, this should be changed to authenticate
	 * against some persistent user identity storage (e.g. database).
	 * @return boolean whether authentication succeeds.
	 */
	public function authenticate()
	{
		$user = Users::model()->find("username='$this->username' or email='$this->username'");
		if ($user===null){
			$this->errorCode=self::ERROR_USERNAME_INVALID;
		}else {
        	if (!CPasswordHelper::verifyPassword($this->password, $user->password)){
        		$this->errorCode=self::ERROR_USERNAME_INVALID;
        	}else {
                // $user->updateByPk($user->id, array("lastlogin"=>new CDbExpression('NOW()')));
                $this->_id=$user->id;
                $auth=Yii::app()->authManager;
                if(!$auth->isAssigned($user->roles,$this->_id))
                {
                    if($auth->assign($user->roles,$this->_id))
                    {
                        Yii::app()->authManager->save();
                    }
                }
			    $this->errorCode=self::ERROR_NONE;
    		}
		}
		return !$this->errorCode;
	}
	/**
    * @return integer the ID of the user record
    */
	public function getId()
	{
		return $this->_id;
	}
}