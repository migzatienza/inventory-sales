<?php  
require_once("connect.php");
//global array
$list = array();
//
if(isset($_GET['showProducts'])){
	$id = $_GET['id'];
	$sql = mysqli_query($db, "SELECT * FROM tbl_product_content WHERE product_code = '$id'");
}elseif(isset($_GET['fetchProducts'])){
	$sql = mysqli_query($db, "SELECT * FROM tbl_products ORDER BY product_name ASC");
}elseif(isset($_GET['fetchDashboard'])){
	$sql = mysqli_query($db, "SELECT * FROM tbl_addprod ORDER BY id DESC LIMIT 5");
}elseif(isset($_GET['fetchPurchased'])){
	$sql = mysqli_query($db, "SELECT * FROM tbl_purchase WHERE DATE(timepurchased) = DATE(NOW()) AND remarks='Sold' ORDER BY id DESC LIMIT 5 ");
}elseif(isset($_GET['fetchLogs'])){
	$sql = mysqli_query($db, "SELECT * FROM tbl_purchase ORDER BY id DESC");
}


// global while
while($rows = mysqli_fetch_assoc($sql)){
	$list[] = $rows;
}
echo json_encode($list);
?>
