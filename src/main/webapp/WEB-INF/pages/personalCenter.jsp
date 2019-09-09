<%--
  Created by IntelliJ IDEA.
  User: SL
  Date: 2019/8/27
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/resources/";
%>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <title>个人中心</title>
    <link rel="shortcut icon" type="image/x-icon" href="static/img/favicon.ico" media="screen" />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="static/js/html5shiv.min.js"></script>
    <script src="static/js/respond.min.js"></script><![endif]-->
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <!-- Vendor CSS-->
    <link rel="stylesheet" href="static/vendor/fontawesome/css/font-awesome.css">
    <link rel="stylesheet" href="static/vendor/animo/animate+animo.css">
    <link rel="stylesheet" href="static/vendor/csspinner/csspinner.min.css">
    <!-- START Page Custom CSS-->
    <link rel="stylesheet" href="static/vendor/slider/css/slider.css">
    <link rel="stylesheet" href="static/vendor/chosen/chosen.min.css">
    <link rel="stylesheet" href="static/vendor/datetimepicker/css/bootstrap-datetimepicker.min.css">
    <!-- Codemirror -->
    <link rel="stylesheet" href="static/vendor/codemirror/lib/codemirror.css">
    <!-- Bootstrap tags-->
    <link rel="stylesheet" href="static/vendor/tagsinput/bootstrap-tagsinput.css">
    <!-- END Page Custom CSS-->
    <!-- App CSS-->
    <link rel="stylesheet" href="static/bootstrap-3.3.7-dist/css/app.css">
    <!-- Modernizr JS Script-->
    <script src="static/vendor/modernizr/modernizr.js" type="application/javascript"></script>
    <!-- FastClick for mobiles-->
    <script src="static/vendor/fastclick/fastclick.js" type="application/javascript"></script>
</head>

<body>
<!-- START Main wrapper-->
<section class="wrapper">
    <!-- START Top Navbar-->
    <nav role="navigation" class="navbar navbar-default navbar-top navbar-fixed-top">
        <!-- START navbar header-->
        <div class="navbar-header" style="background-color: #22AB38;">
            <a href="/" class="navbar-brand">
                <div class="brand-logo">爪子二手车</div>
            </a></div>
        <!-- END navbar header-->
        <!-- START Nav wrapper-->
        <div class="nav-wrapper">
            <!-- START Left navbar-->
            <ul class="nav navbar-nav">
                <li>
                    <a href="#" data-toggle="aside">
                        <em class="fa fa-align-left"></em> </a></li>
            </ul>
            <!-- END Left navbar-->
            <!-- START Right Navbar-->
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="#" data-toggle="navbar-search">
                        <em class="fa fa-search"></em> </a></li>
            </ul>
            <!-- END Right Navbar-->
        </div>
        <!-- END Nav wrapper-->
    </nav>
    <!-- END Top Navbar-->

    <!-- START aside-->
    <aside class="aside">
        <!-- START Sidebar (left)-->
        <nav class="sidebar">
            <ul class="nav">
                <!-- START user info-->
                <li>
                    <div data-toggle="collapse-next" class="item user-block has-submenu">
                        <!-- User picture-->
                        <div class="user-block-picture">
                            <img src="static/img/buygua.jpg" alt="Avatar" width="60" height="60"
                                 class="img-thumbnail img-circle">
                            <!-- Status when collapsed-->
                            <div class="user-block-status">
                                <div class="point point-success point-lg"></div>
                            </div>
                        </div>
                        <!-- Name and Role-->
                        <div class="user-block-info">
                            <span class="user-block-name item-text">尊敬的用户，欢迎您！</span>
                            <span class="user-block-role">买主&卖主</span>
                        </div>
                    </div>


                </li>
                <!-- END user info-->
                <!-- START Menu-->
                <li style="background:gray;">
                    <a href="/personalCenter" title="Dashboard"
                       style="color:white; box-shadow: 0px 1px 10px rgba(0,0,0,.8);">
                        <em class="fa fa-dashboard"></em>
                        <!-- 用于添加小图标 -->
                        <span class="item-text" style="font-size:17px;">个人信息</span> </a>
                </li>
                <li>
                    <a href="#" title="Tables" data-toggle="collapse-next" class="has-submenu">
                        <em class="fa fa-bar-chart-o"></em>
                        <span class="item-text">作为买方</span> </a>
                    <!-- START SubMenu item-->
                    <ul class="nav collapse ">
                        <li>
                            <a href="/undoneorder">
                                <span class="item-text">未完成订单</span> </a></li>
                        <li>
                            <a href="/historyOrder">
                                <span class="item-text">历史订单</span> </a>
                        </li>
                    </ul>
                    <!-- END SubMenu item-->
                </li>

                <li>
                    <a href="#" title="Tables" data-toggle="collapse-next" class="has-submenu">
                        <em class="fa fa-bar-chart-o"></em>
                        <span class="item-text">作为卖方</span> </a>
                    <!-- START SubMenu item-->
                    <ul class="nav collapse ">
                        <li>
                            <a href="/confirmsell">
                                <span class="item-text">已售出车辆信息</span> </a></li>
                        <li>
                        <li>
                            <a href="/checkedsell">
                                <span class="item-text">未售出车辆信息</span> </a></li>
                        <li>
                            <a href="/unchecksell">
                                <span class="item-text">预售车辆信息发布</span> </a>
                        </li>
                    </ul>
                    <!-- END SubMenu item-->
                </li>

                <li>
                    <a href="/collection" title="Standard">
                        <em class="fa fa-table"></em>
                        <span class="item-text">收藏夹</span> </a>
                </li>
                <li>
                    <a href="/page/index" title="Pages">
                        <em class="fa fa-file-text"></em>
                        <div class="label label-primary pull-right">new</div>
                        <span class="item-text">返回首页</span> </a>
                </li>
                <!-- END Menu-->
                <!-- Sidebar footer    -->
                <li class="nav-footer">
                    <div class="nav-footer-divider"></div>
                    <!-- START button group-->
                    <div class="btn-group text-center">
                        <button onclick="logout()" type="button" data-toggle="tooltip" data-title="退出" class="btn btn-link">
                            <em class="fa fa-sign-out text-muted"></em></button>
                    </div>
                    <!-- END button group-->
                </li>
            </ul>
        </nav>
        <!-- END Sidebar (left)-->
    </aside>
    <!-- End aside-->


    <!-- START Main section-->
    <section id="personInfo">
        <!-- START Page content-->
        <!--XXX1-->
        <section class="main-content">
            <h3>个人信息
                <br>
                <small>请完善您的个人信息，以获取更多特权</small>
            </h3>
            <!-- START panel-->
            <div class="panel panel-default">
                <div class="panel-heading">基本信息</div>
                <div class="panel-body">
                    <form method="get" class="form-horizontal">

                        <fieldset>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">用户名</label>
                                <div class="col-sm-4" id="username">
                                    ${user.username}
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">真实姓名</label>
                                <div class="col-sm-4" id="realname">
                                    ${user.realname}
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">性别</label>
                                <div class="col-sm-4" id="sex">
                                    ${user.sex}
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">年龄</label>
                                <div class="col-sm-4" id="age">
                                    ${user.age}
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">用户手机</label>
                                <div class="col-sm-4" id="phonenumber">
                                    ${user.phonenumber}
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">用户邮箱</label>
                                <div class="col-sm-4" id="email">
                                    ${user.email}
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">注册时间</label>
                                <div class="col-sm-4" id="registertime">
                                    ${user.registertime}
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button type="button" id="edit" style="display:block" class="btn btn-primary">编辑
                                    </button>
                                    <button type="button" id="cancel" style="display:none" class="btn btn-default">取消
                                    </button>
                                    <button type="button" id="save" style="display:none" class="btn btn-primary">保存修改
                                    </button>
                                </div>
                            </div>
                        </fieldset>

                    </form>
                </div>
            </div>
            <!-- END panel-->
        </section>
        <!-- END Page content-->
    </section>
    <!-- END Main section-->

</section>
<!-- END Main wrapper-->
<!-- START Scripts-->
<!-- Main vendor Scripts-->
<script src="static/vendor/jquery/jquery.min.js"></script>
<script src="static/vendor/bootstrap/js/bootstrap.min.js"></script>
<!-- Plugins-->
<script src="static/vendor/chosen/chosen.jquery.min.js"></script>
<script src="static/vendor/slider/js/bootstrap-slider.js"></script>
<script src="static/vendor/filestyle/bootstrap-filestyle.min.js"></script>
<!-- Animo-->
<script src="static/vendor/animo/animo.min.js"></script>
<!-- Sparklines-->
<script src="static/vendor/sparklines/jquery.sparkline.min.js"></script>
<!-- Slimscroll-->
<script src="static/vendor/slimscroll/jquery.slimscroll.min.js"></script>
<!-- START Page Custom Script-->
<!-- Markdown Area Codemirror and dependencies -->
<script src="static/vendor/codemirror/lib/codemirror.js"></script>
<script src="static/vendor/codemirror/addon/mode/overlay.js"></script>
<script src="static/vendor/codemirror/mode/markdown/markdown.js"></script>
<script src="static/vendor/codemirror/mode/xml/xml.js"></script>
<script src="static/vendor/codemirror/mode/gfm/gfm.js"></script>
<script src="static/vendor/marked/marked.js"></script>
<!-- MomentJs and Datepicker-->
<script src="static/vendor/moment/min/moment-with-langs.min.js"></script>
<script src="static/vendor/datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<!-- Tags input-->
<script src="static/vendor/tagsinput/bootstrap-tagsinput.min.js"></script>
<!-- Input Mask-->
<script src="static/vendor/inputmask/jquery.inputmask.bundle.min.js"></script>
<!-- END Page Custom Script-->
<!-- App Main-->
<script src="static/bootstrap-3.3.7-dist/js/app.js"></script>
<!--XXX2-->
<script>
    var status = 0;
    var init_username;
    var init_realname;
    var init_sex;
    var init_age;
    var init_phonenumber;
    var init_email;

    $("#edit").click(function () {
        if (status == 0) {
            $("#edit").attr("style", "display:none");
            $("#save").attr("style", "display:block");
            $("#cancel").attr("style", "display:block");

            init_username = $("#username").html();
            init_realname = $("#realname").html();
            init_sex = $("#sex").html();
            init_age = $("#age").html();
            init_phonenumber = $("#phonenumber").html();
            init_email = $("#email").html();

            $("#username").html("<input type=\"text\" id=\"usernameInput\" class=\"form-control\" value=" + init_username + ">");
            $("#realname").html("<input type=\"text\" id=\"realnameInput\" class=\"form-control\" value=" + init_realname + ">");
            $("#sex").html("<input type=\"text\" id=\"sexInput\" class=\"form-control\" value=" + init_sex + ">");
            $("#age").html("<input type=\"text\" id=\"ageInput\" class=\"form-control\" value=" + init_age + ">");
            $("#phonenumber").html("<input type=\"text\" id=\"phonenumberInput\" class=\"form-control\" value=" + init_phonenumber + ">");
            $("#email").html("<input type=\"text\" id=\"emailInput\" class=\"form-control\" value=" + init_email + ">");
            status = 1;
        }
        return false;
    });

    $("#save").click(function () {
        if (status == 1) {
            $("#edit").attr("style", "display:block");
            $("#save").attr("style", "display:none");
            $("#cancel").attr("style", "display:none");

            var username = $("#usernameInput").val();
            var realname = $("#realnameInput").val();
            var sex = $("#sexInput").val();
            var age = $("#ageInput").val();
            var phonenumber = $("#phonenumberInput").val();
            var email = $("#emailInput").val();
            var id = ${userid};

            $("#username").html(username);
            $("#realname").html(realname);
            $("#sex").html(sex);
            $("#age").html(age);
            $("#phonenumber").html(phonenumber);
            $("#email").html(email);

            status = 0;

            $.ajax({
                type: "POST",
                url: "/updateUser",
                data: {"username": username,"realname": realname, "sex": sex, "age": age, "phonenumber": phonenumber,"email": email,"id":id},
                success:function(result){
                    console.log(result);
                    //1、解析并显示员工数据
                    if (result==100){
                       alert("更新成功");
                    }
                }
            });
        }
    });

    $("#cancel").click(function () {
        if (status == 1) {
            $("#edit").attr("style", "display:block");
            $("#save").attr("style", "display:none");
            $("#cancel").attr("style", "display:none");

            $("#username").html(init_username);
            $("#realname").html(init_realname);
            $("#sex").html(init_sex);
            $("#age").html(init_age);
            $("#phonenumber").html(init_phonenumber);
            $("#email").html(init_email);
            status = 0
        }
        return false;
    });
    function logout() {
        window.location.href="/logout";
    }

</script>
<!-- END Scripts-->
</body>

</html>