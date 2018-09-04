<?php  
require_once('connect.php');
$item_name = $_POST['item_name'];

$sql = mysqli_query($db, "SELECT * FROM tbl_products ORDER BY id DESC LIMIT 1");

$rows = mysqli_fetch_array($sql);
$dbcode = $rows[1];
$newcode = $dbcode+1;

$sql1 = mysqli_query($db, "INSERT INTO tbl_products(product_code, product_name) VALUES('$newcode', '$item_name')");

echo json_encode(array('response' => 'success'));
?>