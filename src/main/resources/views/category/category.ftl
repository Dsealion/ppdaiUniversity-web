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
        .panelHead{
            height: 30px;
            padding-top: 5px;
        }
        .title{
            float: left;
        }
        .sort{
            padding-right: 20px;
            float: right;
        }
        .sort a{
            color: #fff;
            cursor:pointer;
        }
        footer{
            text-align: center;
        }
    </style>

    <!--js-->
    <script type="text/javascript">
        $(function () {
            $("#hotSortBtn").click(function () {
                alert("renqi！");
                $.post("/category/order")

            });
            $("#latestSortBtn").click(function () {
                alert("zuixin！");
            });
        });
    </script>

</head>
<body>

    <#include "../narbar.ftl" parse=false/>

    <div class="container">
        <div class="row">
            <ol class="breadcrumb">
                <li><a href="/">首页</a></li>
                <li <#if categoryName=="全部课程"> class="active" </#if>><a href="/category/page">全部课程</a></li>
                <#if categoryName!="全部课程" && categoryName!="搜索结果">
                    <li class="active">${categoryName}</li>
                </#if>
            <#if categoryName=="搜索结果">
                <li class="active">${categoryName}</li>
            </#if>
            </ol>

            <#--<div class="list">-->
                <#--<ul class="menulist">-->
                    <#--<li class="list-item"><a href="#">精选好课</a></li>-->
                    <#--<li class="active list-item">编程语言</a></li>-->
                    <#--<li class="list-item"><a href="#">前端开发</li>-->
                    <#--<li class="list-item"><a href="#">后端开发</a></li>-->
                    <#--<li class="list-item"><a href="#">移动开发</a></li>-->
                    <#--<li class="list-item"><a href="#">大数据</a></li>-->
                <#--</ul>-->
            <#--</div>-->
            <#--<br>-->
            <#--<div class="list">-->
                <#--<ul class="menulist">-->
                    <#--<li class="list-item"><a href="#">全部</a></li>-->
                    <#--<li class="list-item">/</li>-->
                    <#--<li class="active list-item">Java</li>-->
                    <#--<li class="list-item">/</li>-->
                    <#--<li class="list-item"><a href="#">Python</li>-->
                    <#--<li class="list-item">/</li>-->
                    <#--<li class="list-item"><a href="#">PHP</a></li>-->
                    <#--<li class="list-item">/</li>-->
                    <#--<li class="list-item"><a href="#">C</a></li>-->
                    <#--<li class="list-item">/</li>-->
                    <#--<li class="list-item"><a href="#">C++</a></li>-->
                <#--</ul>-->
            <#--</div>-->

        </div>
        <div class="row" style="margin-top: 20px">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="panelHead">
                        <div class="title">
                            <h2 class="panel-title">
                            ${categoryName}
                            </h2>
                        </div>
                        <div class="sort">
                            <a type="button" id="hotSortBtn">人气</a>&nbsp;&nbsp;&nbsp
                            <a type="button" id="latestSortBtn" disabled="true">最新</a>
                        </div>
                    </div>
                </div>
                <div class="panel-body" style="text-align: center">
                    <#list videoList as videos>
                        <div class="col-sm-6 col-md-3">
                            <a href="/content?id=${videos.id}" class="thumbnail">
                                <img src=${videos.thumbnailurl} alt="缩略图未加载成功">
                            </a>
                            <p>${videos.name}</p>
                            <p>${videos.providername}</p>
                            <p>${videos.playcount}</p>
                        </div>
                    </#list>
                </div>

            </div>
        </div>
    </div>

    <#include "../footer.ftl" parse=false/>

</body>
</html>