<?php  
require_once('connect.php');

$record_per_page = 5;
$page = '';
$output = '';

if(isset($_POST['page'])){
	$page = $_POST['page'];

}else{
	$page=1;
}

$start_from= ($page - 1) * $record_per_page;


$query = "SELECT * FROM tbl_product_content ORDER BY product_unique_id DESC LIMIT $start_from, $record_per_page";

$result = mysqli_query($db, $query);
$output .= "<table class='mt4'>
<thead>
<tr>
<th>Name</th>
<th>Quantity</th>
<th>Price</th>
</tr>
</thead>
";

while($row = mysqli_fetch_array($result)){
	$output .= '
	<tbody>
	<tr>
	<td>'.$row["product_name"].'</td>
	<td>'.$row["product_qty"].'</td>
	<td>&#8369;'.$row["product_price"].'</td>
	</tr>
	</tbody>
	';
}

$output .= '</table><br /><div align="center">';  
 $page_query = "SELECT * FROM tbl_product_content ORDER BY product_unique_id DESC";  
 $page_result = mysqli_query($db, $page_query);  
 $total_records = mysqli_num_rows($page_result);  
 $total_pages = ceil($total_records/$record_per_page);  
 for($i=1; $i<=$total_pages; $i++)  
 {  
      $output .= "<span class='pagination_link' style='cursor:pointer; padding:6px; border:1px solid #ccc;' id='".$i."'>".$i."</span>";  
 }  
 $output .= '</div><br /><br />';  
 echo $output;  
 ?> 