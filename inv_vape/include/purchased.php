<?php  
require_once('connect.php');
$product_name = $_POST['product_name'];
$product_qty = $_POST['product_qty'];
$product_dsc = $_POST['product_dsc'];
$sql = mysqli_query($db, "SELECT * FROM tbl_product_content WHERE product_name = '$product_name'");
$rows = mysqli_fetch_array($sql);
$dbqty = $rows['3'];
$dbprice = $rows['4'];
$minus = $dbqty - $product_qty;
$discount = $dbprice - $product_dsc;

if($dbqty == 0){
	return false;
}else{
	$sql1 = mysqli_query($db, "UPDATE tbl_product_content SET product_qty = '$minus' WHERE product_name ='$product_name'");
	$sql2 = mysqli_query($db, "INSERT tbl_purchase(product_name, product_price, product_qty, product_totalqty, remarks) VALUES('$product_name', '$discount', '$product_qty', '$dbqty', 'Sold') ");
	echo json_encode(array('response' => 'Success'));
}





?>