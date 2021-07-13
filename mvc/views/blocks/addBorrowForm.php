<!-- Modal borrow Book-->
<div class="modal fade" id="addBrrBook" tabindex="-1" aria-labelledby="addBrrBooklbl" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="addBrrBooklbl">Borrow</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <!-- Form add/update Book-->
            <form class="row g-3" action="/VTBook/Borrow/insertBrrBook"  method="post">
                <div class="col-12 d-flex flex-row-reverse">
                    <label class="form-label text-danger">(*) The field must not be blank</label>
                </div>

                <!-- Borrow switch -->
                <!-- <div class="col-12">
                    <div class="form-check form-switch">
                        <input class="form-check-input" type="checkbox" id="flexBrrBook" />
                        <label class="form-check-label" for="flexBrrBook"
                            >Switch to update borrow</label>
                    </div>
                </div> -->
                <div class="col-md-4">
                    <label for="brrBookID" class="form-label">Book ID</label>
                    <input type="text" class="form-control" name="brrBookID" id="brrBookID" readonly="true">
                </div>
                <div class="col-md-8">
                    <label for="brrBookName" class="form-label">Book name</label>
                    <input type="text" class="form-control" name="brrBookName" id="brrBookName" readonly="true"></textarea>
                </div>
                <div class="col-md-4">
                    <label for="addBrrID" class="form-label">Borrow ID (*)</label>
                    <input type="text" class="form-control" name="BorrowID" id="addBrrID" readonly="true">
                </div>
                <div class="col-md-4">
                    <label for="addBrrUser" class="form-label">Borrower (*)</label>
                    <input type="text" class="form-control" name="BrrUserDisplay" id="addBrrUser">
                    <input type="hidden" class="form-control" name="BrrUser" id="hiddenaddBrrUser">
                    <div id="mesaddBrrUser"></div>
                </div>
                <div class="col-md-4">
                    <label for="brrDate" class="form-label">Borrow date (*)</label>
                    <input type="text" class="form-control" name="brrDate" id="brrDate">
                </div>
                <div class="col-12">
                    <label for="brrNote" class="form-label">Borrow note</label>
                    <textarea class="form-control" rows="3" name="brrNote" id="brrNote"></textarea>
                </div>


                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                  <button type="submit" class="btn btn-primary" name="btnSubmitAddBrr" id="btnSubAddBrr">Submit</button>
                </div>
            </form>
        </div>
        </div>
    </div>
</div>