<?php  
require_once("connect.php");

if(isset($_GET['deleteProducts'])){
	$id = $_POST['id'];
	$sql = mysqli_query($db, "DELETE from tbl_products WHERE id = '$id'");
}else if(isset($_GET['deleteContent'])){
	$id = $_POST['id'];
	$sql1 = mysqli_query($db, "DELETE from tbl_product_content WHERE product_unique_id = '$id'");
}

echo json_encode(array('response' => 'Successfully Deleted'));

?>