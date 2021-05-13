<?php

// http://localhost/live/Home/Show/1/2

class Home extends Controller{

    public $BookModel;

    public function __construct(){
        // Model
        $this->BookModel = $this->requireModel("BookModel");
    }

    // viewBooks
    function viewBooks(){
        $bookList = $this->BookModel->getBooks();

        // Call Views
        $this->requireView("Master1", [
            "page" => "home",
            "dbBook" => $bookList
        ]);

    }

}
?>