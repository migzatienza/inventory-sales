<?php  
require_once("connect.php");

if(isset($_GET['updatePrice'])){
	$prodname = $_POST['prodname'];
	$newprice = $_POST['newprice'];
	$sql = mysqli_query($db, "UPDATE tbl_product_content SET product_price ='$newprice' WHERE product_name = '$prodname'");
}elseif(isset($_GET['updateQty'])){
	$prodname1 = $_POST['prodname1'];
	$newqty = $_POST['newqty'];
	$sql = mysqli_query($db, "UPDATE tbl_product_content SET product_qty = '$newqty' WHERE product_name = '$prodname1'");
}

echo json_encode(array('response' => 'success'));
?>