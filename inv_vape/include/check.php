<?php  
require_once("connect.php");
if(isset($_POST['content_name'])){
	$content_name = mysqli_real_escape_string($db, $_POST["content_name"]);
	$sql = "SELECT * FROM tbl_product_content WHERE product_name = '".$content_name."'";
	$result = mysqli_query($db, $sql);
	echo mysqli_num_rows($result);	
}

?>