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

    // Insert borrow data
    function insertBrrBook(){
        // get data from Book form
        if( isset($_POST["btnSubmitAddBrr"])){
            $borrow_id = $_POST["BorrowID"];
            $book_id = $_POST["brrBookID"];
            $user_id = $_POST["BrrUser"];
            $b_status_id = "BOR";
            $borrow_date = $_POST["brrDate"];
            $borrow_note = $_POST["brrNote"];
            $creater = $this->createrDefault;
            $create_date = date("Y-m-d");
        }

        //Insert book data
        $isSuccess = $this->BorrowModel->insertBrrBook(
                                                    $borrow_id,
                                                    $user_id,
                                                    $book_id,
                                                    $b_status_id,
                                                    $borrow_date,
                                                    $borrow_note,
                                                    $creater,
                                                    $create_date
                                                );
        // echo $isSuccess;

        // Show notification
        $this->requireView("Master1", [
            "page" => "borrowView",
            "result" => $isSuccess
        ]);
    }

}
?>