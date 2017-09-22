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
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<#--<script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>-->
    <!--导入jQuery版本库，因为Bootstrap的JavaScript插件依赖于jQuery-->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!--Bootstrap 核心 JavaScript 文件-->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>


    <style type="text/css">
        body {
            padding-top: 70px;
            padding-bottom: 30px;
        }

        .container {
            width: 90%;
            max-width: none !important;
        }

        .navbar-brand {
            color: rgba(50, 176, 59, 1) !important;
        }

        .item img {
            width: 100%;
        }

        .panel {
            border: 0;
        }
        .panelHead{
            height: 30px;
            padding-top: 5px;
        }
        .title{
            float: left;
        }
        .sort{
            float: right;
        }
        .sort a{
            color: #fff;
            cursor:pointer;
        }

        footer {
            text-align: center;
        }
    </style>

</head>
<body>

<#assign flag = isLogin>
<#include "../narbar.ftl" >

<div class="container">
    <div class="row">
        <div class="col-xs-3">
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="/category/page">所有课程分类</a></li>
            <#list categoryList as categorys>
                <li><a href="/category/page?categoryId=${categorys.id}">${categorys.name}</a></li>
            </#list>
            <#--<li><a href="#">编程开发</a></li>-->
            <#--<li><a href="#">技术分享</a></li>-->
            <#--<li><a href="#">办公效率</a></li>-->
            <#--<li><a href="#">职业发展</a></li>-->
            <#--<li><a href="#">企业培训</a></li>-->
            </ul>
        </div>
        <div class="col-xs-9">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="http://ovhznawlr.bkt.clouddn.com/carousel1.jpg" alt="First slide">
                    </div>
                    <div class="item">
                        <img src="http://ovhznawlr.bkt.clouddn.com/carousel2.jpg" alt="Second slide">
                    </div>
                    <div class="item">
                        <img src="http://ovhznawlr.bkt.clouddn.com/carousel3.jpg" alt="Third slide">
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 20px">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h2 class="panel-title">
                    应届生基础课程
                </h2>
            </div>
            <div class="panel-body" style="text-align: center">
                <#list videoList1 as videos>
                    <div class="col-sm-6 col-md-3">
                        <a href="/content?id=${videos.id}" class="thumbnail">
                            <img src=${videos.thumbnailurl} alt="缩略图未加载成功">
                        </a>
                        <p>${videos.name}</p>
                        <p>${videos.providername}</p>
                        <p>${videos.playcount}</p>
                    </div>
                </#list>
                <#--<div class="col-sm-6 col-md-3">-->
                    <#--<a href="#" class="thumbnail">-->
                        <#--<img src="/images/cat.jpg"-->
                             <#--alt="通用的占位符缩略图">-->
                    <#--</a>-->
                    <#--<p>java基础教程</p>-->
                    <#--<p>提供方</p>-->
                    <#--<p>播放次数</p>-->
                <#--</div>-->
                <#--<div class="col-sm-6 col-md-3">-->
                    <#--<a href="#" class="thumbnail">-->
                        <#--<img src="/images/cat.jpg"-->
                             <#--alt="通用的占位符缩略图">-->
                    <#--</a>-->
                    <#--<p>java基础教程</p>-->
                    <#--<p>提供方</p>-->
                    <#--<p>播放次数</p>-->
                <#--</div>-->
                <#--<div class="col-sm-6 col-md-3">-->
                    <#--<a href="#" class="thumbnail">-->
                        <#--<img src="/images/cat.jpg"-->
                             <#--alt="通用的占位符缩略图">-->
                    <#--</a>-->
                    <#--<p>java基础教程</p>-->
                    <#--<p>提供方</p>-->
                    <#--<p>播放次数</p>-->
                <#--</div>-->
                <#--<div class="col-sm-6 col-md-3">-->
                    <#--<a href="#" class="thumbnail">-->
                        <#--<img src="/images/cat.jpg"-->
                             <#--alt="通用的占位符缩略图">-->
                    <#--</a>-->
                    <#--<p>java基础教程</p>-->
                    <#--<p>提供方</p>-->
                    <#--<p>播放次数</p>-->
                <#--</div>-->
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 20px">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">
                    热门推荐
                </h3>
            </div>
            <div class="panel-body">
                <div class="panel-body" style="text-align: center">
                    <#list videoList2 as videos>
                        <div class="col-sm-6 col-md-3">
                            <a href=${videos.url} class="thumbnail">
                                <img src=${videos.thumbnailurl} alt="缩略图未加载成功">
                            </a>
                            <p>${videos.name}</p>
                            <p>${videos.providername}</p>
                            <p>播放次数</p>
                        </div>
                    </#list>
                </div>
            </div>
        </div>
    </div>

</div>

<#include "../footer.ftl" parse=false/>

</body>
</html>