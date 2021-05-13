<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>VT Books</title>

    <!-- Link CSS Bootstrap -->
    <link rel="stylesheet" type="text/css" href="/VTBOOK/public/css/bootstrap/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="/VTBOOK/public/css/style/mystyle.css">

    <!-- Link Datatables -->
    <link rel="stylesheet" type="text/css" href="/VTBOOK/public/dataTables/datatables.min.css"/>
    <script type="text/javascript" src="/VTBOOK/public/dataTables/datatables.min.js"></script>
    
    <!-- js library -->
    <script type="text/javascript" src="/VTBOOK/public/js/bootstrap/bootstrap.js"></script> 
    <script type="text/javascript" src="/VTBOOK/public/js/jquery/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="/VTBOOK/public/js/jquery/myjquery.js"></script>
</head>
<body>
    <div  class = "container">
        <!-- Header--> 
		<?php require_once "blocks/header.php" ?>

		<div class="contents">
			<div class="detail_content">
				<?php require_once "blocks/content.php" ?>
			</div>
		</div>

		<!-- Footer-->
		<?php require_once "blocks/footer.php" ?>
		

    </div>

</div>
</body>
</html>