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
            if ($('#inputBookCategory option').length == 0){
                data.CategoryList.forEach(function (CategoryList) {
                    $("#inputBookCategory").append("<option value=" + CategoryList.cat_id + ">" + CategoryList.cat_name + "</option>");
                });
            }

            //select book status
            if ($('#inputBookStatus option').length == 0){
                data.BookStatusList.forEach(function (BookStatusList) {
                    $("#inputBookStatus").append("<option value=" + BookStatusList.b_status_id + ">" + BookStatusList.b_status + "</option>");
                });
            }

            //select user to update donator
            // if ($('#inputDonator option').length == 0){
            //     data.UserList.forEach(function (UserList) {
            //         $("#inputDonator").append("<option value=" + UserList.user_id + ">" + UserList.user_name + "</option>");
            //     });
            // }

            //select Author
            if ($('#inputAuthor option').length == 0){
                data.AuthorList.forEach(function (AuthorList) {
                    $("#inputAuthor").append("<option value=" + AuthorList.aut_id + ">" + AuthorList.aut_name + "</option>");
                }); 
            }

            //select publisher
            if ($('#inputPublisher option').length == 0){
                data.PublisherList.forEach(function (PublisherList) {
                    $("#inputPublisher").append("<option value=" + PublisherList.pub_id + ">" + PublisherList.pub_name + "</option>");
                });    
            }         
        }
    });

    // $("#addUpdateBook").modal("show");
});

// Update notification after add data
$("#btnSubmitBook").on('click', function () {
    alert(1);
});

//Function check donator
function checkDonator($inputDonator,$outputDonator,$noti){
    $.ajax({
        url: '/VTBook/Ajax/checkUsername',
        method: "POST",
        data: {un: $inputDonator},
        dataType: "json",
        success: function (data) {
            if(data != ''){
                $($noti).css({"color":"green"})
                $($noti).html("User name is valid");
                $($outputDonator).val(data[0].user_id);
            }else{
                $($noti).css({"color":"red"})
                $($noti).html("User name is invalid");
            }
        }
    });
}

// //Function get donator ID
// function getDonator($inputDonator,$outputDonator){
//     $.ajax({
//         url: '/VTBook/Ajax/checkUsername',
//         method: "POST",
//         data: {un: $inputDonator},
//         dataType: "json",
//         success: function (data) {
//                 $($outputDonator).val(data[0].user_id);
//                 console.log($($outputDonator).val(data[0].user_id));
//         }
//     });
// }


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

        //Click row book table to update
        $('#tblAllVTBooks').on( 'dblclick', 'tbody tr', function (event) {
            event.preventDefault();
            var book_id = tblBooks.row( this ).id();
         
            $("#updateBook").modal("show");
            $.ajax({
                url: '/VTBook/API_Books/GetInfoBaseBookID/"'+book_id+'"',
                method: "POST",
                data: {},
                dataType: "json",
                success: function (data) {
                    // console.log(data); 
                    $("#updateBookID").val(data.BookInfo[0].book_id);
                    $("#updateBookName").val(data.BookInfo[0].book_name);
                    $("#updateBookDes").val(data.BookInfo[0].book_description);
                     
                    //select category
                    if ($('#updateBookCategory option').length == 0){
                        data.CategoryList.forEach(function (CategoryList) {
                            $("#updateBookCategory").append("<option value=" + CategoryList.cat_id + ">" + CategoryList.cat_name + "</option>");
                        });
                    }
                    $("#updateBookCategory").val(data.BookInfo[0].cat_id);

                    //select status
                    if ($('#updateBookStatus option').length == 0){
                        data.BookStatusList.forEach(function (BookStatusList) {
                            $("#updateBookStatus").append("<option value=" + BookStatusList.b_status_id + ">" + BookStatusList.b_status + "</option>");
                        });
                    }
                    $("#updateBookStatus").val(data.BookInfo[0].b_status_id);
                    
                    //select status
                    if ($('#updateAuthor option').length == 0){
                        data.AuthorList.forEach(function (AuthorList) {
                            $("#updateAuthor").append("<option value=" + AuthorList.aut_id + ">" + AuthorList.aut_name + "</option>");
                        });
                    }
                    $("#updateAuthor").val(data.BookInfo[0].aut_id);

                    //select publisher
                    if ($('#updatePublisher option').length == 0){
                        data.PublisherList.forEach(function (PublisherList) {
                            $("#updatePublisher").append("<option value=" + PublisherList.pub_id + ">" + PublisherList.pub_name + "</option>");
                        });
                    }
                    $("#updatePublisher").val(data.BookInfo[0].pub_id);

                    //select donator
                    $("#updateDonator").val(data.BookInfo[0].user_name);
                    $("#hiddenUptDonator").val(data.BookInfo[0].donator_id); 


                    //select isdonate
                    if ($('#updateIsdonate option').length == 0){
                        $("#updateIsdonate").append('<option value="Y">Donate</option>');
                        $("#updateIsdonate").append('<option value="N">Borrow</option>');
                    }
                    $("#updateIsdonate").val(data.BookInfo[0].Isdonate); 
                }
            });
        } );
    }


    //Check donator in addBookForm
    $("#inputDonator").change(function(){
        var user=$(this).val();
        hiddenDonatorID = '#hiddenDonatorID';
        mesDonator = '#mesDonator';
        checkDonator(user, hiddenDonatorID, mesDonator);
    });

    //Check donator in updateBookForm
    $("#updateDonator").change(function(){
        var user=$(this).val();
        hiddenDonatorID = '#hiddenUptDonator';
        mesDonator = '#mesUptDonator';
        checkDonator(user, hiddenDonatorID, mesDonator);
    });

    //Check borrow user in updateBookForm
    $("#addBrrUser").change(function(){
        var user=$(this).val();
        hiddenDonatorID = '#hiddenaddBrrUser';
        mesDonator = '#mesaddBrrUser';
        checkDonator(user, hiddenDonatorID, mesDonator);
    });

    //Control active header menu
    $("ul li a").click(function(event) { 
    
        $("li a").removeClass("active"); //Remove any "active" class 
        $(this).addClass("active"); //Add "active" class to selected tab // 
        // $(activeTab).show(); //Fade in the active content 
    });

    //Datepicker for books
    $( "#brrDate" ).datepicker({
        "autoclose": true,
        todayHighlight: true,
        todayBtn: true
    });

});