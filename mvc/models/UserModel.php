<?php
class UserModel extends DB{

    //Check user name
    public function checkUsername($userName){
        $qr = "SELECT user_id FROM users"
                ." WHERE user_name='$userName'";
        $result = $this->sqlExecution($qr);
        return json_encode($result);
    }
    // public function checkUsername($userName){
    //     $qr = "SELECT * FROM users"
    //             ." WHERE user_name='$userName'";
    //     $rows = $this->sqlExeMysqli_query($qr);
    //     $result = false;
    //     if(mysqli_num_rows($rows) == 1){
    //         $result = true;
    //     }
    //     return json_encode($result);
    // }

    //get user Id base on User name
    public function getUserId($userName){
        $qr = "SELECT user_id FROM users"
                ." WHERE user_name='$userName'";
        $result = $this->sqlExecution($qr)[0]['user_id'];
        return $result;
    }
}
?>