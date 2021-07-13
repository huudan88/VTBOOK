var tblBrrBooks;
// var getUrl = window.location;
// var urlBooks = getUrl.protocol + "//" + getUrl.host + "/VTBook/API_Books/viewBooks";
var urlBrrBooks = "/VTBook/API_Books/viewBrrBooks";

//Function get book data from API
function initBrrData(){
    //Show book data
    tblBrrBooks = $('#tblBorrowBooks').DataTable({
        "responsive": true,
        "processing": true,
        'ajax': {
            "url": urlBrrBooks,
            "type": "POST",
            // "dataSrc":""
            "dataSrc": function (json) {
                var return_data = new Array();
                for(var i=0;i< json.length; i++){
                  return_data.push({
                    '#':i+1,
                    'borrow_id':json[i].borrow_id,
                    'book_id': json[i].book_id,
                    'book_name'  : json[i].book_name,
                    'b_status' : json[i].b_status,
                    'user_name' : json[i].user_name,
                    'borrow_date' : json[i].borrow_date,
                    'borrow_note' : json[i].borrow_note,
                    'return_date' : json[i].return_date,
                    'return_note' : json[i].return_note
                  })
                }
                return return_data;
              }
            
            },
        rowId: 'borrow_id',
        columns:[
            { data: '#' },
            { data: 'borrow_id' },
            { data: 'book_id' },		
            { data: 'book_name' },
            { data: 'b_status' },
            { data: 'user_name' },
            { data: 'borrow_date' },
            { data: 'borrow_note' },
            { data: 'return_date' },
            { data: 'return_note' }
        ]
    });
}

//Click borrow button
// $('#tblAllVTBooks').on( 'click', 'td button', function (event) {
//     event.preventDefault();
//     // $("#addBrrBook").modal("show");
//     // alert(2);
// });

$(document).ready(function (){

    //Show borrow book table
    if ($('#tblBorrowBooks').length) {
        initBrrData();
        // console.log("test")
    };

    // //Show borrow book table
    // if ($('#addBrrBook').length) {
    //     //initBrrData();
    //     console.log("test");
    // };

    // enable to update borrow
    // $("#flexBrrBook").change(function(){
    //     //Enable field
    //     if($('#flexBrrBook').is(":checked")){
    //         $('#updateBrrBookID').prop('disabled', false)
    //         $('#addBrrUser').prop('disabled', false)
    //         $('#hiddenaddBrrUser').prop('disabled', false)
    //         $('#brrDate').prop('disabled', false)
    //         $('#brrNote').prop('disabled', false)

    //         // Set borrow ID
    //         nextId('#updateBrrBookID','BRR','borrow');

    //     }else{
    //         $('#updateBrrBookID').prop('disabled', true)
    //         $('#addBrrUser').prop('disabled', true)
    //         $('#hiddenaddBrrUser').prop('disabled', true)
    //         $('#brrDate').prop('disabled', true)
    //         $('#brrNote').prop('disabled', true)
    //     }

    // });
});