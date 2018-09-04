<?php  
session_start();
require_once('connect.php');

$list = array();
$username = $_POST['username'];
$password = $_POST['password'];
$sql = mysqli_query($db, "SELECT * FROM tbl_login WHERE username = '$username' AND password = '$password'");
if(mysqli_num_rows($sql) > 0){
	while($rows = mysqli_fetch_assoc($sql)){
		$list = $rows;
		$_SESSION['user_accounts'] = $rows;
	}
	echo json_encode($list);
}else{
	echo json_encode(array('response' => 'no account'));	
}

?>