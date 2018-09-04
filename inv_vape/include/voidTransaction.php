<?php  
require_once('connect.php');

$id = $_POST['id'];

$sql = $db->query("SELECT * FROM tbl_purchase WHERE id = '$id'");
$rows = mysqli_fetch_array($sql);
$dbqty = $rows[3];
$dbname = $rows[1];
$sql1 = $db->query("SELECT * FROM tbl_product_content WHERE product_name ='$dbname'");
$rows1 = mysqli_fetch_array($sql1);
$dbqty1 = $rows1[3];
$plus = $dbqty + $dbqty1;
$sql2 = $db->query("UPDATE tbl_product_content SET product_qty = '$plus' WHERE product_name ='$dbname' ");
$sql3 = $db->query("UPDATE tbl_purchase SET remarks='Voided' WHERE id ='$id'");

echo json_encode(array('response' => 'success'));
?>