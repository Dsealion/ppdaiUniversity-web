<!DOCTYPE html>
<html lang="zh-CN" xmlns="http://www.w3.org/1999/html">
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
        body {
            padding-top: 70px;
            padding-bottom: 30px;
        }
        .container{
            width: 90%;
            max-width: none !important;
        }
        .navbar-brand{
            color: rgba(50,176,59,1) !important;
        }
        .panel {
            border: 0;
        }
        video {
            object-fit:fill;
            width:100%;
            height:650px;
        }
        .panel-body{
            text-align: left;
        }
        footer{
            text-align: center;
        }
    </style>

</head>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <!-- The mobile navbar-toggle button can be safely removed since you do not need it in a non-responsive implementation -->
                <a class="navbar-brand" href="#">拍拍大学</a>
            </div>
            <!-- Note that the .navbar-collapse and .collapse classes have been removed from the #navbar -->
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">首页</a></li>
                    <li><a href="#about">关于</a></li>
                    <li><a href="#contact">联系</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">登录</a></li>
                    <li><a href="#">注册</a></li>
                </ul>

                <form class="navbar-form navbar-right">
                    <div class="form-group">
                        <select style="height: 34px; border-radius:3px;">
                            <option value="1">课程</option>
                            <option value="2">提供方</option>
                        </select>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search">
                            <span class="input-group-btn ">
                                <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search button"></span></button>
                            </span>
                        </div>
                    </div>
                </form>
            </div><!--/.nav-collapse -->
        </div>
    </nav>

    <div class="container">
        <div class="row">
            <video src="/videos/ted03.mp4" controls="controls"></video>
        </div>
        <div class="row">

            <div class="col-xs-9">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            视频介绍
                        </h3>
                    </div>
                    <div class="panel-body">
                        <p>《吉他入门经典教程》是龙之音老师学琴十几年的一套经验，摆脱传统自学吉他乐理枯燥无味，把乐理带入实际演奏中学习，即使零基础的学员也可以成为吉他高手。</p>
                    </div>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            提供方介绍
                        </h3>
                    </div>
                    <div class="panel-body">
                        <p>90后网络教学先锋，《吉他入门经典教程》作者用最简单的语言教会你弹吉他。</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <p>Posted by: ppdai</p>
        <p>Contact information: <a href="mailto:someone@example.com">someone@example.com</a>.</p>
    </footer>

</body>
</html>