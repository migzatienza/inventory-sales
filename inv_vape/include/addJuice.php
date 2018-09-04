<?php  
require_once("connect.php");

$juice_name = $_POST['juice_name'];

$sql=mysqli_query($db, "SELECT * FROM tbl_juices ORDER BY id DESC LIMIT 1");
$rows =mysqli_fetch_array($sql);
$dbcode = $rows[1];
$newcode = $dbcode + 1;

$sql1 = mysqli_query($db, "INSERT INTO tbl_juices(product_code, product_name) VALUES('$newcode', '$juice_name')");

echo json_encode(array('response' => 'success'));

?>