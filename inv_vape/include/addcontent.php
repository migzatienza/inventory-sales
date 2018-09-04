<?php  
require_once("connect.php");

$product_name = $_POST['product_name'];
$content_name = $_POST['content_name'];
$prodprice = $_POST['prodprice'];
$prodquantity = $_POST['prodquantity'];

if($product_name == 'Atomizers(Legit)'){
	$sql = mysqli_query($db, "INSERT INTO tbl_product_content(product_code, product_name, product_price, product_qty) VALUES('111', '$content_name', '$prodprice', '$prodquantity')");
}elseif($product_name == 'Atomizers(Clone)'){
	$sql = mysqli_query($db, "INSERT INTO tbl_product_content(product_code, product_name, product_price, product_qty) VALUES('112', '$content_name', '$prodprice', '$prodquantity')");
}elseif($product_name == 'Mods(Variable)'){
	$sql = mysqli_query($db, "INSERT INTO tbl_product_content(product_code, product_name, product_price, product_qty) VALUES('113', '$content_name', '$prodprice', '$prodquantity')");
}elseif($product_name == 'Batteries'){
	$sql = mysqli_query($db, "INSERT INTO tbl_product_content(product_code, product_name, product_price, product_qty) VALUES('114', '$content_name', '$prodprice', '$prodquantity')");
}elseif($product_name == 'Chargers'){
	$sql = mysqli_query($db, "INSERT INTO tbl_product_content(product_code, product_name, product_price, product_qty) VALUES('115', '$content_name', '$prodprice', '$prodquantity')");
}elseif($product_name == 'Mods(Full Mech)'){
	$sql = mysqli_query($db, "INSERT INTO tbl_product_content(product_code, product_name, product_price, product_qty) VALUES('116', '$content_name', '$prodprice', '$prodquantity')");
}elseif($product_name == 'Wires'){
	$sql = mysqli_query($db, "INSERT INTO tbl_product_content(product_code, product_name, product_price, product_qty) VALUES('117', '$content_name', '$prodprice', '$prodquantity')");
}elseif($product_name == 'Battery Accessories'){
	$sql = mysqli_query($db, "INSERT INTO tbl_product_content(product_code, product_name, product_price, product_qty) VALUES('118', '$content_name', '$prodprice', '$prodquantity')");
}elseif($product_name == 'Drip Tips'){
	$sql = mysqli_query($db, "INSERT INTO tbl_product_content(product_code, product_name, product_price, product_qty) VALUES('119', '$content_name', '$prodprice', '$prodquantity')");
}elseif($product_name == 'Coiling Accessories'){
	$sql = mysqli_query($db, "INSERT INTO tbl_product_content(product_code, product_name, product_price, product_qty) VALUES('120', '$content_name', '$prodprice', '$prodquantity')");
}elseif($product_name == 'Accessories/Others'){
	$sql = mysqli_query($db, "INSERT INTO tbl_product_content(product_code, product_name, product_price, product_qty) VALUES('121', '$content_name', '$prodprice', '$prodquantity')");
}elseif($product_name == 'Kits'){
	$sql = mysqli_query($db, "INSERT INTO tbl_product_content(product_code, product_name, product_price, product_qty) VALUES('122', '$content_name', '$prodprice', '$prodquantity')");
}elseif($product_name == 'Juice'){
	$sql = mysqli_query($db, "INSERT INTO tbl_product_content(product_code, product_name, product_price, product_qty) VALUES('123', '$content_name', '$prodprice', '$prodquantity')");
}

echo json_encode(array('response' => 'success'));

?>