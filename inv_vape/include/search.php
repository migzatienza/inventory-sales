<?php  
require_once('connect.php');

$search = $_GET['searchProducts'];

$sql = mysqli_query($db, "SELECT * FROM tbl_products WHERE product_name LIKE '%$search%'");

$array= array();

if(mysqli_num_rows($sql) > 0){
	while($rows = mysqli_fetch_assoc($sql)){
		$array[]= $rows;
	}
	echo json_encode($array);

}
else{
	echo json_encode(array("Status" => "No Result"));
}
?>