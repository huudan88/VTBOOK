<?php
class API_Books extends Controller{

    public $BookModel;

    public function __construct(){
        // Model
        $this->BookModel = $this->requireModel("BookModel");
    }

    // viewBooks
    function viewBooks(){
        $bookList = $this->BookModel->getBooks();
        echo $bookList;
    }

}
?>