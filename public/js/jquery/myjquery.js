var tblBooks;
var urlBooks="http://" + window.location.hostname + "/VTBook/API_Books/viewBooks";
function initBookData(){
    //Show book data
    //Data from an URL ?
    // $.post(urlBooks, function(responseData) {
    //     //alert(responseData)
    //     modifyData = JSON.parse(responseData)
    //     table = $('#tblAllVTBooks').DataTable({
    //         responsive: true,
    //         "processing": true,
    //         'ajax': {

    //             "url": urlBooks,
    //             "type": "POST",
    //             "dataSrc": ''
    //             },
    //         columns:[
    //             { data: 'book_id' },		
    //             { data: 'book_name' },
    //             { data: 'cat_name' },
    //             { data: 'b_status' },
    //             { data: 'aut_name' },
    //             { data: 'pub_name' },
    //             { data: 'Isdonate' },
    //             { data: 'user_name' }
    //         ]
    //     });
    // }).fail(function(){
    //     alert ("Cannot get data from URL");
    // });
    tblBooks = $('#tblAllVTBooks').DataTable({
        "responsive": true,
        "processing": true,
        'ajax': {
            "url": urlBooks,
            "type": "POST",
            "dataSrc": ""
            },
        rowId: 'book_id',
        columns:[
            { data: 'book_id' },		
            { data: 'book_name' },
            { data: 'cat_name' },
            { data: 'b_status' },
            { data: 'aut_name' },
            { data: 'pub_name' },
            { data: 'Isdonate' },
            { data: 'user_name' }
        ]
    });
}

$(document).ready(function (){
    
    //Show book table
    if ($('#tblAllVTBooks').length) {
        initBookData();

        //Mouse event for header of book table
        $("#list-header").on({
            mouseenter: function(){
                $(this).css("background-color","lightwhite");
            },
            mouseleave: function(){
                $(this).css("background-color","lightgray");
            }
        });
        //refeshBook table
        $("#btnRefeshBook").on("click", function(){
            //alert("reload data...")
            tblBooks.ajax.reload(null, false);
            //table.reload(null, false);
        });

        //Click row table
        $('#tblAllVTBooks').on( 'click', 'tr', function () {
            var id = tblBooks.row( this ).id();
         
            alert( 'Clicked row id '+id );
        } );
    }
    
});