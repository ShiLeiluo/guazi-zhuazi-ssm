<%--
  Created by IntelliJ IDEA.
  User: SL
  Date: 2019/8/18
  Time: 19:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="shortcut icon" type="image/x-icon" href="static/img/favicon.ico" media="screen" />
    <script src="static/js/jquery-3.2.1.min.js"></script>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body{
            font: 14px / 1.5 "微软雅黑",Verdana,Tahoma,Arial,sans-serif,"宋体";
            line-height: 30px;
        }
        /* 登录、注册区域 */
        .login{
            text-align: center;
        }
        /* 登录标题 */
        h4{
            font-size: 20px;
            line-height: 50px;
            margin: 0 auto;
        }
        label{
            margin-right: 10px;
            color: #888;
        }
        /* 用户名、密码输入框 */
        .username{
            border: 1px solid #ccc;
            border-radius: 3px;
            padding: 10px 5px;
            width: 260px;
        }
        .password{
            border: 1px solid #ccc;
            border-radius: 3px;
            padding: 10px 5px;
            width: 150px;
        }
        .vCode{
            border: 1px solid #3cb46d;
            border-radius: 3px;
            background-color: #3cb46d;
            width: 104px;
            height: 38px;
        }
        /* 每个输入框之间间距 */
        .item{
            margin: 20px auto;
        }
        /* 提交按钮 */
        .logSubmitBtn,.resSubmitBtn{
            background: #3cb46d;
            border: 1px solid #3cb46d;
            border-radius: 5px;
            padding: 10px 5px;
            width: 262px;
            margin: 5px 0 0 21px;
            color: #fff;
        }
        /* 信息填写错误时提示 */
        .error-msg{
            color: #e40;
        }
        .error-username{
            color: #e40;
        }
        /* 弹出层遮罩 */
        .layer-mask{
            display: none;      /* 遮罩默认开始是不显示的 */
            z-index: 99999;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: #000;
            opacity: 0.5;       /* 设置透明度为50% */
        }
        /* 弹出层窗体 */
        .layer-pop{
            display: none;      /* 默认开始是不显示的 */
            z-index: 100000;
            position: fixed;
            top: 0;             /* 设置水平垂直居中 */
            left: 0;
            right: 0;
            bottom: 0;
            margin: auto;
            width: 800px;
            height: 450px;
            border-radius: 10px;
            background: #fff;
        }
        /* 弹出层关闭按钮 */
        .layer-close{
            float: right;
            width: 24px;
            height: 24px;
            border:3px solid #fff;
            text-align: center;       /* 设置内容居中显示 */
            line-height: 24px;        /* 设置内容的高度 */
            border-radius: 50%;
            background: #eee;
            margin: -12px -12px 0 0;
        }
        /* 添加鼠标滑过的样式 */
        .layer-close:hover{
            cursor: pointer;
            background: #ccc;
            color: #fff;
        }

        .switch_box{
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            max-width: 200px;
            min-width: 200px;
            height: 200px;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            -webkit-box-flex: 1;
            -ms-flex: 1;
            flex: 1;
        }

        /* Switch 1 Specific Styles Start */


        input[type="checkbox"].switch_1{
            font-size: 30px;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            width: 3.5em;
            height: 1.5em;
            background: #ddd;
            border-radius: 3em;
            position: relative;
            cursor: pointer;
            outline: none;
            -webkit-transition: all .2s ease-in-out;
            transition: all .2s ease-in-out;
        }

        input[type="checkbox"].switch_1:checked{
            background: #3CB46D;
        }

        input[type="checkbox"].switch_1:after{
            position: absolute;
            content: "";
            width: 1.5em;
            height: 1.5em;
            border-radius: 50%;
            background: #fff;
            -webkit-box-shadow: 0 0 .25em rgba(0,0,0,.3);
            box-shadow: 0 0 .25em rgba(0,0,0,.3);
            -webkit-transform: scale(.7);
            transform: scale(.7);
            left: 0;
            -webkit-transition: all .2s ease-in-out;
            transition: all .2s ease-in-out;
        }

        input[type="checkbox"].switch_1:checked:after{
            left: calc(100% - 1.5em);
        }
    </style>

</head>
<body>
<!-- 弹出层 -->
<div id="layer-mask" class="layer-mask"></div>           <!--弹出层遮罩-->
<div id="layer-pop" class="layer-pop">                   <!--弹出层窗体-->
    <div id="layer-close" class="layer-close" >×</div>    <!--弹出层关闭按钮-->
    <div id="layer-content" class="layer-content"></div> <!--弹出层内容区域-->
</div>
<!-- 登录窗体 -->
<div id="loginHtml" style="display: none;">
    <div class="login">
        <h3 class="title" style="margin-top: 40px">爪子二手车直卖网</h3>
        <div class="item" style="margin-top: 40px;margin-left: -60px;">
            <label>账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号&emsp;</label>
            <input type="text" id="username" class="username" name="username" onblur="checkusername()" placeholder="手机号码">
            <p class="error-username"></p>
        </div>
        <div class="item" style="margin-left: -60px;">
            <label>验&nbsp;&nbsp;&nbsp;证&nbsp;&nbsp;&nbsp;码</label>
            <input type="password" id="password" class="password" name="password" placeholder="请输入验证码">
            <input type="button" id="vCode" class="vCode" value="获取验证码">
            <p class="error-msg"></p>
        </div>

        <div class="switch_box box_1" style="width: 100px; height: 50px; margin-left: 300px;">
            <label>管&nbsp;&nbsp;&nbsp;理&nbsp;&nbsp;&nbsp;员</label>&emsp;
            <input type="checkbox" class="switch_1" id="manager" value="管理员">
        </div>

        <div class="item">
            <input type="submit" id="logSubmitBtn" class="logSubmitBtn" value="登录">
        </div>
        <div>
            <p class="free-phone">免费咨询400-023-1529</p>
            <p class="agree-text">
                登录即视为同意
                <a href="file/UserAgreement.pdf" data-gzlog="tracking_type=click&amp;eventid=92392518" target="_blank" style="color: #3cb46d">《用户使用协议》</a>
                及
                <a href="file/PrivacyPolicy.pdf" data-gzlog="tracking_type=click&amp;eventid=92392518" target="_blank" style="color: #3cb46d">《隐私权条款》</a>
            </p>
        </div>
    </div>
</div>
<script>
    $(document).ready(function($){
        // 弹出层关闭回调函数
        function closeCallback(){
            $(".error-msg").html("");
        }
        // 关闭弹出层
        function hideLayer(){
            $("#layer-mask").hide();             // 隐藏弹出层遮罩
            $("#layer-pop").hide();              // 隐藏弹出层窗体
        }
        // 显示弹出层函数
        function showLayer(html, width, height, closeCallback){
            $("#layer-mask").show();             // 显示弹出层遮罩
            $("#layer-pop").show();              // 显示弹出层窗体
            $("#layer-pop").css({                // 设置弹出层窗体样式
                width: 800,
                height: 450
            });
            $("#layer-content").html(html);      // 填充弹出层窗体内容
            $("#layer-close").click(function(){
                hideLayer();                     //关闭弹出层
                closeCallback();                 //关闭弹出层的回调函数
            })
        }

        // 点击登录按钮显示弹出层
        $("#loginBtn").click(function(){
            var loginHtml = $("#loginHtml").html();          // 获取登录窗体的代码
            showLayer(loginHtml, 500, 300, closeCallback);   // 显示弹出层

            $("#vCode").click(function () {
                var username = $("input[name='username']").val();

                $.ajax({
                    url:"${pageContext.request.contextPath}/verificationCode",
                    data:"username="+username,
                    type:"GET",
                    success:function(result){
                        console.log(result);
                        //1、解析并显示员工数据
                        if (result!=100){
                            $(".error-msg").html("获取验证码失败");
                        }
                    }
                });
                    var code = $("#vCode");
                    code.attr("disabled","disabled");
                    setTimeout(function(){

                        code.css("opacity","0.8");

                    },0);

                    var time = 60;

                    var set=setInterval(function(){

                        code.val(--time+"秒后重新获取");

                    }, 1000);

                    setTimeout(function(){

                        code.attr("disabled",false).val("重新获取验证码");

                        clearInterval(set);

                    }, 60000);


            });
            $("#logSubmitBtn").click(function(){             // 简单的登录表单验证
                var username = $("input[name='username']").val();
                var password = $("input[name='password']").val();
                if( $('#manager').is(':checked')){
                    $.ajax({
                        url:"${pageContext.request.contextPath}/adminLogin",
                        data:{"username":username,"password":password},
                        type:"GET",
                        success:function(result){
                            console.log(result);
                            if (result!=100){
                                $(".error-msg").html("您不是管理员或验证码错误");
                            }else {
                                window.location.href="/admin";
                            }
                        }
                    });
                }else {
                    $.ajax({
                        url:"${pageContext.request.contextPath}/login",
                        data:{"username":username,"password":password},
                        type:"GET",
                        success:function(result){
                            console.log(result);
                            //1、解析并显示员工数据
                            if (result.code==200){
                                $(".error-msg").html("验证码错误");
                            }else if (result.code==300){
                                alert(result.msg);
                            } else {
                                window.location.reload();
                            }
                        }
                    });
                }

            });
        })
    });
    function checkusername() {
        var username = $("#username").val();
        if(!(/^1[34578]\d{9}$/.test(username))){
            $(".error-username").html("手机号码有误，请重填");
            $("#password").attr("disabled",true);
            $("#vCode").attr("disabled",true);
            $("#logSubmitBtn").attr("disabled",true);
        }else {
            $(".error-username").html("");
            $("#password").attr("disabled",false);
            $("#vCode").attr("disabled",false);
            $("#logSubmitBtn").attr("disabled",false);
        }
    }
</script>

</body>
</html>