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
        <div class="navbar-header" style="background-color: #22AB38;width: 250px;">
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


    <!--XXX1-->
    <section id="undoneorder">
        <!-- START Page content-->
        <section class="main-content">
            <h3>已核实车辆
                <br>
                <small>可查阅已核实车辆信息</small>
            </h3>
            <!-- START panel-->
            <div class="panel panel-default">
                <div class="panel-heading">已核实车辆信息
                    <a href="#" data-perform="panel-dismiss" data-toggle="tooltip" title="Close Panel" class="pull-right">
                        <em class="fa fa-times"></em>
                    </a>
                    <a href="#" data-perform="panel-collapse" data-toggle="tooltip" title="Collapse Panel" class="pull-right">
                        <em class="fa fa-minus"></em>
                    </a>
                </div>
                <!-- START table-responsive-->
                <div class="table-responsive">
                    <table id="table-id" class="table table-bordered table-hover">
                        <thead>
                        <tr class="table-th">
                            <th>汽车编号</th>
                            <th>汽车图片</th>
                            <th>基本信息</th>
                            <th>售价</th>
                            <th>卖家联系方式</th>
                            <th>验车地址</th>
                            <th>状态</th>
                            <th>操作</th>
                        </tr>
                        <thead>
                        <tbody id= "table-tbody" class="table-tbody">

                        </tbody>
                    </table>
                </div>
                <!-- 显示分页信息 -->
                <div class="row">
                    <!--分页文字信息  -->
                    <div class="col-md-6" id="page_info_area"></div>
                    <!-- 分页条信息 -->
                    <div class="col-md-6" id="page_nav_area">

                    </div>
                </div>
                <!-- END table-responsive-->
                <div class="panel-footer">
                    <div class="row">
                        <div class="col-lg-2">
                            <div class="input-group">

                            </div>
                        </div>
                        <div class="col-lg-8"></div>
                        <div class="col-lg-2">
                            <div class="input-group">
                                <p>客服电话：400-828-3499</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END panel-->
        </section>
        <!-- END Page content-->
    </section>
</section>
<!-- END Main wrapper-->


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
    $(function(){
        to_page(1);
    });
    function to_page(pn){
        $.ajax({
            url:"${pageContext.request.contextPath}/getCheckedSell",
            data:"pn="+pn,
            type:"GET",
            success:function(result){
                console.log(result);
                //1、解析并显示车数据
                build_users_table(result);
                //2、解析并显示分页信息
                build_page_info(result);
                //3、解析显示分页条数据
                build_page_nav(result);

            }
        });
    }

    function build_users_table(result){
        //清空table表格
        $("#table-tbody").empty();
        var cars = result.extend.pageInfo.list;
        //index：下标 item：单个对象
        $.each(cars,function(index,car){
            var id = $("<td></td>").append(car.id);
            var img = $("<img style='width: 47px;height: 32px;' src='" + car.pic + "'/>");
            var pic = $("<td></td>").append(img);
            var detail = $("<a href='/detsil?id="+car.id+"'></a>").append(car.name);
            var name = $("<td></td>").append(detail);
            var nowprice = $("<td></td>").append(car.nowprice);
            var phone = $("<td></td>").append(car.phone);
            var cityname = $("<td></td>").append(car.cityname);
            var status = $("<td></td>").append(car.status);
            var buttonin = $("<button class='btn btn-primary btn-sm edit_btn' onclick='checkedsell("+car.id+")'></button>").append("取消");
            var button = $("<td></td>").append(buttonin);
            $("<tr></tr>").append(id)
                .append(pic)
                .append(name)
                .append(nowprice)
                .append(phone)
                .append(cityname)
                .append(status)
                .append(button)
                .appendTo("#table-tbody");
        });
    }


    //解析显示分页信息
    function build_page_info(result){
        $("#page_info_area").empty();
        $("#page_info_area").append("当前"+result.extend.pageInfo.pageNum+"页,总"+
            result.extend.pageInfo.pages+"页,总"+
            result.extend.pageInfo.total+"条记录");
        totalRecord = result.extend.pageInfo.total;//最后的数据
        currentPage = result.extend.pageInfo.pageNum;//当前页
    }
    //解析显示分页条，点击分页要能去下一页....
    function build_page_nav(result){
        //page_nav_area
        $("#page_nav_area").empty();
        var ul = $("<ul></ul>").addClass("pagination");

        //构建元素
        var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
        var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
        if(result.extend.pageInfo.hasPreviousPage == false){
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        }else{
            //为元素添加点击翻页的事件
            firstPageLi.click(function(){
                to_page(1);
            });
            prePageLi.click(function(){
                to_page(result.extend.pageInfo.pageNum -1);
            });
        }

        var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
        var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
        if(result.extend.pageInfo.hasNextPage == false){
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        }else{
            nextPageLi.click(function(){
                to_page(result.extend.pageInfo.pageNum +1);
            });
            lastPageLi.click(function(){
                to_page(result.extend.pageInfo.pages);
            });
        }

        //添加首页和前一页 的提示
        ul.append(firstPageLi).append(prePageLi);
        //1,2，3遍历给ul中添加页码提示
        $.each(result.extend.pageInfo.navigatepageNums,function(index,item){

            var numLi = $("<li></li>").append($("<a></a>").append(item));
            if(result.extend.pageInfo.pageNum == item){
                numLi.addClass("active");
            }
            numLi.click(function(){
                to_page(item);
            });
            ul.append(numLi);
        });
        //添加下一页和末页 的提示
        ul.append(nextPageLi).append(lastPageLi);

        //把ul加入到nav
        var navEle = $("<nav></nav>").append(ul);
        navEle.appendTo("#page_nav_area");
    }
    function checkedsell(id) {
        $.ajax({
            url:"${pageContext.request.contextPath}/deletecheckedsell",
            data:"id="+id,
            dataType: "text",
            type:"GET",
            success:function(result){
                console.log(result);

                if (result>0){
                    alert("取消成功");
                }else {
                    alert("取消失败");
                }
                window.location.reload();
            }
        });
    }
    function logout() {
        window.location.href="/logout";
    }
</script>
<!-- END Scripts-->
</body>

</html>