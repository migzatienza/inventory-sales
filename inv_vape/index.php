<?php 
$in_page = $_GET['in_page'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Cave Men 510</title>
	<!-- styles -->
	<link rel="stylesheet" href="css/materialize.min.css">
	<link rel="stylesheet" href="css/line-awesome-font-awesome.min.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/padding.css">
	<link rel="stylesheet" href="css/margin.css">
	<link rel="icon" href="images/logo.png">
</head>
<body>

	<nav class="grey darken-4">
		<div class="nav-wrapper">
			<!-- <a href="#" class="brand-logo center thin"><img src="images/logo.png" class="" style="height="80" width="100"></a> -->
			<div class="container">
				<ul class="right">
					<li><a id="timepiece"></a></li>
					<li><a class="dropdown-button" href="#!" onclick="logOut()"> Logout</a></li>
				</ul>
			</div>

		</div>
	</nav>

	<ul id="slide-out" class="sidenav sidenav-fixed z-depth-0">
		<li>
			<div class="user-view">
				<div class="background grey darken-1">
					<img src="images/bg.jpg">
				</div>
				<a href="#user">
					<p id="imagess"></p>
					
				</a>
				<a href="#name"><span class="white-text name" id="fullname"></span></a>
				<a href="#email"><span class="white-text email" id="username"></span></a>
			</div>
		</li>
		<li><a class="subheader">Functions</a></li>
		<li><a href="index.php?in_page=dashboard"><i class="fa fa-dashboard fa-icon"></i>Dashboard</a></li>
		<li><a href="index.php?in_page=inventory"><i class="fa fa-archive fa-icon"></i>Inventory</a></li>
		<li><a href="index.php?in_page=addstock"><i class="fa fa-plus-square fa-icon"></i>Add New Item</a></li>
		<li><a href="index.php?in_page=addqty"><i class="fa fa-plus-square fa-icon"></i>Add Quantity</a></li>
		<li><a href="index.php?in_page=deductqty"><i class="fa fa-exchange fa-icon"></i>Purchase</a></li>
		<li><a href="index.php?in_page=editItem"><i class="fa fa-edit fa-icon"></i>Edit Item</a></li>
		<li><a href="index.php?in_page=logs"><i class="fa fa-list-alt fa-icon"></i>Sales Logs</a></li>
		<!-- <li><div class="divider"></div></li>
		<li><a class="subheader">Settings</a></li>
		<li><a class="waves-effect" href="#!" onclick="logOut()"><i class="fa fa-power-off fa-icon"></i> Logout</a></li> -->
	</ul>
	

	<main>
		<?php 
		if ($in_page == 'dashboard') {
			include('dashboard.php');
		} elseif ($in_page == 'inventory') {
			include('inventory.php');
		} elseif ($in_page == 'addstock'){
			include('additem.php');
		} elseif ($in_page == 'addqty'){
			include('addqty.php');
		} elseif ($in_page == 'deductqty'){
			include('deductqty.php');
		} elseif($in_page =='juices'){
			include('juices.php');
		}elseif($in_page =='editItem'){
			include('edititem.php');
		}elseif($in_page =='logs'){
			include('logs.php');
		}
		?>
	</main>

	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/materialize.min.js"></script>
	<script src="js/initial.js"></script>
	<script src="js/time.js"></script>
	<script src="js/Chart.bundle.min.js"></script>
	<script src="js/inventory.js"></script>
	<script src="js/authentication.js"></script>
	
</body>
</html>