<?php
class BookModel extends DB{

    //Get books
    function getBooks(){
        $sql = "CALL GetAllBooks()"; //call stored procedure
        $bookList = $this->sqlExecution($sql);
		return json_encode($bookList);
    }

    //Get book base on ID
    function getInfoBaseBookID($book_id){
    $sql = "CALL GetInfoBaseBookID($book_id)"; //call stored procedure
    $bookInfo = $this->sqlExecution($sql);
    return $bookInfo;
    }
    
    //Insert books
    function insertBook($book_id,
                        $book_name,
                        $book_description,
                        $cat_id,
                        $aut_id,
                        $Isdonate,
                        $donator_id,
                        $b_status_id,
                        $pub_id,
                        $creater,
                        $create_date
    ){  
        // Status run sql
        $isSuccess = false;

        //call stored procedure
        $sql = "CALL InsertBooks('$book_id',
                                '$book_name',
                                '$book_description',
                                '$cat_id',
                                '$aut_id',
                                '$Isdonate',
                                '$donator_id',
                                '$b_status_id',
                                '$pub_id',
                                '$creater',
                                '$create_date')";

        $isSuccess = $this->sqlInsertUpdate($sql);
        return json_encode($isSuccess);
    }

    // Update books
    function updateBook($book_id,
                        $book_name,
                        $book_description,
                        $cat_id,
                        $aut_id,
                        $Isdonate,
                        $donator_id,
                        $b_status_id,
                        $pub_id,
                        $updater,
                        $update_date
    ){  
        // Status run sql
        $isSuccess = false;

        //call stored procedure
        $sql = "CALL UpdateBooks('$book_id',
                                '$book_name',
                                '$book_description',
                                '$cat_id',
                                '$aut_id',
                                '$Isdonate',
                                '$donator_id',
                                '$b_status_id',
                                '$pub_id',
                                '$updater',
                                '$update_date')";

        $isSuccess = $this->sqlInsertUpdate($sql);
        return json_encode($isSuccess);
    }
}
?>