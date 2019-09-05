<%--
  Created by IntelliJ IDEA.
  User: SL
  Date: 2019/8/16
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="login.jsp"%>
<html>
<head>
    <meta charset="utf-8" />
    <meta name='viewport' content='width=device-width,minimum-scale=1.0 maximum-scale=1.0 user-scalable=no' />
    <link rel="stylesheet" type="text/css" href="static/css/index.css"/>
    <link rel="stylesheet" type="text/css" href="static/css/common.css"/>
    <link rel="stylesheet" href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="static/js/jquery-3.2.1.min.js"></script>
    <script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <link rel="shortcut icon" type="image/x-icon" href="static/img/favicon.ico" media="screen" />
    <title></title>
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
<!--头部部分-->
<div id="header">
    <!--轮播图-->
    <div class="scroll">
        <!--顶部导航栏-->
        <div class="nav">
            <div class="nav-left lf">
                <span class="lf"><a href=""><img src="static/img/logosl.png" alt=""></a></span>
                <a href="" class="city lf"><span id="cityname"></span>&nbsp;<img src="static/img/jiantou-down.png" style="width:9px;height:4px;position:relative;top:-10px;left:28px;"></a>
                <!-- 二级菜单 -->
                <div class="secondary">
                    <p>周边</p>
                    <ul>
                        <li><a href="" id="city1">南昌</a></li>
                        <li><a href="" id="city2">深圳</a></li>
                        <li><a href="" id="city3">南昌</a></li>
                        <li><a href="" id="city4">深圳</a></li>
                        <li><a href="" id="city5">南昌</a></li>
                        <li><a href="" id="city6">深圳</a></li>
                        <li><a href="" id="city7">南昌</a></li>
                        <li><a href="" id="city8">深圳</a></li>
                    </ul>
                    <p>热门</p>
                    <ul>
                        <li><a href="" id="city9">深圳</a></li>
                        <li><a href="" id="city40">南昌</a></li>
                        <li><a href="" id="city41">深圳</a></li>
                        <li><a href="" onclick="city()">南昌</a></li>
                        <li><a href="" id="city11">深圳</a></li>
                        <li><a href="" id="city12">南昌</a></li>
                        <li><a href="" id="city13">深圳</a></li>
                        <li><a href="" id="city14">南昌</a></li>
                        <li><a href="" id="city15">深圳</a></li>
                        <li><a href="" id="city16">南昌</a></li>
                        <li><a href="" id="city17">深圳</a></li>
                    </ul>
                    <p>A</p>
                    <ul>
                        <li><a href="" id="city18">南昌</a></li>
                        <li><a href="" id="city19">南昌</a></li>
                        <li><a href="" id="city20">南昌</a></li>
                    </ul>
                    <p>B</p>
                    <ul>
                        <li><a href="" id="city21">深圳</a></li>
                        <li><a href="" id="city22">深圳</a></li>
                        <li><a href="" id="city23">深圳</a></li>
                        <li><a href="" id="city24">深圳</a></li>
                    </ul>
                    <p>C</p>
                    <ul>
                        <li><a href="" id="city25">深圳</a></li>
                        <li><a href="" id="city26">深圳</a></li>
                        <li><a href="" id="city27">深圳</a></li>
                        <li><a href="" id="city28">深圳</a></li>
                        <li><a href="" id="city29">深圳</a></li>
                    </ul>
                    <p>D</p>
                    <ul>
                        <li><a href="" id="city30">南昌</a></li>
                        <li><a href="" id="city31">南昌</a></li>
                        <li><a href="" id="city32">南昌</a></li>
                        <li><a href="" id="city33">南昌</a></li>
                        <li><a href="" id="city34">南昌</a></li>
                    </ul>
                    <p>E</p>
                    <ul>
                        <li><a href="" id="city35">南昌</a></li>
                        <li><a href="" id="city36">南昌</a></li>
                        <li><a href="" id="city37">南昌</a></li>
                        <li><a href="" id="city38">南昌</a></li>
                        <li><a href="" id="city39">南昌</a></li>
                    </ul>
                </div>
            </div>
            <div class="nav-right rt">
                <ul>
                    <li><a href="/" >首页</a></li>
                    <li><a href="/buy" >我要买车</a></li>
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
                    <li>400-023-1529</li>
                </ul>
            </div>
        </div>
        <!-- 轮播图切换点 -->
<%--        <div class="yuan">--%>
<%--            <ul>--%>
<%--                <li><a href=""></a></li>--%>
<%--                <li><a href=""></a></li>--%>
<%--                <li><a href=""></a></li>--%>
<%--                <li><a href=""></a></li>--%>
<%--                <li><a href=""></a></li>--%>
<%--            </ul>--%>
<%--        </div>--%>
        <div class="content">
            <!--买车卖车-->
            <div class="deal">
                <!--左边买车部分-->
                <div class="deal-left lf">
                    <div class="deal-search">
                        <a href="/buy">我要买车></a>
                        <!-- 搜索框 -->
                        <div class="search rt">
                            <input type="text" placeholder="搜索您想要的车">
                            <!--搜索LOGO图片-->
                            <img src="static/img/search.png"/>
                        </div>
                    </div>
                    <!--车品分类-->
                    <ul>
                        <li><a href="/buy">
                            <img src="static/img/dazhong.png"/>
                            大众
                        </a></li>
                        <li><a href="/buy">3万以下</a></li>
                        <li><a href="">超值</a></li>
                    </ul>
                    <ul>
                        <li><a href="/buy">
                            <img src="static/img/hyundai.png"/>
                            现代
                        </a></li>
                        <li><a href="/buy">3-5万</a></li>
                        <li><a href="/buy">急售</a></li>
                    </ul>
                    <ul>
                        <li><a href="/buy">
                            <img src="static/img/ford.png" />
                            福特
                        </a></li>
                        <li><a href="/buy">5-7万</a></li>
                        <li><a href="/buy">练手车</a></li>
                    </ul>
                    <ul>
                        <li><a href="/buy">
                            <img src="static/img/buick.png"/>
                            别克
                        </a></li>
                        <li><a href="/buy">7-9万</a></li>
                        <li><a href="/buy">准新车</a></li>
                    </ul>
                    <ul>
                        <li><a href="/buy">
                            <img src="static/img/audi.png" />
                            奥迪
                        </a></li>
                        <li><a href="/buy">9-12万</a></li>
                        <li><a href="/buy">保卖车</a></li>
                    </ul>
                    <ul>
                        <li><a href="/buy">
                            <img src="static/img/toyota.png"/>
                            丰田
                        </a></li>
                        <li><a href="/buy">12-16万</a></li>
                        <li><a href="/buy">SUV</a></li>
                    </ul>
                    <ul>
                        <li><a href="/buy">
                            更多
                        </a></li>
                        <li><a href="/buy">3万以下</a></li>
                        <li><a href="/buy">更多</a></li>
                    </ul>
                </div>
                <!--右边卖车部分-->
                <div class="deal-right rt">
                    <p>
                        <a href="/buy">我要卖车></a>
                        <i>已有<span>37238928</span>人提交申请</i>
                    </p>
                    <!--输入框-->
                    <input type="text" placeholder="请输入您的手机号"/>
                    <div class="button">
                        <button type="button">我要卖车</button>
                        <button type="button">免费估计</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--主体部分-->
<div id="section">
    <div class="content">
        <!--保卖车-->
        <div class="keepcar">
            <h3>保卖车 &nbsp;&nbsp;<span>限时出售 l 性价比高</span></h3>
            <div class="keepcar-1 lf">
                <a href="/buy"><img src="static/img/9004988288a39bacd6cbe8bcc99e33a9.png"/></a>
            </div>
            <div class="keepcar-2 lf">
                <a href="/buy"><img src="static/img/21cef1447ea70afb7204cd4d274ef07a.png"/></a>
                <p>选你所爱</p>
                <p>三年内准新车</p>
            </div>
            <div class="keepcar-3 lf">
                <div class="keepcar-f3">
                    <a href="/buy"><img src="static/img/4817325f2070ad09f80b2106163eeca9.png"/></a>
                    <p>入门首选</p>
                    <p>5-7万品质二手车</p>
                </div>
                <div class="keepcar-l3">
                    <a href="/buy"><img src="static/img/75c06a9013efa1843d8d59764e0a1995.png"/></a>
                    <p>车美价优</p>
                    <p>体验手动乐趣</p>
                </div>
            </div>
            <div class="keepcar-4 lf">
                <a href="/buy"><img src="static/img/ec0a46715f57e95a6bce7ba8b4d8a1d6.png"/></a>
            </div>
        </div>
        <!--瓜子金融-->
        <div class="financial">
            <h3>瓜子金融 &nbsp;&nbsp;<span>几十款精选金融产品 l 最快30分钟完成审批 l 95%以上申请可通过 l 金融专员全程服务</span></h3>
            <div class="keepcar-1 lf">
                <a href="/buy"><img src="static/img/fb483bb5f39eb948ae73d23ee8e0674f.png"/></a>
            </div>
            <div class="keepcar-2 lf">
                <a href="/buy"><img src="static/img/1fab5316dfd667e31e937259d484c992.png"/></a>
                <p>日供十元贷回家</p>
                <p>5万以内 练手车</p>
            </div>
            <div class="keepcar-3 lf">
                <div class="keepcar-f3">
                    <a href="/buy"><img src="static/img/fdb1c591becb8093392db2182d77eac8.png"/></a>
                    <p>千元月供买好车</p>
                    <p>5-10万 中产车</p>
                </div>
                <div class="keepcar-l3">
                    <a href="/buy"><img src="static/img/a5f62530e1be795035c24f2806123e59.png"/></a>
                    <p>五万首付高品质</p>
                    <p>10-20万 热门车</p>
                </div>
            </div>
            <div class="keepcar-4 lf">
                <a href="/buy"><img src="static/img/b76b6cb302ce377a830db817ce420cdd.png"/></a>
            </div>
        </div>
        <!--毛豆新车-->
        <div class="newcar">
            <h3>毛豆新车 &nbsp;&nbsp;<span>包购置税 l 送一年保险 l 一年后灵活购买 l 三年还款超低月供</span></h3>
            <div class="keepcar-1 lf">
                <a href="/buy"><img src="static/img/074bc4802b8c842c9186b071c9281937.jpg"/></a>
            </div>
            <div class="keepcar-2 lf">
                <a href="/buy"><img src="static/img/35563a719cdfee8b8586087ce050a48c.jpg"/></a>
                <p>雪佛兰科沃兹</p>
                <p>直降5000元</p>
            </div>
            <div class="keepcar-3 lf">
                <div class="keepcar-f3">
                    <a href="/buy"><img src="static/img/66fb5e758873fe0082fe94b9b31e7421.jpg"/></a>
                    <p>别克新英朗</p>
                    <p>直降2200元</p>
                </div>
                <div class="keepcar-l3">
                    <a href="/buy"><img src="static/img/7317f440aa518c3b7df0ddab8f6253ab.jpg"/></a>
                    <p>名爵ZS</p>
                    <p>首付9900元</p>
                </div>
            </div>
            <div class="keepcar-4 lf">
                <a href="/buy"><img src="static/img/6cea41a13e4330ab7b25079a57b896ba.jpg"/></a>
            </div>
        </div>
    </div>
    <!--买卖流程-->
    <div class="showtime">
        <div class="flow">
            <div class="buycar rt">
                <span><a href="">买车流程</a></span>
                <span><a href="">买车流程</a></span>
                <h1>预约看车</h1>
                <p>拨打400-023-1529或在线预约</p>
                <div class="step lf">
                    <img src="static/img/logo5_13.png"/>
                    <p><a href="">预约看车</a></p>
                    <span>＞</span>
                </div>
                <div class="step lf">
                    <img src="static/img/logo5_08.png"/>
                    <p><a href="">专人带看</a></p>
                    <span>＞</span>
                </div>
                <div class="step lf">
                    <img src="static/img/logo5_03.png"/>
                    <p><a href="">签署合同</a></p>
                    <span>＞</span>
                </div>
                <div class="step lf">
                    <img src="static/img/logo5_05.png"/>
                    <p><a href="">交易过户</a></p>
                </div>
            </div>
        </div>
    </div>
    <!--猜你喜欢-->
    <div class="content">
        <div class="guess">
            <ul>
                <li><a href="/buy">猜您喜欢</a></li>
                <li><a href="/buy">保卖车</a></li>
                <li><a href="/buy">最新上架</a></li>
                <li><a href="/buy">特价急售</a></li>
                <li><a href="/buy">准新车</a></li>
                <li><a href="/buy">练手车</a></li>
                <li><a href="/buy">SUV</a></li>
            </ul><div id="cars"></div>

            <p><a href="/buy">更多猜您喜欢&nbsp;&nbsp;&nbsp;<img src="static/img/logo_02.png" alt="" /></a></p>
        </div>
    </div>
    <!--广告-->
    <div class="banner">
        <img src="static/img/logo_012.png" alt="" />
        <p>免费咨询电话：400-060-8029</p>
        <button style="background-color:#3cb46d;" onclick="buy()">我要买车</button>
        <button style="background-color:#97cf00;">我要卖车</button>
    </div>
</div>
<!--底部部分-->
<div id="footer" style="background-color:#2a2c37;">
<div class="subject">
    <div class="top">
        <div class="left lf">
            <img src="static/img/global-3_03.png" class="logo lf">
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
</div>

<script type="text/javascript">
    $(function (){
        isLogin();
        getCurrentCity();
        city();
    });
    function buy() {
        window.location.href="/buy";
    }
    function detail(id) {
        window.location.href="/detail?id="+id+"";
    }

    function city() {
        $("#city1,#city2,#city3,#city4,#city5,#city6,#city7,#city8,#city9,#city10,#city11,#city12,#city13,#city14,#city15,#city16,#city17,#city18,#city19,#city20,#city21,#city22,#city23,#city24,#city25,#city26,#city27,#city28,#city29,#city30,#city31,#city32,#city33,#city34,#city35,#city36,#city37,#city38,#city39,#city40,#41").click(function () {
            var cityname=$(this).html();
            $.ajax({
                url:"${pageContext.request.contextPath}/selectcity",
                data:{"cityname":cityname},
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
        });

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

                    $.ajax({
                        url:"${pageContext.request.contextPath}/getCars",
                        data:{"cityname":cityname},
                        type:"get",
                        datatype: "json",
                        success:function(result){
                            var i=0;
                            var str="      <button class=\"sales\">急售</button>\n" +
                                "                                                    <button class=\"service\">超值</button>\n" +
                                "                                                    <!--急降logo-->\n" +
                                "                                                    <div class=\"drop\">\n" +
                                "                                                        <i>急降</i>\n" +
                                "                                                        <br />\n" +
                                "                                                        <i>3000元</i>\n" +
                                "                                                    </div>";
                                $.each(result, function (index, car) {

                                    var img = $("<img src='" + car.pic + "'/>");
                                    var h1 = $("<h1></h1>").append(car.name);
                                    var p = $("<p></p>").append(car.status);
                                    var span = $("<span></span>").append(car.nowprice + "<b>万</b>");
                                    var s = $("<s></s>").append(car.orprice + "万");
                                    if (i<12){
                                        $("<div class=\"buyself rt\" onclick='detail("+car.id+")'></div>").append(img)
                                            .append(h1)
                                            .append(p)
                                            .append(span)
                                            .append(s)
                                            .append(str)
                                            .appendTo("#cars");
                                    }
                                    i++;
                                })

                        }
                    });
                $("#cityname").html("${cityname}");
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

