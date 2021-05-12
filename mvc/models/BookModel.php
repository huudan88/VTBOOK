<?php
class BookModel extends DB{
    //Get books
    public function getBooks(){
        $qr = "SELECT * FROM books";
        return mysqli_query($this->con, $qr);
    }

}
?>