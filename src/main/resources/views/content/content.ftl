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
        .video-container{
            padding: 10px;
        }
        .player{
            height: 0;
            padding-bottom: 56.25%; /* 16:9 */
            position: relative;
            width: 100%;
        }
        video {
            object-fit:fill;
            position: absolute;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
        }
        video::-internal-media-controls-download-button {
            display:none;
        }

        video::-webkit-media-controls-enclosure {
            overflow:hidden;
        }

        video::-webkit-media-controls-panel {
            width: calc(100% + 30px);
        }
        .info{
            padding-left: 20px;
            padding-top: 200px;
        }
        .info p{

        }
        .panel-body{
            text-align: left;
        }
        footer{
            text-align: center;
        }
    </style>

    <script type="text/javascript">
        $(function () {
            var video = document.getElementById("video");;
            video.onclick=function(){
                if (video.paused){
                    video.play();
                }else {
                    video.pause();
                }
            }
        })
    </script>

</head>
<body>

    <#include "../narbar.ftl" parse=false/>

    <div class="container">
        <div class="row">
            <div class="col-xs-9">
                <div class="video-container">
                    <div class="player">
                        <video id="video" src="${videoInfo.url}" controls="controls" style="cursor:pointer">Your browser does not support HTML5 video.</video>
                    </div>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="info">
                    <p>课程名：${videoInfo.name}</p>
                    <p>提供方：${videoInfo.providername}</p>
                    <p>播放次数：${videoInfo.playcount}</p>
                    <button class="button default-button">收藏</button>
                </div>
            </div>
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
                        <p>${videoInfo.intro}</p>
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
                        <p>${videoInfo.intro}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <#include "../footer.ftl" parse=false/>

</body>
</html>