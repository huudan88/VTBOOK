<?php
class BorrowModel extends DB{

    //Get borrow books
    function getBorrowBooks(){
        $sql = "CALL GetBorrowBooks()"; //call stored procedure
        $brrList = $this->sqlExecution($sql);
		return json_encode($brrList);
    }

    
}
?>