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
    </div>
    <button type="button" class="btn btn-primary float-end" id="btnRefeshBook">Refresh</button>
    <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addUpdateBook" id="btnAddBook">ADD</button>
    <button type="button" class="btn btn-warning" id="btnUptBook">UPDATE</button>
    <button type="button" class="btn btn-danger" id="btnDelBook">DELETE</button>

    <!-- Modal add/update Book-->
    <div class="modal fade" id="addUpdateBook" tabindex="-1" aria-labelledby="addUpdateBooklbl" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="addUpdateBooklbl">Book</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <!-- Form add/update Book-->
            <form class="row g-3" action="../Book/insertBook"  method="post">
                <div class="col-md-3">
                    <label for="inputBookID" class="form-label">Book ID</label>
                    <input type="text" class="form-control" name="BookID" id="inputBookID">
                </div>
                <div class="col-md-9">
                    <label for="inputBookName" class="form-label">Book name</label>
                    <input type="text" class="form-control" name="BookName" id="inputBookName">
                </div>

                <div class="col-12">
                    <label for="inputBookDes" class="form-label">Book description</label>
                    <textarea class="form-control" rows="3" name="BookDes" id="inputBookDes"></textarea>
                </div>

                <div class="col-md-4">
                    <label for="inputBookCategory" class="form-label">Book category</label>
                    <select name="BookCate" id="inputBookCategory" class="form-select">
                    <option selected>Choose...</option>
                    <option>...</option>
                    </select>
                </div>
                <div class="col-md-4">
                    <label for="inputBookStatus" class="form-label">Status</label>
                    <select name="BookStatus" id="inputBookStatus" class="form-select">
                    <option selected>Choose...</option>
                    <option>...</option>
                    </select>
                </div>
                <div class="col-md-4">
                    <label for="inputAuthor" class="form-label">Author</label>
                    <select name="Author" id="inputAuthor" class="form-select">
                    <option selected>Choose...</option>
                    <option>...</option>
                    </select>
                </div>

                <div class="col-md-4">
                    <label for="inputPublisher" class="form-label">Publisher</label>
                    <select name="Publisher" id="inputPublisher" class="form-select">
                    <option selected>Choose...</option>
                    <option>...</option>
                    </select>
                </div>
                <div class="col-md-4">
                    <label for="inputDonater" class="form-label">Donater</label>
                    <select name="Donater" id="inputDonater" class="form-select">
                    <option selected>Choose...</option>
                    <option>...</option>
                    </select>
                </div>
                <div class="col-md-4">
                    <label for="flexRadioDonate" name="Isdonate" class="form-label">Donate or borrow</label>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="flexRadioDonate" id="flexRadioDonate1">
                        <label class="form-check-label" for="flexRadioDonate1">
                            Donate
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="flexRadioDonate" id="flexRadioDonate2" checked>
                        <label class="form-check-label" for="flexRadioDonate1">
                            Borrow
                        </label>
                    </div>
                </div>
                <button type="button" class="btn btn-primary" name="btnSubmitBook">Test</button>
            </form>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Submit</button>
        </div>
        </div>
    </div>
    </div>

</div>

</div>

