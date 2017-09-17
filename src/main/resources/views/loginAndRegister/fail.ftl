<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

    <link rel="shortcut icon" href="../../static/favicon/favicon.ico">
    <title>拍拍大学</title>

    <!-- Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<!--Bootstrap 核心 JavaScript 文件-->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<!--js-->
<script type="text/javascript">
    $(function () {
        $("#searchBtn").click(function () {
            var type = $("#typeSelect").val();
            var content = $("#contentTxt").val();
            if (content.trim()!=null){
                window.location.href = "/search?type=" + type + "&content=" + content;
            }
        });
       $("#error").click(function () {
       		  window.location.href = "/";
       });     
    });
</script>
</head>
<body>  
<div class="web_login">  
     	 ${result}<br/>
       <a href="javaScript:" id = "error">返回注册页</a>
       
</div>  
</body>  
</html>
 
