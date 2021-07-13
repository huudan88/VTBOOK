<?php
class API_Books extends Controller{

    public $BookModel;
    public $InfoModel;
    public $BorrowModel;

    public function __construct(){
        // Model
        $this->BookModel = $this->requireModel("BookModel");
        $this->InfoModel = $this->requireModel("InfoModel");
        $this->BorrowModel = $this->requireModel("BorrowModel");
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
       
        // Get category
        $categoryList = $this->InfoModel->getBookCategory();

        // Get publisher
        $pubList = $this->InfoModel->getPublisher();

        // Get authors
        $autList = $this->InfoModel->getAuthor();

        // Get book status
        $bookSttList = $this->InfoModel->getBookStatus();

        // // Get book status
        // $nextBookId = $this->InfoModel->getNextId($prefix,$tblName);
        
        echo json_encode([
            // 'NextBookId' => $nextBookId,
			'UserList' => $userList,
			'CategoryList' =>  $categoryList,
			'PublisherList' => $pubList,
			'BookStatusList' => $bookSttList,
			'AuthorList' => $autList
		]);
        
    }

    // get infomation base on book ID
    function GetInfoBaseBookID($book_id){
        // Get book info base on Book ID
        $bookInfo = $this->BookModel->GetInfoBaseBookID($book_id);

        // Get user
        $userList = $this->InfoModel->getUsers();
       
        // Get category
        $categoryList = $this->InfoModel->getBookCategory();

        // Get publisher
        $pubList = $this->InfoModel->getPublisher();

        // Get authors
        $autList = $this->InfoModel->getAuthor();

        // Get book status
        $bookSttList = $this->InfoModel->getBookStatus();
        
        echo json_encode([
            'BookInfo' => $bookInfo,
			'CategoryList' =>  $categoryList,
			'PublisherList' => $pubList,
			'BookStatusList' => $bookSttList,
			'AuthorList' => $autList
            ]);
        
    }

    // view Borrow list
    function viewBrrBooks(){
        $brrList = $this->BorrowModel->getBorrowBooks();
        echo $brrList;
    }

    // get NextId
    function nextId($prefix,$tblName){
        $nextId = $this->InfoModel->getNextId($prefix,$tblName);
        echo json_encode($nextId);
    }

}
?>