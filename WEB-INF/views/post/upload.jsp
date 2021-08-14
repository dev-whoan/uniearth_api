<%@ page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
<%@ taglib uri="MkWeb" prefix="mkw"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MKWEB_TEST</title>
<script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<link rel="stylesheet" href="./css/mystyle.css" />
<script>
$(document).ready(function(){
        let file = document.getElementById('myfile');
        console.log(file);
        file.onchange = function(e) {
                console.log("event:" + e);
                var fileReader = new FileReader();
                fileReader.readAsDataURL(e.target.files[0]);
                fileReader.onload = function(e) {
                        console.log(e.target.result);
                }
        }

        $("#testFTP").click(function(){
                $.ajax({
                type : "POST",
                url : "/ftp/receive",
                dataType : "text",
                data : {
                        "ftp_img.testimg":"Hi"
                },
                error : function(a, b, c){
                    console.log(a);
                },
                success : function(rd){
                    console.log(rd);
                }

            });
        });
});
</script>
<style>
#remove-user {
        display: none;
}

.show {
        display: block !important;
}
</style>


</head>
<body>
        <div>

                <div class="wrap">
                        <!-- header -->
                        <div class="header">Default Upload Page</div>

                        <!-- section -->
                        <div class="section">
                                <div class="container">
                                        <h1 id="title">MKWeb Test FTP - Upload</h1>

                                        <form action="/ftp/execute" method="POST" enctype="multipart/form-data">
                                                <label for="form-file">[Form]Select a Image file:</label>
                                                <input type="file" id="form-file" name="post_file.upload">
                                                <input type="file" id="form-file" name="post_file.upload">
                                                <input type="file" id="form-file" name="post_file.upload">
                                                <input type="file" id="form-file" name="post_file.upload">
                                                <input type="submit" />
                                        </form>


                                        <h1 id="title">MKWeb Test FTP - Image</h1>
                                        <mkw:ftp name="freeboard" id="posts" obj="list" img="yes">
                                                <p>name : ${mkw.name} </p>
                                                <img src="${mkw.result}" />
                                        </mkw:ftp>
                                </div>
                        </div>

                        <!-- footer -->
                        <div class="footer"></div>
                </div>
        </div>
</body>
</html>