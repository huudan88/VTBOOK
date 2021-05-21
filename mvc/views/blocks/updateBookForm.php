<!-- Modal update Book-->
<div class="modal fade" id="updateBook" tabindex="-1" aria-labelledby="updateBooklbl" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="updateBooklbl">Update book</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <!-- Form add/update Book-->
            <form class="row g-3" action="/VTBook/Book/updateBook"  method="post">
                <div class="col-md-3">
                    <label for="updateBookID" class="form-label">Book ID</label>
                    <input type="text" class="form-control" name="BookID" id="updateBookID" readonly="true">
                </div>
                <div class="col-md-9">
                    <label for="updateBookName" class="form-label">Book name</label>
                    <input type="text" class="form-control" name="BookName" id="updateBookName">
                </div>

                <div class="col-12">
                    <label for="updateBookDes" class="form-label">Book description</label>
                    <textarea class="form-control" rows="3" name="BookDes" id="updateBookDes"></textarea>
                </div>

                <div class="col-md-4">
                    <label for="updateBookCategory" class="form-label">Book category</label>
                    <select name="BookCate" id="updateBookCategory" class="form-select">
                    <!-- <option selected>Choose...</option> -->
                    </select>
                </div>
                <div class="col-md-4">
                    <label for="updateBookStatus" class="form-label">Status</label>
                    <select name="BookStatus" id="updateBookStatus" class="form-select">
                    <!-- <option selected>Choose...</option>
                    <option>...</option> -->
                    </select>
                </div>
                <div class="col-md-4">
                    <label for="updateAuthor" class="form-label">Author</label>
                    <select name="Author" id="updateAuthor" class="form-select">
                    <!-- <option selected>Choose...</option>
                    <option>...</option> -->
                    </select>
                </div>

                <div class="col-md-4">
                    <label for="updatePublisher" class="form-label">Publisher</label>
                    <select name="Publisher" id="updatePublisher" class="form-select">
                    <!-- <option selected>Choose...</option>
                    <option>...</option> -->
                    </select>
                </div>
                <div class="col-md-4">
                    <label for="updateDonator" class="form-label">Donator</label>
                    <input type="text" class="form-control" name="DonatorDisplay" id="updateDonator">
                    <input type="hidden" class="form-control" name="Donator" id="hiddenUptDonator">
                    <div id="mesUptDonator"></div>
                </div>
                <div class="col-md-4">
                    <label for="updateIsdonate" class="form-label">Donate or borrow</label>
                    <select name="Isdonate" id="updateIsdonate" class="form-select">
                    <!-- <option selected value="Y">Donate</option>
                    <option value="N">Borrow</option> -->
                    </select>
                </div>

                <!-- Borrow switch -->
                <div class="col-12">
                    <div class="form-check form-switch">
                        <input class="form-check-input" type="checkbox" id="flexBrrBook" />
                        <label class="form-check-label" for="flexBrrBook"
                            >Swich to update borrow</label>
                    </div>
                </div>
                <div class="col-md-4">
                    <label for="updateBrrBookID" class="form-label">Borrow ID</label>
                    <input type="text" class="form-control" name="BorrowID" id="updateBrrBookID" readonly="true" disabled>
                </div>
                <div class="col-md-4">
                    <label for="addBrrUser" class="form-label">Borrower</label>
                    <input type="text" class="form-control" name="BrrUserDisplay" id="addBrrUser" disabled>
                    <input type="hidden" class="form-control" name="BrrUser" id="hiddenaddBrrUser" disabled>
                    <div id="mesaddBrrUser"></div>
                </div>
                <div class="col-md-4">
                    <label for="brrDate" class="form-label">Borrow date</label>
                    <input type="text" class="form-control" name="brrDate" id="brrDate" disabled>
                </div>
                <div class="col-12">
                    <label for="brrNote" class="form-label">Borrow note</label>
                    <textarea class="form-control" rows="3" name="brrNote" id="brrNote" disabled></textarea>
                </div>


                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                  <button type="submit" class="btn btn-primary" name="btnSubmitUpdateBook" id="btnSubmitBook">Submit</button>
                </div>
            </form>
        </div>
        </div>
    </div>
</div>