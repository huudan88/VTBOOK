<?php
class BorrowModel extends DB{

    //Get borrow books
    function getBorrowBooks(){
        $sql = "CALL GetBorrowBooks()"; //call stored procedure
        $brrList = $this->sqlExecution($sql);
		return json_encode($brrList);
    }

    // Add borrow books
    function insertBrrBook( $borrow_id,
                            $user_id,
                            $book_id,
                            $b_status_id,
                            $borrow_date,
                            $borrow_note,
                            $creater,
                            $create_date
    ){
        // Status run sql
        $isSuccess = false;

        //call stored procedure
        $sql = "CALL InsertBorrowBooks( '$borrow_id',
                                        '$user_id',
                                        '$book_id',
                                        '$b_status_id',
                                        '$borrow_date',
                                        '$borrow_note',
                                        '$creater',
                                        '$create_date')";

        $isSuccess = $this->sqlInsertUpdate($sql);
        return json_encode($isSuccess);
    }


}
?>