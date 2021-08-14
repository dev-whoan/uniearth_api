
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="MkWeb" prefix="mkw" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MKWEB_TEST</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="../javascript/mktoken.js"></script>
<link rel="stylesheet" href="../css/mystyle.css" />
<style>

#remove-user{
   display: none;
}

.show{
   display: block !important;
}

#login{
   width: 100px;
   height: 50px;
}
</style>
<script>
$(document).ready(_ => {
   $('#token-check').on('click', function(){
      console.log(getToken(document.cookie));
      $.ajax({
	        type : "POST", 
	        url : "/auth/login",
	        dataType : "json",
	        data : {
	        	"user_id" : $("#userid").val(),
	        	"user_pw" : $("#userpw").val()
	        },
	        error : function(){
	            alert("통신실패!!!!");
	        },
	        success : function(rd){
                if(rd.token){
                    token = rd.token;
                    
                    document.cookie = setTokenCookie(token);
                    console.log(getToken(document.cookie));
                }
	        }
	    });
   });
})

</script>

</head>
<body>
<div>
<div class="wrap">
<!-- header -->
<div class="header">
   Token Page - Auth required
</div>

<!-- section -->
<div class="section">
   <div class="container">
           <!-- <label>이름 : </label> -->
           <button id="token-check">check token</button>
   </div>
</div>

<!-- footer -->
<div class="footer">

</div>
</div>
</div>
</body>
</html>
