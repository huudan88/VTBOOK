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

    <table id="tblAllVTBooks" class="table table-hover">
    <thead>
        <tr id="list-header" class="bg-secondary">
        <th scope="col">Book ID</th>
        <th scope="col">Book name</th>
        <th scope="col">Category</th>
        <th scope="col">Status</th>
        <th scope="col">Author</th>
        <th scope="col">Publisher</th>
        <th scope="col">Donate</th>
        <th scope="col">Donater</th>
        </tr>
    </thead>
    <tbody>

    </tbody>
    </table>
    <button type="button" class="btn btn-primary" id="btnRefeshData">Refresh</button>
</div>

</div>

