<!-- Modal add Book-->
<div class="modal fade" id="addUpdateBook" tabindex="-1" aria-labelledby="addUpdateBooklbl" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="addUpdateBooklbl">Add new book</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <!-- Form add Book-->
            <form class="row g-3" action="/VTBook/Book/insertBook"  method="post">
                <!-- BookID switch -->
                <div class="col-md-6">
                    <div class="form-check form-switch">
                        <input class="form-check-input" type="checkbox" id="flexAddBook" />
                        <label class="form-check-label" for="flexAddBook"
                            >Switch to edit BookID</label>
                    </div>
                </div>
                <div class="col-md-6 d-flex flex-row-reverse">
                    <label class="form-label text-danger">(*) The field must not be blank</label>
                </div>
                <div class="col-md-4">
                    <label for="inputBookID" class="form-label">Book ID (*)</label>
                    <input type="text" class="form-control" name="BookID" id="inputBookID" readonly="true">   
                </div>
                <div class="col-md-8">
                    <label for="inputBookName" class="form-label">Book name (*)</label>
                    <input type="text" class="form-control" name="BookName" id="inputBookName">
                </div>

                <div class="col-12">
                    <label for="inputBookDes" class="form-label">Book description</label>
                    <textarea class="form-control" rows="3" name="BookDes" id="inputBookDes"></textarea>
                </div>

                <div class="col-md-4">
                    <label for="inputBookCategory" class="form-label">Book category</label>
                    <select name="BookCate" id="inputBookCategory" class="form-select">
                    <!-- <option selected>Choose...</option> -->
                    </select>
                </div>
                <div class="col-md-4">
                    <label for="inputBookStatus" class="form-label">Status</label>
                    <select name="BookStatus" id="inputBookStatus" class="form-select">
                    <!-- <option selected>Choose...</option>
                    <option>...</option> -->
                    </select>
                </div>
                <div class="col-md-4">
                    <label for="inputAuthor" class="form-label">Author</label>
                    <select name="Author" id="inputAuthor" class="form-select">
                    <!-- <option selected>Choose...</option>
                    <option>...</option> -->
                    </select>
                </div>

                <div class="col-md-4">
                    <label for="inputPublisher" class="form-label">Publisher</label>
                    <select name="Publisher" id="inputPublisher" class="form-select">
                    <!-- <option selected>Choose...</option>
                    <option>...</option> -->
                    </select>
                </div>
                <div class="col-md-4">
                    <label for="inputDonator" class="form-label">Donator</label>
                    <input type="text" class="form-control" name="DonatorDisplay" id="inputDonator">
                    <input type="hidden" class="form-control" name="Donator" id="hiddenDonatorID">
                    <div id="mesDonator"></div>
                </div>
                <div class="col-md-4">
                    <label for="Isdonate" class="form-label">Donate or borrow</label>
                    <select name="Isdonate" id="Isdonate" class="form-select">
                    <option selected value="Y">Donate</option>
                    <option value="N">Borrow</option>
                    </select>
                </div>
                
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                  <button type="submit" class="btn btn-primary" name="btnSubmitBook" id="btnSubmitBook">Submit</button>
                </div>
            </form>
        </div>
        </div>
    </div>
</div>