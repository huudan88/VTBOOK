<div>

<div class="table_view my-4">

    <h1 class="display-4 text-primary">All books</h1>
    <div class="table-responsive">
        <table id="tblAllVTBooks" class="table table-hover">
        <thead>
            <tr class="list-header text-primary">
            <th scope="col">#</th>
            <th scope="col">Book ID</th>
            <th scope="col">Book name</th>
            <th scope="col">Category</th>
            <th scope="col">Status</th>
            <th scope="col">Author</th>
            <th scope="col">Publisher</th>
            <th scope="col">Source</th>
            <th scope="col">Donator</th>
            <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>

        </tbody>
        </table>
    </div>
    <button type="button" class="btn btn-primary float-end" id="btnRefeshBook">Refresh</button>
    <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addUpdateBook" id="btnAddBook">ADD</button>
    
    <!-- <button type="button" class="btn btn-danger" id="btnDelBook">DELETE</button> -->
</div>

</div>
<!-- Modal add Book form-->
<?php require_once "./mvc/views/blocks/addBookForm.php" ?>

<!-- Modal update Book form-->
<?php require_once "./mvc/views/blocks/updateBookForm.php" ?>

<!-- Modal borrow Book form-->
<?php require_once "./mvc/views/blocks/addBorrowForm.php" ?>

<!-- Modal update borrow Book form -->
<?php require_once "./mvc/views/blocks/updateBrrowForm.php" ?>

