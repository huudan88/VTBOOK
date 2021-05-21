<?php

// http://localhost/live/Home/Show/1/2

class Borrow extends Controller{

    public $BorrowModel;
    public $UserModel;
    public $createrDefault = "Admin";

    public function __construct(){
        // Model
        $this->BorrowModel = $this->requireModel("BorrowModel");
        $this->UserModel = $this->requireModel("UserModel");
    }

    // say Hi to load book
    function sayHi(){
        $bookList = $this->BorrowModel->getBorrowBooks();

        //Call Views
        $this->requireView("Master1", [
            "page" => "borrowView"
        ]);
    }

    // Insert book data
    

}
?>