<?php

// http://localhost/live/Home/Show/1/2

class Book extends Controller{

    public $BookModel;
    public $creater;

    public function __construct(){
        // Model
        $this->BookModel = $this->requireModel("BookModel");
    }

    // say Hi to load book
    function sayHi(){
        $bookList = $this->BookModel->getBooks();

        // Call Views
        $this->requireView("Master1", [
            "page" => "book"
        ]);
    }

    // Insert book data
    function insertBook(){
        // get data from Book form
        if( isset($_POST["btnSubmitBook"])){
            $book_id = $_POST["BookID"];
            $book_name = $_POST["BookDes"];
            $book_description = $_POST["BookCate"];
            $cat_id = $_POST["BookStatus"];
            $aut_id = $_POST["Author"];
            $Isdonate = $_POST["Isdonate"];
            $donater_id = $_POST["Donater"];
            $b_status_id = $_POST["BookName"];
            $pub_id = $_POST["Publisher"];
            echo($book_id);
        }
    }

}
?>