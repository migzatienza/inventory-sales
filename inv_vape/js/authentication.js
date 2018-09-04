authentication();
function authentication(){
	
	$.ajax({
		url:"http://localhost/inv_vape/include/authentication.php",
		method:"GET",
		dataType:"JSON",
		success:function(account){
			var dbimage ="";
			dbimage = '<img class="circle" src="images/'+account.image+'">';
			if(account.response == 'session_expired'){
				window.location.href = "http://localhost/inv_vape/login.html";
			}else{
				
				$('#fullname').html(account.fullname);
				$('#username').html(account.username);
				$('#imagess').html(dbimage);
			}

		}
	});
}

function logOut(){
	$.ajax({
		url:"http://localhost/inv_vape/include/authentication.php?logout",
		method:"GET",
		dataType:"JSON",
		success:function(account){
			if(account.response == 'session_expired'){
				window.location.href = "http://localhost/inv_vape/login.html";
			}

		}
	});
}