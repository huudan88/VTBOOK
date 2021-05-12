<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>VT Books</title>

    <!-- Link CSS Bootstrap -->
    <link rel="stylesheet" type="text/css" href="/VTBooksNew/public/css/bootstrap/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="/VTBooksNew/public/css/style/dcv_style.css">
</head>
<body>
    <div class="wrapper">
        <!-- Header-->
		<?php require_once "includes/header.php" ?>

		<div class="side_bar">
			<?php require_once "includes/menu_bar.php" ?>
		</div>
		<div class="contents">
			<div class="detail_content">
				<?php require_once "includes/content.php" ?>
			</div>
		</div>
		<div class="footer">
			<?php require_once "includes/footer.php" ?>
		</div>

    </div>
    <!-- js library -->
    <script type="text/javascript" src="/VTBooksNew/public/js/dcv_js.js"></script>
    <script type="text/javascript" src="/VTBooksNew/public/js/bootstrap/bootstrap.js"></script> 
    <script type="text/javascript" src="/VTBooksNew/public/js/jquery/jquery-3.6.0.js"></script>
</body>
</html>