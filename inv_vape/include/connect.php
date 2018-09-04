<?php 
header('Access-Control-Allow-Origin: *');
header('content-type: application-json');
?>
<?php 
define("SERVER", "localhost");
define("USERNAME", "root");
define("PASSWORD", "");
define("DATABASE", "db_vape");

$db = mysqli_connect(SERVER, USERNAME, PASSWORD, DATABASE);
?>