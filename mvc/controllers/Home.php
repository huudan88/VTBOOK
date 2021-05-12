<?php

// http://localhost/live/Home/Show/1/2

class Home extends Controller{

    // Must have SayHi()
    function viewBooks(){
        $book = $this->model("BookModel");
        

        // Call Views
        $this->view("Master1", [
            "Page"=>"home",
            "Mau"=>"red",
            "SoThich"=>["A", "B", "C"],
            "Book" => $book->getBooks()
        ]);

    }

    function Show($a, $b){        
        // Call Models
        $teo = $this->model("BookModel");
        $tong = $teo->Tong($a, $b); // 3

        // Call Views
        $this->view("MasterLayout", [
            "Page"=>"news",
            "Number"=>$tong,
            "Mau"=>"red",
            "SoThich"=>["A", "B", "C"],
            "SV" => $teo->SinhVien()
        ]);
    }
}
?>