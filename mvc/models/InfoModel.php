<?php
class InfoModel extends DB{

    //Get users
    function getUsers(){
        //call stored procedure
        $sql = "CALL GetUsers()"; 
        $userList = $this->sqlExecution($sql);
		return $userList;
    }

    //Get book category
    function getBookCategory(){
        //call stored procedure
        $sql = "CALL GetBookCategory()"; 
        $categoryList = $this->sqlExecution($sql);
        return $categoryList;
    }

    //Get publisher
    function getPublisher(){
        //call stored procedure
        $sql = "CALL GetPublisher()"; 
        $pubList = $this->sqlExecution($sql);
        return $pubList;
    }

    //Get publisher
    function getAuthor(){
        //call stored procedure
        $sql = "CALL GetAuthor()"; 
        $autList = $this->sqlExecution($sql);
        return $autList;
    }

    //Get book status
    function getBookStatus(){
        //call stored procedure
        $sql = "CALL GetBookStatus()"; 
        $autList = $this->sqlExecution($sql);
        return $autList;
    }

    //Get next ID
    function getNextId($prefix, $tblName){
        //call function
        $sql = "SELECT getNextId($prefix,$tblName) AS NextId"; 
        $nextId = $this->sqlExecution($sql);
        return $nextId;
    }

}
?>