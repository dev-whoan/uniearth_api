
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

</head>
<body>
<div>
<div class="wrap">
<!-- header -->
<div class="header">
   Main Page - Auth required
</div>

<!-- section -->
<div class="section">
   <div class="container">
           <!-- <label>이름 : </label> -->
           <input type="text" id="userid" />
           <input type="password" id="userpw" />
           <button id="login">login</button>
   </div>
   <a href="/token">go to token</a>
</div>

<!-- footer -->
<div class="footer">

</div>
</div>
</div>
</body>
</html>
