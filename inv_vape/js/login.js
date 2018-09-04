$(document).ready(function(){
	$('#loginform').submit(function(e){
		var loginform =$('#loginform').serialize();
		e.preventDefault();
		$.ajax({
			url:"http://localhost/inv_vape/include/login.php",
			method:"POST",
			data:loginform,
			success:function(account){
				if(account.response == 'no account'){
					alert('Account doesnt exist');
				}else{
					alert('Hello Inventory Management');
					window.location.href="http://localhost/inv_vape/index.php?in_page=dashboard";
					
				}
			}
		});
	});
});
checkSession();
function checkSession(){
	$.ajax({
		url:"http://localhost/inv_vape/include/authentication.php",
		method:"GET",
		dataType:"JSON",
		success:function(account){
			if(account.position == 'Manager'){
				window.location.href = "http://localhost/inv_vape/index.php?in_page=dashboard";
			}
		}
	});
}