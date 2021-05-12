<?php


class API_Sinhvien extends Controller{
    function DanhSach(){
        $sinhvien = $this->model("SinhVienModel");
        $sv = $sinhvien->SinhVien();
        $mang = [];
        while($row = mysqli_fetch_array($sv)){
            array_push($mang, new SinhVien(
                $row["ID"], 
                $row["bookname"], 
                $row["aut"]
            ));   
        }
        echo json_encode($mang);
    }

}
 
class SinhVien{
    public $ID;
    public $bookname;
    public $aut;

    public function __construct($id, $bookname, $aut){
        $this->ID = $id;
        $this->bookname = $bookname;
        $this->aut = $aut;
    }

}
?>