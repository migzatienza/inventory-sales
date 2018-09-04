<?php  
require_once('connect.php');

if(isset($_GET['fetchStockCount'])){
	$sql = mysqli_query($db, "SELECT SUM(product_qty) AS product_qty FROM tbl_product_content");
}elseif(isset($_GET['totalSales'])){
	$sql = mysqli_query($db, "SELECT SUM(product_price * product_qty) AS total FROM tbl_purchase WHERE DATE(timepurchased) = DATE(NOW()) AND remarks ='Sold'");
}
$result = mysqli_fetch_assoc($sql);
$data = $result;

echo json_encode($data);
?>