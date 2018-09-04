<?php  
require_once('connect.php');

$product_name = $_POST['contentname'];
$product_qty = $_POST['prodqty'];

$sql = mysqli_query($db, "SELECT * FROM tbl_product_content WHERE product_name ='$product_name'");

$rows = mysqli_fetch_array($sql);
$dbqty = $rows[3];
$dbcode = $rows[1];
$total = $product_qty + $dbqty;

$sql1 = mysqli_query($db, "UPDATE tbl_product_content SET product_qty ='$total' WHERE product_name = '$product_name'");
$sql2 = mysqli_query($db, "INSERT INTO tbl_addprod(product_code, product_name, product_qty, product_totalqty) VALUES('$dbcode', '$product_name', '$total', '$dbqty')");
echo json_encode(array('response' => 'success'));

?>