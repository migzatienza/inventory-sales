<?php  
header("Allow-access-origin:*");
header("Content-type:application-json");
require_once('connect.php');

$sql = mysqli_query($db, "SELECT SUM(product_price*product_qty) AS total, DATE_FORMAT(timepurchased, '%M %D %Y') AS timepurchased FROM tbl_purchase GROUP BY DATE(timepurchased) ORDER BY DATE_FORMAT(timepurchased, '%D') desc");


$list = array();
while($rows = mysqli_fetch_assoc($sql)){
	$list[] = $rows;

}
echo json_encode($list);

?>