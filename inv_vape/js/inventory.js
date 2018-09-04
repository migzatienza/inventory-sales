loadProducts();
setInterval(function(){

}, 3000);
function loadProducts(){
	$.ajax({
		url:"http://localhost/inv_vape/include/fetchProducts.php?fetchProducts",
		method:"GET",
		dataType:"JSON",
		success:function(data){
			body= "";
			for(var i=0; i<data.length; i++){
				body+='<tr>';
				body+='<td><a class="waves-effect waves-light modal-trigger" href="#modal1" onclick="loadContent(\''+data[i].product_code+ '\')"><i class="fa fa-eye fa-2x"></i></a></td>';
				body+='<td>'+data[i].product_name+'</td>';
				body+='<td><a class="ml-3" href="#" onclick="deleteProducts(\''+data[i].id+'\')"><i class="fa fa-trash-o fa-2x red-text"></i></a></td>';
				body+='</tr>';
			}
			$('#fetchProducts').html(body);
		}
	});
}

function loadContent(id){
	$.ajax({
		url:"http://localhost/inv_vape/include/fetchProducts.php?showProducts&id="+id,
		method:"GET",
		dataType:"JSON",
		success:function(data){
			body="";
			for(var i=0; i<data.length; i++){
				var total = data[i].product_price * data[i].product_qty;
				body+='<tr>';
				body+='<td>'+data[i].product_name+'</td>';
				body+='<td id="prod_qty">'+data[i].product_qty+'</td>';
				body+='<td>₱'+data[i].product_price+'</td>';
				body+='<td>₱'+total+'</td>';
				if(data[i].product_qty == 0){
					body+='<td class="red-text">Unavailable</td>';
				}else{
					body+='<td class="green-text">Available</td>';
				}
				body+='<td class="green-text"><a class="ml-3" href="#" onclick="deleteContent(\''+data[i].product_code+'\',\''+data[i].product_unique_id+'\')"><i class="fa fa-trash-o fa-2x red-text"></i></a></td>';
				body+='</tr>';
				
			}
			$('#fetchContent').html(body);
		}
	});
}

function deleteProducts(id){
	var deleteConfirmation = confirm("Do you want to delete this ?");
	if(deleteConfirmation == true){ 
		$.ajax({
			url:"http://localhost/inv_vape/include/delete.php?deleteProducts",
			method:"POST",
			data:{id:id},
			success:function(){
				Materialize.toast('Successfully deleted', 2000);
				loadProducts();			
			}
		});
	}else{
		return false;
	}
}

totalCount();
function totalCount(){
	$.ajax({
		url:"http://localhost/inv_vape/include/totalProducts.php?fetchStockCount",
		method:"GET",
		dataType:"JSON",
		success:function(data){
			var body=""; 		
			body+= data.product_qty;

			$('#totalStocks').html(body);
		}
	});
}


$('#addContents').click(function(){
	var product_name = $('#product_name').val();
	var content_name = $('#content_name').val();
	var prodprice = $('#prodprice').val();
	var prodquantity = $('#prodquantity').val();

	if(content_name && prodprice && prodquantity != ''){
		$.ajax({
			url:"http://localhost/inv_vape/include/addcontent.php",
			method:"POST",
			data:{
				product_name:product_name,
				content_name:content_name,
				prodprice:prodprice,
				prodquantity:prodquantity
			},
			dataType:"JSON",
			success:function(){
				$('#content_name').val('');
				$('#prodprice').val('');
				$('#prodquantity').val('');
				alert('Added successfully');
			}
		});

	}else{
		alert("Required Field/s");
	}
});

function deleteContent(code,id){
	var content = id;
	var deleteConfirmation = confirm("Do you want to delete this ?");
	if(deleteConfirmation == true){ 
		$.ajax({
			url:"http://localhost/inv_vape/include/delete.php?deleteContent",
			method:"POST",
			data:{id:id},
			dataType:"JSON",
			success:function(){
				alert('Deleted');
				loadContent(code);
			}
		});
	}else{
		return false;
	}
}

function updateQuantity(){
	var categ = $('#categ').val();
	var contentname = $('#contentname').val();
	var prodqty = $('#prodqty').val();

	$.ajax({
		url:"http://localhost/inv_vape/include/updateContent.php",
		method:"POST",
		data:{
			categ:categ,
			contentname:contentname,
			prodqty:prodqty
		},
		dataType:"JSON",
		success:function(data){
			M.toast({html: 'Quantity Added!'});
			$('#categ').val('');
			$('#contentname').val('');
			$('#prodqty').val('');
		}
	});
}

loadDashboard();
function loadDashboard(){
	$.ajax({
		url:"http://localhost/inv_vape/include/fetchProducts.php?fetchDashboard",
		method:"GET",
		dataType:"JSON",
		success:function(data){
			body="";
			for(var i=0; i<data.length; i++){
				body+='<tr>';
				body+='<td>'+data[i].timeadded+'</td>';
				body+='<td>'+data[i].product_totalqty+'</td>';
				body+='<td class="green-text">+'+data[i].product_qty+'</td>';
				body+='<td>'+data[i].product_name+'</td>';
				body+='</tr>';
			}
			$('#fetchDashboard').html(body);
		}
	});
}

function searchData(){
	var searchProducts = $('#searchProducts').val();
	$.ajax({
		url:"http://localhost/inv_vape/include/search.php",
		method:"GET",
		dataType:"JSON",
		data:{searchProducts:searchProducts},
		success:function(data){
			var body = "";
			if(data == 'No result'){
				body+='<tr> <td><h3><b>NO RESULT!</b></h3></td></tr>';

			}else{
				for(var i=0; i<data.length; i++){
					body+='<tr>';
					body+='<td><a class="waves-effect waves-light modal-trigger" href="#modal1" onclick="loadContent(\''+data[i].product_code+ '\')"><i class="fa fa-eye fa-2x"></i></a></td>';
					body+='<td>12345Prod'+data[i].product_code+'</td>';
					body+='<td>'+data[i].product_name+'</td>';
					body+='<td><a class="ml-3" href="#" onclick="deleteProducts(\''+data[i].id+'\')"><i class="fa fa-trash-o fa-2x red-text"></i></a></td>';
					body+='</tr>';
				}
				$('#fetchProducts').html(body);
			}
		}
	});
}
$('#purchased').click(function(){
	var product_name = $('#product_name').val();
	var product_qty = $('#product_qty').val();
	var product_dsc = $('#product_dsc').val();
	if(product_name && product_qty != ''){
		
		$.ajax({
			url:"http://localhost/inv_vape/include/purchased.php",
			method:"POST",
			data:{
				product_name:product_name,
				product_qty:product_qty,
				product_dsc:product_dsc
			},
			dataType:"JSON",
			success:function(){
				$('#product_name').val('');
				$('#product_qty').val('');
				$('#product_dsc').val('0');
				M.toast({html: 'Purchased Successfully!'});


			}
		});

	}else{
		alert("Required Field/s");
	}
	
	
});

loadPurchased();
function loadPurchased(){
	$.ajax({
		url:"http://localhost/inv_vape/include/fetchProducts.php?fetchPurchased",
		method:"GET",
		dataType:"JSON",
		success:function(data){
			body="";
			for(var i=0; i<data.length; i++){
				var total = data[i].product_qty * data[i].product_price;
				body+='<tr>';
				body+='<td>'+data[i].timepurchased+'</td>';
				body+='<td id="totalSales">&#8369;'+total+'</td>';
				body+='<td>'+data[i].product_totalqty+'</td>';
				body+='<td class="red-text">-'+data[i].product_qty+'</td>';
				body+='<td>'+data[i].product_name+'</td>';
				body+='</tr>';
			}
			$('#fetchPurchased').html(body);
		}
	});
}
totalSales();
function totalSales(){
	var totalSalesId = $('#totalSales').val();
	$.ajax({
		url:"http://localhost/inv_vape/include/totalProducts.php?totalSales",
		method:"GET",
		dataType:"JSON",
		success:function(data){
			var body="";
			body+= '&#8369;'+data.total;
			
			$('#totalSales').html(body);
		}
	});
}
$(document).ready(function(){  
	load_data();  
	function load_data(page)  
	{  
		$.ajax({  
			url:"http://localhost/inv_vape/include/pagination.php",  
			method:"POST",  
			data:{page:page},
			dataType:"text",  
			success:function(data){  
				$('#pagination_data').html(data);  
			}  
		})  
	}  
	$(document).on('click', '.pagination_link', function(){  
		var page = $(this).attr("id");  
		load_data(page);  
	});  
});  

$(document).ready(function(){
	$('#product_name').keyup(function(){
		var query = $(this).val();
		if(query != ''){
			$.ajax({
				url:"http://localhost/inv_vape/include/searchProducts.php",
				method:"POST",
				data:{query:query},
				dataType:"JSON",
				success:function(data){
					$('#productList').fadeIn();
					$('#productList').html(data);
				}
			});
		}
	});
	
	$(document).on('click', 'li', function(){
		$('#product_name').val($(this).text());
		$('#productList').fadeOut();
	});
});

salesGraph();
function salesGraph(){
	$.ajax({
		url:"http://localhost/inv_vape/include/salesGraph.php",
		method:"GET",
		dataType:"JSON",
		success:function(data){
			var total = [];
			var timepurchased = [];
			for(var i =0; i<data.length; i++){
				total.push(data[i].total);
				timepurchased.push(data[i].timepurchased);
			}
			var ctx = document.getElementById("salesGraph").getContext('2d');
			var myChart = new Chart(ctx, {
				type: 'bar',
				data: {
					labels: timepurchased,
					datasets: [{
						label: 'Sales',
						data: total,
						backgroundColor: 'orange',
						borderColor: 'rgba(255,99,132,1)',
						borderWidth: 1
					}]
				},
				options: {
					scales: {
						yAxes: [{
							ticks: {
								beginAtZero:true

							}
						}]
					}
				}

			});
		}
	});
}

$(document).ready(function(){
	$('#content_name').blur(function(){
		var content_name = $(this).val();
		$.ajax({
			url:"http://localhost/inv_vape/include/check.php",
			method:"POST",
			data:{content_name:content_name},
			dataType:"text",
			success:function(html){
				if(html != '0'){
					$('#itemCheck').html('<span id="itemCheck" class="red-text">Item Already exist!</span>');
				}else{
					$('#itemCheck').html('<span id="itemCheck" class="green-text">Item Name Available</span>');
				}
			}
		});
	});
});


loadJuices();
function loadJuices(){
	$.ajax({
		url:"http://localhost/inv_vape/include/fetchjuices.php",
		method:"GET",
		dataType:"JSON",
		success:function(data){
			body="";
			for(var i=0; i<data.length; i++){
				body+='<tr>';
				body+='<td><a class="waves-effect waves-light modal-trigger" href="#modal1"><i class="fa fa-eye fa-2x"></i></a></td>';
				body+='<td>12345Juice'+data[i].product_code+'</td>';
				body+='<td>'+data[i].product_name+'</td>';
				body+='</tr>';
			}
			$('#fetchjuice').html(body);
		}
	});
}

$('#addNewJuice').click(function(){
	var juice_name = $('#juice_name').val();
	$.ajax({
		url:"http://localhost/inv_vape/include/addJuice.php",
		method:"POST",
		data:{juice_name:juice_name},
		dataType:"JSON",
		success:function(){
			M.toast({html: 'New Juice Added!'});
			$('#juice_name').val('');
		}
	});
});

$('#addNewItem').click(function(){
	var item_name = $('#item_name').val();
	$.ajax({
		url:"http://localhost/inv_vape/include/addItem.php",
		method:"POST",
		data:{
			item_name:item_name
		},
		dataType:"JSON",
		success:function(){
			M.toast({html: 'New Item Added!'});
			$('#item_name').val('');
		}
	});
});

$(document).ready(function(){
	$('#contentname').keyup(function(){
		var query = $(this).val();
		if(query != ''){
			$.ajax({
				url:"http://localhost/inv_vape/include/searchProducts.php",
				method:"POST",
				data:{query:query},
				dataType:"JSON",
				success:function(data){
					$('#searchList').fadeIn();
					$('#searchList').html(data);
				}
			});
		}
	});
	
	$(document).on('click', 'li', function(){
		$('#contentname').val($(this).text());
		$('#searchList').fadeOut();
	});
});


countJuice();
function countJuice(){
	$.ajax({
		url:"",
		method:"GET",
		dataType:"JSON",
		success:function(data){
			var body=""; 		
			body+= data.product_qty;

			$('#totalStocks').html(body);
		}
	});
}


$(document).ready(function(){
	$('#prodname').keyup(function(){
		var query = $(this).val();
		if(query != ''){
			$.ajax({
				url:"http://localhost/inv_vape/include/searchProducts.php",
				method:"POST",
				data:{query:query},
				dataType:"JSON",
				success:function(data){
					$('#searchList1').fadeIn();
					$('#searchList1').html(data);
				}
			});
		}
	});
	
	$(document).on('click', 'li', function(){
		$('#prodname').val($(this).text());
		$('#searchList1').fadeOut();
	});
});


$(document).ready(function(){
	$('#prodname1').keyup(function(){
		var query = $(this).val();
		if(query != ''){
			$.ajax({
				url:"http://localhost/inv_vape/include/searchProducts.php",
				method:"POST",
				data:{query:query},
				dataType:"JSON",
				success:function(data){
					$('#searchList2').fadeIn();
					$('#searchList2').html(data);
				}
			});
		}
	});
	
	$(document).on('click', 'li', function(){
		$('#prodname1').val($(this).text());
		$('#searchList2').fadeOut();
	});
});


function updatePrice(){
	var prodname = $('#prodname').val();
	var newprice = $('#newprice').val();
	$.ajax({
		url:"http://localhost/inv_vape/include/updateitems.php?updatePrice",
		method:"POST",
		data:{prodname:prodname, newprice:newprice},
		dataType:"JSON",
		success:function(){
			M.toast({html: 'Price Updated!'});
			$('#prodname').val('');
			$('#newprice').val('');

		}
	});
}

function updateQty(){
	var prodname1 = $('#prodname1').val();
	var newqty = $('#newqty').val();
	$.ajax({
		url:"http://localhost/inv_vape/include/updateitems.php?updateQty",
		method:"POST",
		data:{prodname1:prodname1, newqty:newqty},
		dataType:"JSON",
		success:function(){
			M.toast({html: 'Quantity Updated!'});
			$('#prodname1').val('');
			$('#newqty').val('');
		}
	});
}

loadLogs();
function loadLogs(){
	$.ajax({
		url:"http://localhost/inv_vape/include/fetchProducts.php?fetchLogs",
		method:"GET",
		dataType:"JSON",
		success:function(data){
			body='';
			for(var i =0; i<data.length; i++){
				body+='<tr>';
				body+='<td>'+data[i].product_name+'</td>';
				body+='<td>'+data[i].product_price+'</td>';
				body+='<td>'+data[i].product_qty+'</td>';
				body+='<td>'+data[i].product_totalqty+'</td>';
				body+='<td>'+data[i].timepurchased+'</td>';
				body+='<td>'+data[i].remarks+'</td>';

				if(data[i].remarks == 'Sold'){
					body+='<td><button class="btn" onclick="changeLogs('+data[i].id+')">Void</button></td>';
				}else if(data[i].remarks == 'Voided'){
					body+='<td><button class="btn" onclick="changeLogs('+data[i].id+')" disabled>Void</button></td>';
				}
				
				body+='</tr>';
			}
			$('#fetchLogs').html(body);
		}
	});
}

function changeLogs(id){
	var voidConfirm = confirm("Do you want to void this transaction?");
	if(voidConfirm != true){
		return false;
	}else{
		$.ajax({
			url:"http://localhost/inv_vape/include/voidTransaction.php",
			method:"POST",
			data:{id:id},
			dataType:"JSON",
			success:function(){
				M.toast({html: 'Transaction Voided'});
				loadLogs();
			}
		});
	}

}