<?php
class API_Books extends Controller{

    public $BookModel;
    public $InfoModel;

    public function __construct(){
        // Model
        $this->BookModel = $this->requireModel("BookModel");
        $this->InfoModel = $this->requireModel("InfoModel");
    }

    // viewBooks
    function viewBooks(){
        $bookList = $this->BookModel->getBooks();
        echo $bookList;
    }

    // get infomation relate to books
    function getInfoBooks(){
        // Get user
        $userList = $this->InfoModel->getUsers();
        // echo "\"UserList\" : ".$userList;
       
        // Get category
        $categoryList = $this->InfoModel->getBookCategory();
        // echo "\"categoryList\" : ".$categoryList;

        // Get publisher
        $pubList = $this->InfoModel->getPublisher();
        // echo "\"pubList\" : ".$pubList;

        // Get authors
        $autList = $this->InfoModel->getAuthor();
        // echo "\"autList\" : ".$autList;

        // Get book status
        $bookSttList = $this->InfoModel->getBookStatus();
        // echo "\"bookSttList\" : ".$bookSttList;

        $inforbook = "{\"UserList\" : ".$userList.",".
                    "\"CategoryList\" : ".$categoryList.",".
                    "\"PublisherList\" : ".$pubList.",".
                    "\"BookStatusList\" : ".$bookSttList.",".
                    "\"AuthorList\" : ".$autList."}";
        echo $inforbook;
        
    }

}
?>