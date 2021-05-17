<?php
class BookModel extends DB{

    //Get books
    function getBooks(){
        $sql = "CALL GetAllBooks()"; //call stored procedure
        $bookList = $this->sqlExecution($sql);
		return json_encode($bookList);
    }

    //Insert books
    function insertBook($book_id,
                        $book_name,
                        $book_description,
                        $cat_id,
                        $aut_id,
                        $Isdonate,
                        $donater_id,
                        $b_status_id,
                        $pub_id,
                        $creater,
                        $create_date
    ){  
        // Status run sql
        $isSuccess = false;

        //call stored procedure
        $sql = "CALL InsertBooks($book_id,
                                $book_name,
                                $book_description,
                                $cat_id,
                                $aut_id,
                                $Isdonate,
                                $donater_id,
                                $b_status_id,
                                $pub_id,
                                $creater,
                                $create_date)";

        $isSuccess = $this->sqlInsertUpdate($sql);
        echo $isSuccess;
    }

}
?>