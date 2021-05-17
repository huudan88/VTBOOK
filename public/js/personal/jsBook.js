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
            $("#emp_stt").html("");
            data.empStt.forEach(function (empStt) {
                $("#emp_stt").append("<option value=" + empStt.id + ">" + empStt.subCatName + "</option>");
            });

            $("#emp_position").html('<option value="" selected>Select a position</option>');
            data.empPosition.forEach(function (empPosCat) {
                $("#emp_position").append("<option value=" + empPosCat.id + ">" + empPosCat.subCatName + "</option>");
            });

            $("#emp_grade").html('<option value="" selected>Select a grade</option>');
            data.empGrade.forEach(function (empGrade) {
                $("#emp_grade").append("<option value=" + empGrade.id + ">" + empGrade.subCatName + "</option>");
            });

            $("#emp_dept").html('<option value="" selected>Select a department</option>');
            data.dept.forEach(function (dept) {
                $("#emp_dept").append("<option value=" + dept.id + ">" + dept.deptName + " - " + dept.partName + "</option>");
            });
            $("#alloc_proj").html('<option value="" selected>Select a project</option>');
            data.projLi.forEach(function (projLi) {
                $("#alloc_proj").append("<option value=" + projLi.id + ">" + projLi.projName + "</option>");
            });
            $("#alloc_role").html('<option value="" selected>Select a role</option>');
            data.allocRole.forEach(function (allocRole) {
                $("#alloc_role").append("<option value=" + allocRole.id + ">" + allocRole.roleName + "</option>");
            });
            $("#cert").html("");
            data.certList.forEach(function (certList) {
                $("#cert").append("<option value=" + certList.id + ">" + certList.certName + "</option>");
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