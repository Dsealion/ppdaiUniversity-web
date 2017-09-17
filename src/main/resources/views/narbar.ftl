<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <!-- The mobile navbar-toggle button can be safely removed since you do not need it in a non-responsive implementation -->
            <a class="navbar-brand" href="/">拍拍大学</a>
        </div>
        <!-- Note that the .navbar-collapse and .collapse classes have been removed from the #navbar -->
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/">首页</a></li>
                <li><a href="#about">关于</a></li>
                <li><a href="#contact">联系</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">登录</a></li>
                <li><a href="#">注册</a></li>
            </ul>

            <form class="navbar-form navbar-right">
                <div class="form-group">
                    <select class="form-control" id="typeSelect">
                        <option value="1" selected>课程</option>
                        <option value="2">提供方</option>
                    </select>
                    <div class="input-group">
                        <input id="contentTxt" type="text" class="form-control" placeholder="Search">
                        <span class="input-group-btn ">
                            <button class="btn btn-default" type="button" id="searchBtn">
                                <span class="glyphicon glyphicon-search button"></span>
                            </button>
                        </span>
                    </div>
                </div>
            </form>
        </div><!--/.nav-collapse -->
    </div>
</nav>


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
        $("body").keydown(function() {
            if (event.keyCode == "13") {//keyCode=13是回车键
                event.preventDefault();
                $("#searchBtn").click();
            }
        });
    });
</script>