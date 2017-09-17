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

    <!--[if lt IE 9]>
	<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

	<!--Bootstrap 核心 JavaScript 文件-->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


    <style type="text/css">
        body{
            margin-left:auto;
            margin-right:auto;
            margin-top: 100px;
            width: 300px;
        }
        .container{
            width:100%;
        }
        .form-control{
            position: relative;
            height: auto;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding: 10px;
            font-size: 16px;
        }
        .form-control-feedback{
            padding: 5px;
        }
    </style>

</head>
<body>
<div class="container">
    <div class="row">
        <h3>拍拍大学</h3>
    </div>
    <!-- /.login-logo -->
    <div class="row">
      <form name="form" id="regUser" accept-charset="utf-8"  action="/login/userLogin" method="post"> 
        <div class="form-group has-success has-feedback">
            <div class="input-group">
                <span class="input-group-addon">@</span>
                <input type="text" class="form-control" name ="loginName" id="loginName" placeholder="账号">
            </div>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
        </div>
        <div class="form-group has-success has-feedback">
            <div class="input-group">
                <span class="input-group-addon">@</span>
                <input type="password" class="form-control" name = "password" id="password" placeholder="密码">
            </div>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        </div>
        <div class="form-group has-success has-feedback">
            <div class="input-group">
                <span class="input-group-addon">@</span>
                <input type="text" class="form-control" id="captcha" @keyup.enter="login" placeholder="验证码">
            </div>
            <span class="glyphicon glyphicon-warning-sign form-control-feedback"></span>
        </div>
        <div class="form-group has-success has-feedback">
            <div class="form-group has-feedback">
                <img alt="如果看不清楚，请单击图片刷新！" class="pointer" :src="src" @click="refreshCode">
                &nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:;" @click="refreshCode">点击刷新</a>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-8">
                <div class="checkbox icheck">
                </div>
            </div>
            <!-- /.col -->
            <div class="col-xs-4">
                <button  type="submit" class="btn btn-primary btn-block btn-flat" id = "login">登录</button>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.social-auth-links -->
        </form>
    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->
</body>
</html>