<?php

// http://localhost/live/Home/Show/1/2

class Book extends Controller{

    public $BookModel;
    public $UserModel;
    public $createrDefault = "Admin";

    public function __construct(){
        // Model
        $this->BookModel = $this->requireModel("BookModel");
        $this->UserModel = $this->requireModel("UserModel");
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
            $book_name = $_POST["BookName"];
            $book_description = $_POST["BookDes"];
            $cat_id = $_POST["BookCate"];
            $aut_id = $_POST["Author"];
            $Isdonate = $_POST["Isdonate"];
            // $donator_id = $this->UserModel->getUserId($_POST["Donator"]);
            $donator_id = $_POST["Donator"];
            $b_status_id = $_POST["BookStatus"];
            $pub_id = $_POST["Publisher"];
            $creater = $this->createrDefault;
            $create_date = date("Y-m-d");
        }

        //Insert book data
        $isSuccess = $this->BookModel->insertBook(
                                                    $book_id,
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
                                                );
        // echo $isSuccess;

        // Show notification
        $this->requireView("Master1", [
            "page" => "book",
            "result" => $isSuccess
        ]);
    }

    // Update book data
    function updateBook(){

        // get data from update Book form
        if( isset($_POST["btnSubmitUpdateBook"])){
            $book_id = $_POST["BookID"];
            $book_name = $_POST["BookName"];
            $book_description = $_POST["BookDes"];
            $cat_id = $_POST["BookCate"];
            $aut_id = $_POST["Author"];
            $Isdonate = $_POST["Isdonate"];
            // if ( isset($_POST["Donator"])){
            //     $donator_id = $_POST["Donator"];
            // }else{
            //     // $donator_id = json_decode($this->UserModel->checkUsername($_POST["Donator"]))[0]['user_id'];
            //     $donator_id = $this->UserModel->getUserId($_POST["Donator"]);
            // }
            //
            $donator_id = $_POST["Donator"];
            $b_status_id = $_POST["BookStatus"];
            $pub_id = $_POST["Publisher"];
            $updater = $this->createrDefault;
            $update_date = date("Y-m-d");
        }

        //Insert book data
        $isSuccess = $this->BookModel->updateBook(
                                                    $book_id,
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
                                                );
        // echo $isSuccess;

        // Show notification
        $this->requireView("Master1", [
            "page" => "book",
            "result" => $isSuccess
        ]);
    }

}
?>