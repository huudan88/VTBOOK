<div>

<div class="table_view my-4">
    <?php
    //pre-process data
    $printedData = json_decode($data['dbBook'], true);
    //$printedData = $data['dbBook']
    $tableHeader = ['Book ID', 'Book name', 'Description'];
    $dataOrder =    ['book_id','book_name','book_description'];
    //echo $data['dbBook'];
    //print_r ($data['dbBook']);
    //print_r ($printedData);
    //Build up a table
    //tableBuildUp($tableHeader, $dataOrder, $printedData);

    //  while($row = mysqli_fetch_array($data['dbBook'])){
    //     echo $row["book_name"];
    //     echo $row["book_description"];
        
    //  }
        
    ?>

    <table class="table table-hover">
    <thead>
        <tr id="list-header" class="bg-secondary">
        <th scope="col">#</th>
        <th scope="col">First</th>
        <th scope="col">Last</th>
        <th scope="col">Handle</th>
        </tr>
    </thead>
    <tbody>
        <tr>
        <th scope="row">1</th>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
        </tr>
        <tr>
        <th scope="row">2</th>
        <td>Jacob</td>
        <td>Thornton</td>
        <td>@fat</td>
        </tr>
        <tr>
        <th scope="row">3</th>
        <td>Larry</td>
        <td>the Bird</td>
        <td>@twitter</td>
        </tr>
    </tbody>
    </table>
</div>

</div>

