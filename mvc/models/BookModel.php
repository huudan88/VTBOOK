<?php
class BookModel extends DB{
    //Get books
    function getBooks(){
        $sql = "CALL GetAllBooks()"; //call stored procedure
        $bookList = $this->sqlExecution($sql);
		return json_encode($bookList);
    }

}
?>