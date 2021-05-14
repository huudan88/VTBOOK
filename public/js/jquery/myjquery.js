var table;
var urlBooks="../vtbook/API_Books";
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
    table = $('#tblAllVTBooks').DataTable({
        responsive: true,
        "processing": true,
        'ajax': {

            "url": urlBooks,
            "type": "POST",
            "dataSrc": ''
            },
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
    initBookData();
    $("#list-header").on({
        mouseenter: function(){
            $(this).css("background-color","lightblue");
        },
        // mouseleave: function(){
        //     $(this).css("background-color","lightgray");
        // }
    });
    $("#btnRefeshData").on("click", function(){
		//alert("reload data...")
		// table.ajax.reload(null, false);
        table.reload(null, false);
	});
});