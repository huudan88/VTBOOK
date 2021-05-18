var tblBooks;
// var getUrl = window.location;
// var urlBooks = getUrl.protocol + "//" + getUrl.host + "/VTBook/API_Books/viewBooks";
var urlBooks = "/VTBook/API_Books/viewBooks";

//Function get book data from API
function initBookData(){
    //Show book data
    tblBooks = $('#tblAllVTBooks').DataTable({
        "responsive": true,
        "processing": true,
        'ajax': {
            "url": urlBooks,
            "type": "POST",
            // "dataSrc":""
            "dataSrc": function (json) {
                var return_data = new Array();
                for(var i=0;i< json.length; i++){
                  return_data.push({
                    '#':i+1,
                    'book_id': json[i].book_id,
                    'book_name'  : json[i].book_name,
                    'cat_name' : json[i].cat_name,
                    'b_status' : json[i].b_status,
                    'aut_name' : json[i].aut_name,
                    'pub_name' : json[i].pub_name,
                    'Isdonate' : json[i].Isdonate,
                    'user_name' : json[i].user_name
                  })
                }
                return return_data;
              }
            
            },
        rowId: 'book_id',
        columns:[
            { data: '#' },
            { data: 'book_id' },		
            { data: 'book_name' },
            { data: 'cat_name' },
            { data: 'b_status' },
            { data: 'aut_name' },
            { data: 'pub_name' },
            { data: 'Isdonate', render: function(data){
                    if (data === 'Y'){
                        return 'Donate';}
                    else{
                        return 'Borrow';
                    }
                } 
            },
            { data: 'user_name' }
        ]
    });
}

// Function get data to addBookForm
$("#btnAddBook").on('click', function (event) {
    event.preventDefault();
    $.ajax({
        url: "/VTBook/API_Books/getInfoBooks",
        method: "POST",
        data: {},
        dataType: "json",
        success: function (data) {
            //select category
            $("#inputBookCategory").html("");
            data.CategoryList.forEach(function (CategoryList) {
                $("#inputBookCategory").append("<option value=" + CategoryList.cat_id + ">" + CategoryList.cat_name + "</option>");
            });
            
            //select book status
            $("#inputBookStatus").html("");
            data.BookStatusList.forEach(function (BookStatusList) {
                $("#inputBookStatus").append("<option value=" + BookStatusList.b_status_id + ">" + BookStatusList.b_status + "</option>");
            });

            //select user to update donator
            $("#inputDonator").html("");
            data.UserList.forEach(function (UserList) {
                $("#inputDonator").append("<option value=" + UserList.user_id + ">" + UserList.user_name + "</option>");
            });

            //select Author
            $("#inputAuthor").html("");
            data.AuthorList.forEach(function (AuthorList) {
                $("#inputAuthor").append("<option value=" + AuthorList.aut_id + ">" + AuthorList.aut_name + "</option>");
            }); 
            
            //select publisher
            $("#inputPublisher").html("");
            data.PublisherList.forEach(function (PublisherList) {
                $("#inputPublisher").append("<option value=" + PublisherList.pub_id + ">" + PublisherList.pub_name + "</option>");
            });             
        }
    });

    // $("#addUpdateBook").modal("show");
});

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
        $('#tblAllVTBooks').on( 'click', 'tbody tr', function () {
            var id = tblBooks.row( this ).id();
         
            alert( 'Clicked row id '+id );
        } );
    }
    
});