<%--
  Created by IntelliJ IDEA.
  User: SL
  Date: 2019/8/16
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="login.jsp"%>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="static/css/index.css"/>
    <link rel="stylesheet" type="text/css" href="static/css/buy.css"/>
    <link rel="stylesheet" type="text/css" href="static/css/common.css"/>
    <link rel="shortcut icon" type="image/x-icon" href="static/img/favicon.ico" media="screen" />
    <script src="static/js/jquery-3.2.1.min.js"></script>
    <script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <style>
        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            border-radius: 6px;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {background-color: #f1f1f1}

        .dropdown:hover .dropdown-content {
            display: block;
        }
        .buyself:hover{
            border: 2px solid white;
        }

    </style>
</head>
<body>
<!-- 侧边导航栏 -->
<div class="nav-flex">
    <ul>
        <li><a href=""><img src="static/img/side-bar@2x_03.png" alt="" style="margin-top:0px;"></a></li>
        <li><a href=""><img src="static/img/side-bar@2x_06.png" alt=""></a></li>
        <li><a href=""><img src="static/img/side-bar@2x_13.png" alt=""></a></li>
        <li><a href=""><img src="static/img/side-bar@2x_09.png" alt=""></a></li>
        <li><a href=""><img src="static/img/side-bar@2x_15.png" alt=""></a></li>
        <li><a href=""><img src="static/img/side-bar@2x_18.png" alt=""></a></li>
    </ul>
</div>
<!-- 头部部分 -->
<header>
    <!-- 导航栏 -->
    <nav>
        <div class="nav-container">
            <div class="nav-left lf">
                <span class="lf"><a href="/"><img src="static/img/logosl.png" alt=""></a></span>
                <a href="" class="city lf"><span id="cityname"></span>&nbsp;<img src="static/img/jiantou-down.png" alt=""></a>
            </div>
            <div class="nav-right rt">
                <ul>
                    <li><a href="/">首页</a></li>
                    <li><a href="/buy">我要买车</a></li>
                    <li><a href="/sell">我要卖车</a></li>
                    <li><a href="/serve">瓜子服务</a></li>
                    <li><a href="/financial">瓜子金融</a></li>
                    <li><a href="https://www.maodou.com/">毛豆新车</a></li>
                    <li>
                        <img src="static/img/login.png" alt="">
                        <a href="#" id="loginBtn" class="login">登录</a>
                        <div class="dropdown">
                            <a href="/personalCenter" id="personalCenter" class="personalCenter"></a>
                            <div class="dropdown-content">
                                <a href="/personalCenter">个人中心</a>
                                <a href="/logout">退出登录</a>
                            </div>
                        </div>
                    </li>
                    <li>400-060-8029</li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- 分类内容 -->
    <div class="fication">
        <div class="fication-top">
            <p class="lf">
                <a href="">爪子二手车</a><span>深圳二手车</span>
            </p>
            <!-- 搜索框 -->
            <div class="search rt">
                <input type="text" placeholder="搜索您想要的车">
                <a href=""><img src="static/img/search.png" alt=""></a>
            </div>
        </div>
        <div class="fication-center">
            <ul>
                <h4 class="lf" >品牌</h4>
                <h5><a href="">不限</a></h5>
                <li><a href="">大众</a></li>
                <li><a href="">福特</a></li>
                <li><a href="">别克</a></li>
                <li><a href="">现代</a></li>
                <li><a href="">雪佛兰</a></li>
                <li><a href="">丰田</a></li>
                <li><a href="">宝马</a></li>
                <li><a href="">本田</a></li>
                <li><a href="">日产</a></li>
                <li><a href="">奔驰</a></li>
                <li><a href="">奥迪</a></li>
                <li><a href="">哈弗</a></li>
                <li><a href="">起亚</a></li>
                <li><a href="">比亚迪</a></li>
                <li><a href="">五菱</a></li>
                <span class="rt">
                 		<a href="">全部&nbsp;<img src="static/img/global-3_04.png" class="rt" /></a>
                 	</span>
            </ul>
            <ul>
                <h4 class="lf">车系</h4>
                <h5><a href="">不限</a></h5>
                <li><a href="">哈弗H6</a></li>
                <li><a href="">福克斯</a></li>
                <li><a href="">五菱宏光</a></li>
                <li><a href="">迈腾</a></li>
                <li><a href="">途观</a></li>
                <li><a href="">朗逸</a></li>
                <li><a href="">宝来</a></li>
                <li><a href="">大众POLO</a></li>
                <li><a href="">捷达</a></li>
                <li><a href="">速腾</a></li>
                <li><a href="">宝马5系</a></li>
                <li><a href="">奥迪A6L</a></li>
            </ul>
            <ul>
                <h4 class="lf">价格</h4>
                <h5><a href="">不限</a></h5>
                <li><a href="">3万以下</a></li>
                <li><a href="">3-5万</a></li>
                <li><a href="">5-7万</a></li>
                <li><a href="">7-9万</a></li>
                <li><a href="">9-12万</a></li>
                <li><a href="">12-16万</a></li>
                <li><a href="">16-20万</a></li>
                <li><a href="">20万以上</a></li>
                <li>
                    <input type="text" />&nbsp;-
                    <input type="text" />&nbsp;万&nbsp;

                </li>
                <li><button type="submit" value="确定"></button></li>
            </ul>
            <ul class="menu">
                <h4 class="lf">更多</h4>
                <li><a href="">年龄<img src="static/img/global-3_04.png"/></a></li>
                <li><a href="">变速箱<img src="static/img/global-3_04.png"/></a></li>
                <li><a href="">车型<img src="static/img/global-3_04.png"/></a></li>
                <li><a href="">里程<img src="static/img/global-3_04.png"/></a></li>
                <li><a href="">排量<img src="static/img/global-3_04.png"/></a></li>
                <li><a href="">排放标准<img src="static/img/global-3_04.png"/></a></li>
                <li><a href="">座位数<img src="static/img/global-3_04.png"/></a></li>
                <li><a href="">燃油类型<img src="static/img/global-3_04.png"/></a></li>
                <li><a href="">颜色<img src="static/img/global-3_04.png"/></a></li>
                <li><a href="">车辆所在地<img src="static/img/global-3_04.png"/></a></li>
                <span class="rt">
                 		<a href="">全部&nbsp;<img src="static/img/global-3_04.png" class="rt" /></a>
                 	</span>
            </ul>
        </div>
        <p>在 "深圳二手车" 中为您找到5024辆好车</p>
    </div>
</header>
<!--主体内容-->
<section>
    <div class="section-top">
        <h1><a href="">全部</a></h1><em></em>
        <h1><a href="">付三成</a></h1><em></em>
        <h1><a href="">保卖车</a></h1>
        <img src="static/img/icon_02.png" alt="" />
        <ul class="rt">
            <li><a href="">默认排序</a></li>
            <li><a href="">最新发布</a></li>
            <li><a href="">价格</a>
                <img src="static/img/icon_06.png" alt="" />
            </li>
            <li><a href="">车龄</a>
                <img src="static/img/icon_06.png" alt="" />
            </li>
            <li><a href="">里程</a>
                <img src="static/img/icon_06.png" alt="" />
            </li>
            <li><a href="">热门筛选<span>&nbsp;＋</span></a></li>
        </ul>
    </div>
    <div class="content">
        <div class="guess" id="cars">
        </div>
        <!-- 显示分页信息 -->
        <div class="row">
            <!--分页文字信息  -->
            <div class="col-md-6" id="page_info_area"  style="width: 480px;">

            </div>
            <!-- 分页条信息 -->
            <div class="col-md-6" id="page_nav_area">

            </div>
        </div>
    </div>

</section>
<!--底部部分-->
<footer	style="background-color:#2a2c37;">
    <div class="subject">
        <div class="top">
            <div class="left lf">
                <img src="static/img/global-3_03.png" class="logo lf" />
                <div class="phone lf">
                    <p>咨询电话：400-060-8029 &nbsp;&nbsp;（周一至周日 8:00-21:00）</p>
                    <p>服务监督热线： 400-066-8780  &nbsp;&nbsp;（周一至周日 9:00-21:00）&nbsp;&nbsp;</p>
                    <br>
                    <p>互联网违法或不良信息举报联系方式： </p>
                    <p>邮箱： jubao@guazi.com  电话：010-89191670</p>
                </div>
                <div class="lf">
                    <img src="static/img/ewm-wx-2.png" alt="">
                    <p style="text-align:center;">关注微信</p>
                </div>
                <div class="lf" style="margin-left:30px;">
                    <img src="static/img/ewm-app-2.png" alt="">
                    <p style="text-align:center;">下载APP</p>
                </div>
            </div>
            <div class="right rt">
                <ul>
                    <li><a href="">关于瓜子</a></li>
                    <li><a href="">加入我们</a></li>
                    <li><a href="">联系我们</a></li>
                    <li><a href="">服务保障</a></li>
                    <li><a href="">隐私声明</a></li>
                    <li><a href="">服务条款</a></li>
                </ul>
                <p>Copyright 2018 www.guazi.com All Rights Reserved</p>
                <p>京ICP备15053955号 ICP证151071号</p>
                <p style="	margin-top:5px;">
                    <a href="">
                        <img src="static/img/icon-foot_03_02.png" alt="">
                        京公网安备11010802020161号
                    </a>
                </p>
                <p style="margin-top:5px;">
                    <img src="static/img/icon-foot_01.png" alt="">
                    <img src="static/img/icon-foot_02.png" alt="">
                </p>
            </div>
        </div>
        <div class="bottom">
            <ul>
                <h4>热门品牌：</h4>
                <li style="	margin-left:10px;"><a href="">北京二手大众</a></li>
                <li><a href="">北京二手奔驰</a></li>
                <li><a href="">北京二手宝马</a></li>
                <li><a href="">北京二手奥迪</a></li>
                <li><a href="">北京二手现代</a></li>
                <li><a href="">北京二手福特</a></li>
                <li><a href="">北京二手别克</a></li>
                <li><a href="">北京二手丰田</a></li>
                <li><a href="">北京二手日产</a></li>
                <li><a href="">北京二手本田</a></li>
                <li><a href="">北京二手路虎</a></li>
                <a href="" class="rt"><img src="static/img/global-3_04.png" alt=""></a>
            </ul>
            <br>
            <ul>
                <h4>热门车系：</h4>
                <li style="	margin-left:10px;"><a href="">北京二手福特福克斯</a></li>
                <li><a href=""> 北京二手奥迪奥迪A6...</a></li>
                <li><a href=""> 北京二手奥迪奥迪A4...</a></li>
                <li><a href=""> 北京二手奥迪奥迪Q5</a></li>
                <li><a href=""> 北京二手大众迈腾</a></li>
                <li><a href=""> 北京二手大众速腾</a></li>
                <li><a href=""> 北京二手大众途观</a></li>
                <li><a href="">北京二手大众高尔夫</a></li>
                <a href="" class="rt"><img src="static/img/global-3_04.png" alt=""></a>
            </ul>
            <br>
            <ul>
                <h4>友情链接：</h4>
                <li style="	margin-left:10px;"><a href="">物流百科</a></li>
                <li><a href="">  赶集二手车</a></li>
                <li><a href="">  北京二手车</a></li>
                <li><a href="">  北京天气预报15天</a></li>
                <li><a href="">  北京装修网</a></li>
                <li><a href="">  北京个人二手车</a></li>
                <li><a href=""> 违章查询</a></li>
                <li><a href=""> 北京车市</a></li>
                <li><a href=""> 北京二手车</a></li>
                <li><a href=""> 北京信息港</a></li>
                <li><a href=""> 北京百姓网</a></li>
                <li><a href="">  车讯网</a></li>
                <a href="" class="rt"><img src="static/img/global-3_04.png" alt=""></a>
            </ul>
            <br>
            <ul>
                <h4>热门城市：</h4>
                <li style="	margin-left:10px;"><a href="">全国二手车</a></li>
                <li><a href="">  北京二手车</a></li>
                <li><a href="">  郑州二手车</a></li>
                <li><a href="">  昆明二手车</a></li>
                <li><a href="">  沈阳二手车</a></li>
                <li><a href="">  成都二手车</a></li>
                <li><a href=""> 上海二手车</a></li>
                <li><a href=""> 南宁二手车</a></li>
                <li><a href=""> 广州二手车</a></li>
                <li><a href=""> 重庆二手车</a></li>
                <li><a href=""> 天津二手车</a></li>
                <li><a href="">深圳二手车</a></li>
                <a href="" class="rt"><img src="static/img/global-3_04.png" alt=""></a>
            </ul>
            <br>
            <ul>
                <h4>移动版：</h4>
                <li style="	margin-left:10px;"><a href="">瓜子二手车北京移动页</a></li>
            </ul>
            <br>
            <ul>
                <h4>热门页面：</h4>
                <li style="	margin-left:10px;"><a href="">1万元二手车</a></li>
                <li><a href="">  2万元二手车</a></li>
                <li><a href="">  3万元二手车</a></li>
                <li><a href="">  4万元二手车</a></li>
                <li><a href="">  5万一下二手车</a></li>
                <li><a href="">   二手越野车</a></li>
                <li><a href="">二手商务车</a></li>
                <li><a href="">  二手跑车</a></li>
                <li><a href="">  自动挡二手车</a></li>
                <li><a href=""> 急卖二手车</a></li>
                <li><a href=""> 低价出售二手车</a></li>
                <a href="" class="rt"><img src="static/img/global-3_04.png" alt=""></a>
            </ul>
            <br>
            <p>车好多旧机动车经纪（北京）有限公司    北京市丰台区南四环中路260号北京新发地汽车交易市场旧车经营区B区178号    010-57317000</p>
        </div>
    </div>
</footer>
<script type="text/javascript">
    var totalRecord,currentPage;
    $(function (){
        isLogin();
        getCurrentCity();
    });
    function detail(id) {
        window.location.href="/detail?id="+id+"";
    }
    function getCurrentCity(){
        var cityname;
        var adcode;
        $.ajax({
            type: "get",
            url: "https://restapi.amap.com/v3/ip?key=2acf0a74a75c1ded782ebbf9f3ded364",
            dataType: 'text',
            success: function(data) {
                //转换为JSON对象
                var jsonObj = eval("(" + data.replace('(','').replace(')','').replace(';','') + ")");
                //当前城市
                adcode=jsonObj.adcode;
                cityname=jsonObj.city.replace("市","");
                $.ajax({
                    url:"${pageContext.request.contextPath}/title",
                    data:{"adcode":adcode,"cityname":cityname},
                    type:"get",
                    success:function(result){
                        var title="${title}";
                        if (title==""){
                            window.location.reload();
                        }
                        console.log(result);
                        document.title = title;
                    }
                });





                $(function(){
                    to_page(1);
                });
                function to_page(pn){
                    $.ajax({
                        url:"${pageContext.request.contextPath}/getBuyCars",
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
                    $("#cars").empty();
                    var cars = result.extend.pageInfo.list;
                    var str="      <button class=\"sales\">急售</button>\n" +
                        "                                                    <button class=\"service\">超值</button>\n" +
                        "                                                    <!--急降logo-->\n" +
                        "                                                    <div class=\"drop\">\n" +
                        "                                                        <i>急降</i>\n" +
                        "                                                        <br />\n" +
                        "                                                        <i>3000元</i>\n" +
                        "                                                    </div>";
                    //index：下标 item：单个对象
                    $.each(cars,function(index,car){
                        var img = $("<img style='width: 287px;height: 192px;' src='" + car.pic + "'/>");
                        var h1 = $("<h1></h1>").append(car.name);
                        var p = $("<p></p>").append(car.status);
                        var span = $("<span></span>").append(car.nowprice + "<b>万</b>");
                        var s = $("<s></s>").append(car.orprice + "万");
                        $("<div class=\"buyself rt\" onclick='detail("+car.id+")'></div>").append(img)
                            .append(h1)
                            .append(p)
                            .append(span)
                            .append(s)
                            .append(str)
                            .appendTo("#cars");
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
                    var navEle = $("<nav style='background-color: #F5F5F7;'></nav>").append(ul);
                    navEle.appendTo("#page_nav_area");
                }
            }
        });
    }


    function isLogin() {
        var username="${username}";
        var replace="****";
        if (username!=""){
            username=username.substr(0,3)+replace+username.substring(7,11);
            $("#personalCenter").html(username);
            $("#loginBtn").hide();
            $("#personalCenter").show();
        }else {
            $("#loginBtn").show();
            $("#personalCenter").hide();
        }
    }
</script>
</body>
</html>