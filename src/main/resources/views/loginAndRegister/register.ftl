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
<div class="web_login">  
    <form name="form" id="regUser" accept-charset="utf-8"  action="/register/userRegister" method="post">  
        <ul class="reg_form" id="reg-ul">  
            <div id="userCue" class="cue">快速注册请注意格式</div>  
            <li>  
                <label for="username"  class="input-tips2">用户名：</label>  
                <div class="inputOuter2">  
                    <input type="text" id="username" name="username" maxlength="16" class="inputstyle2"/>  
                </div>  
            </li>  
            <li>  
                <label for="password" class="input-tips2">密码：</label>  
                <div class="inputOuter2">  
                    <input type="password" id="password"  name="password" maxlength="16" class="inputstyle2"/>  
                </div>  
            </li>  
            <li>  
                <label for="email" class="input-tips2"> 邮箱：</label>  
                <div class="inputOuter2">  
                    <input type="text" id="email" name="email" maxlength="16" class="inputstyle2" />  
                </div>  
            </li>  
            <li>  
                <div class="inputArea">  
                    <input type="submit" id="reg"  style="margin-top:10px;margin-left:85px;" class="button_blue" value="同意协议并注册"/> <a href="#" class="zcxy" target="_blank">注册协议</a>  
                </div>  
            </li><div class="cl"></div>  
        </ul>  
    </form>  
</div>  
</body>  
</html>
