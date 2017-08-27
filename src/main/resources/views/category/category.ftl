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
        .breadcrumb > li + li:before {
            content: ">";
        }
        .list{
            padding-bottom: 30px;
        }
        .menulist{
            margin: 0px;
            list-style-type:none;
            padding-left: 15px;
            float:left;
            height: 30px;
        }
        .list-item{
            display: inline;
            margin-right: 10px;
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
            <ol class="breadcrumb">
                <li><a href="#">首页</a></li>
                <li><a href="#">全部课程</a></li>
                <li class="active">编程开发</li>
            </ol>

            <div class="list">
                <ul class="menulist">
                    <li class="list-item"><a href="#">精选好课</a></li>
                    <li class="active list-item">编程语言</a></li>
                    <li class="list-item"><a href="#">前端开发</li>
                    <li class="list-item"><a href="#">后端开发</a></li>
                    <li class="list-item"><a href="#">移动开发</a></li>
                    <li class="list-item"><a href="#">大数据</a></li>
                </ul>
            </div>
            <br>
            <div class="list">
                <ul class="menulist">
                    <li class="list-item"><a href="#">全部</a></li>
                    <li class="list-item">/</li>
                    <li class="active list-item">Java</li>
                    <li class="list-item">/</li>
                    <li class="list-item"><a href="#">Python</li>
                    <li class="list-item">/</li>
                    <li class="list-item"><a href="#">PHP</a></li>
                    <li class="list-item">/</li>
                    <li class="list-item"><a href="#">C</a></li>
                    <li class="list-item">/</li>
                    <li class="list-item"><a href="#">C++</a></li>
                </ul>
            </div>

        </div>
        <div class="row" style="margin-top: 20px">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h2 class="panel-title">
                        Java
                    </h2>
                </div>
                <div class="panel-body" style="text-align: center">
                    <div class="row">
                        <div class="col-sm-6 col-md-3">
                            <a href="#" class="thumbnail">
                                <img src="/images/cat.jpg"
                                     alt="通用的占位符缩略图">
                            </a>
                            <p>java基础教程</p>
                            <p>提供方</p>
                            <p>播放次数</p>
                        </div>
                        <div class="col-sm-6 col-md-3">
                            <a href="#" class="thumbnail">
                                <img src="/images/cat.jpg"
                                     alt="通用的占位符缩略图">
                            </a>
                            <p>java基础教程</p>
                            <p>提供方</p>
                            <p>播放次数</p>
                        </div>
                        <div class="col-sm-6 col-md-3">
                            <a href="#" class="thumbnail">
                                <img src="/images/cat.jpg"
                                     alt="通用的占位符缩略图">
                            </a>
                            <p>java基础教程</p>
                            <p>提供方</p>
                            <p>播放次数</p>
                        </div>
                        <div class="col-sm-6 col-md-3">
                            <a href="#" class="thumbnail">
                                <img src="/images/cat.jpg"
                                     alt="通用的占位符缩略图">
                            </a>
                            <p>java基础教程</p>
                            <p>提供方</p>
                            <p>播放次数</p>
                        </div>
                    </div>
                </div>
                <div class="panel-body" style="text-align: center">
                    <div class="row">
                        <div class="col-sm-6 col-md-3">
                            <a href="#" class="thumbnail">
                                <img src="/images/cat.jpg"
                                     alt="通用的占位符缩略图">
                            </a>
                            <p>java基础教程</p>
                            <p>提供方</p>
                            <p>播放次数</p>
                        </div>
                        <div class="col-sm-6 col-md-3">
                            <a href="#" class="thumbnail">
                                <img src="/images/cat.jpg"
                                     alt="通用的占位符缩略图">
                            </a>
                            <p>java基础教程</p>
                            <p>提供方</p>
                            <p>播放次数</p>
                        </div>
                        <div class="col-sm-6 col-md-3">
                            <a href="#" class="thumbnail">
                                <img src="/images/cat.jpg"
                                     alt="通用的占位符缩略图">
                            </a>
                            <p>java基础教程</p>
                            <p>提供方</p>
                            <p>播放次数</p>
                        </div>
                        <div class="col-sm-6 col-md-3">
                            <a href="#" class="thumbnail">
                                <img src="/images/cat.jpg"
                                     alt="通用的占位符缩略图">
                            </a>
                            <p>java基础教程</p>
                            <p>提供方</p>
                            <p>播放次数</p>
                        </div>
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