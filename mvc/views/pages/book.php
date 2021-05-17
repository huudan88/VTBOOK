<div>

<div class="table_view my-4">
    <?php
    //pre-process data
    //$printedData = json_decode($data['dbBook'], true);
    //$printedData = ($data['dbBook']);
    //$tableHeader = ['Book ID', 'Book name', 'Description'];
    //$dataOrder =    ['book_id','book_name','book_description'];
    //echo $data['dbBook'];
    //echo ($data['dbBook']);
    //print_r ($printedData);
    //echo ($printedData);
    //Build up a table
    //tableBuildUp($tableHeader, $dataOrder, $printedData);

    //  while($row = mysqli_fetch_array($data['dbBook'])){
    //     echo $row["book_name"];
    //     echo $row["book_description"];
        
    //  }
    
    ?>
    <h1 class="display-4 text-primary">All books</h1>
    <div class="table-responsive">
        <table id="tblAllVTBooks" class="table table-hover">
        <thead>
            <tr id="list-header" class="text-primary">
            <th scope="col">#</th>
            <th scope="col">Book ID</th>
            <th scope="col">Book name</th>
            <th scope="col">Category</th>
            <th scope="col">Status</th>
            <th scope="col">Author</th>
            <th scope="col">Publisher</th>
            <th scope="col">Source</th>
            <th scope="col">Donater</th>
            </tr>
        </thead>
        <tbody>

        </tbody>
        </table>
    </div>
    <button type="button" class="btn btn-primary float-end" id="btnRefeshBook">Refresh</button>
    <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addUpdateBook" id="btnAddBook">ADD</button>
    <button type="button" class="btn btn-warning" id="btnUptBook">UPDATE</button>
    <button type="button" class="btn btn-danger" id="btnDelBook">DELETE</button>
</div>

</div>
<!-- Modal add Book form-->
<?php require_once "./mvc/views/blocks/addBookForm.php" ?>

