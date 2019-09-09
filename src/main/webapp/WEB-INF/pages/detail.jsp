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
    <link href="static/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- start details -->
    <link rel="stylesheet" type="text/css" href="static/css/productviewgallery.css" media="all"/>
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

    </style>
    <style type="text/css">
        .infor-main {
            height: 501px;
            margin-bottom: 50px
        }

        .product-detail {
            width: 602px;
            float: left;
            position: relative
        }

        .product-textbox {
            width: 562px;
            float: right;
            padding-left: 36px
        }

        .product-detail .bigimgbox {
            margin-bottom: 16px;
            position: relative;
            height: 402px
        }

        .product-detail .bigimg {
            width: 600px;
            height: 400px;
            border: 1px solid #e9e9e9
        }

        .product-detail a.next, .product-detail a.prev {
            position: absolute;
            z-index: 100;
            display: none;
            margin-top: 159px
        }

        .product-detail a.prev {
            left: 1px
        }

        .product-detail a.next {
            right: 1px
        }

        .product-detail .product-imgbox {
            width: 602px
        }

        .product-detail .bigimgbox:hover a.next, .product-detail .bigimgbox:hover a.prev {
            display: block
        }

        .product-detail .bigimgbox:hover a.disable {
            display: none
        }

        .product-detail .smallimgbox img {
            width: 116px;
            height: 78px;
            border: 1px solid #e9e9e9
        }

        .product-detail .prev-smallimg {
            left: -1px
        }

        .product-detail .next-smallimg {
            right: -1px
        }

        .product-detail .smallimgbox li {
            margin: 0 3px;
            padding: 0;
            height: 80px
        }

        .product-detail .icon-triangle-right {
            right: 16px
        }

        .product-detail .icon-triangle-left {
            left: 16px
        }

        .icon-collect-star, .icon-fenxi, .icon-jijiang, .icon-man, .icon-warn {
            position: absolute;
            z-index: 1
        }

        .icon-jijiang {
            width: 84px;
            height: 78px;
            top: -2px;
            left: 17px
        }

        .icon-collect-star {
            width: 35px;
            height: 30px;
            top: 1px;
            right: 97px;
            background-position: -86px 6px
        }

        .icon-collect-star:hover {
            background-position: -159px 6px
        }

        .icon-collect-star.active {
            width: 35px;
            height: 30px;
            top: 1px;
            right: 97px;
            background-position: -185px 6px
        }

        .icon-warn {
            width: 66px;
            height: 30px;
            line-height: 30px;
            padding-left: 30px;
            font-size: 14px;
            color: #fff;
            top: 1px;
            right: 1px
        }

        .icon-warn:before {
            content: "";
            background-position: -126px 0;
            width: 16px;
            height: 18px;
            top: 5px;
            left: 10px;
            position: absolute
        }

        .icon-warn:hover:before {
            background-position: -142px 0
        }

        a.icon-warn:hover {
            color: #22ac38;
            text-decoration: none
        }

        .bigimgbox .page-number {
            font-size: 14px;
            color: #fff;
            position: absolute;
            right: 10px;
            bottom: 5px;
            z-index: 9
        }

        a.next, a.prev {
            width: 50px;
            height: 90px
        }

        a.prev {
            background-position: -498px -270px
        }

        a.next {
            background-position: -566px -270px
        }

        a.prev:hover {
            background-position: -498px -362px
        }

        a.next:hover {
            background-position: -566px -362px
        }

        a.prev.disable {
            background-position: -498px -454px
        }

        a.next.disable {
            background-position: -566px -454px
        }

        a.next-smallimg, a.prev-smallimg {
            width: 32px;
            height: 80px;
            top: 0
        }

        a.prev-smallimg {
            background-position: -309px -557px
        }

        a.next-smallimg {
            background-position: -359px -557px
        }

        a.prev-smallimg:hover {
            background-position: -409px -557px
        }

        a.next-smallimg:hover {
            background-position: -459px -557px
        }

        a.prev-smallimg.disable {
            background-position: -509px -557px
        }

        a.next-smallimg.disable {
            background-position: -559px -557px
        }

        .product-detail a.next-smallimg.disable, .product-detail a.next.disable, .product-detail a.prev-smallimg.disable, .product-detail a.prev.disable {
            display: none;
            background: transparent
        }

        .popbox.active {
            z-index: 2001
        }

        .popbox a.next, .popbox a.prev {
            width: 50px;
            height: 90px
        }

        .popbox a.prev {
            background-position: 0 -255px
        }

        .popbox a.next {
            background-position: -68px -255px
        }

        .popbox a.prev:hover {
            background-position: -138px -255px
        }

        .popbox a.next:hover {
            background-position: -208px -255px
        }

        .popbox .disable a.prev, .popbox .disable a.prev:hover {
            background-position: -279px -255px
        }

        .popbox .disable a.next, .popbox .disable a:hover {
            background-position: -354px -255px
        }

        .prev-smallimg:hover span, .prev:hover span {
            background-position: -155px 0
        }

        .next-smallimg:hover span, .next:hover span {
            background-position: 0 0
        }

        a.prev-smallimg span, a.prev span {
            left: 18px
        }

        a.next-smallimg span, a.next span {
            right: 18px
        }

        .slidercon {
            width: 670px;
            height: 598px;
            margin-left: 10px;
            float: left
        }

        .bigimgbox {
            position: absolute;
            top: 10%;
            bottom: 19%;
            left: 0;
            right: 0;
            text-align: center
        }

        .bigimgbox .imginfor {
            height: 34px;
            line-height: 34px;
            color: #fff;
            font-size: 14px;
            position: absolute;
            left: auto;
            bottom: 0;
            right: auto;
            width: 1000px;
            padding: 0 10px;
            text-align: left;
            z-index: 1;
            box-sizing: border-box
        }

        .imgnumber {
            position: absolute;
            right: 10px;
            top: 0
        }

        .fourtab, .threetab {
            height: 67px;
            line-height: 67px;
            text-align: center;
            margin-bottom: 7px;
            font-size: 18px;
            width: 728px;
            position: absolute;
            bottom: 90px;
            left: 50%;
            margin-left: -364px
        }

        .fourtab li {
            width: 25%;
            float: left
        }

        .fourtab li a {
            color: #a5abb2;
            display: inline-block;
            padding-bottom: 3px;
            line-height: 36px
        }

        .fourtab li a:hover, .threetab li a:hover {
            text-decoration: none;
            color: #22ac38
        }

        .fourtab li.on a, .threetab li.on a {
            color: #22ac38;
            border-bottom: 3px solid #22ac38;
            padding-bottom: 0
        }

        .threetab li {
            width: 33.3%;
            float: left
        }

        .threetab li.engine {
            width: 33.4%;
            float: right
        }

        .threetab li.bugimg {
            display: none
        }

        .smallimgbox {
            position: relative;
            overflow: hidden;
            height: 84px
        }

        .smallimgbox li {
            float: left;
            padding: 3px;
            margin: 0 2px;
            cursor: pointer;
            position: relative
        }

        .smallimgbox img {
            width: 125px;
            height: 84px
        }

        .smallimgbox li.onimg {
            position: relative
        }

        .smallimgbox li.onimg .green-border {
            border: 3px solid #22ac38;
            display: inline-block;
            width: 112px;
            height: 74px;
            position: absolute;
            left: 0;
            top: 0
        }

        .det-picside li {
            position: absolute;
            width: 100%;
            height: 100%;
            cursor: pointer
        }

        .det-picside li img {
            max-width: 100%;
            height: 100%
        }

        .next-smallimg, .prev-smallimg {
            width: 60px;
            height: 84px;
            display: block;
            position: absolute;
            top: 3px
        }

        .prev-smallimg {
            left: 0
        }

        .next-smallimg .icon-next, .prev-smallimg .icon-prev {
            position: absolute
        }

        .next-smallimg {
            right: 0
        }

        .prev-smallimg:hover .icon-prev {
            background-position: -420px -289px
        }

        .next-smallimg:hover .icon-next {
            background-position: -437px -289px
        }

        .product-textbox .titlebox {
            display: inline-block;
            color: #495056;
            font-size: 24px;
            line-height: 30px;
            padding-top: 0px;
            max-height: 60px;
            overflow: hidden;
            margin-bottom: 22px
        }

        .product-textbox .labels {
            display: inline-block;
            padding: 0 7px;
            height: 24px;
            line-height: 24px;
            color: #7a838d;
            font-size: 14px;
            text-align: center;
            background-color: #f6f6f6;
            -webkit-border-radius: 2px;
            -moz-border-radius: 2px;
            -ms-border-radius: 2px;
            border-radius: 2px;
            margin-right: 3px;
            vertical-align: top;
            margin-top: 7px
        }

        .assort {
            margin-bottom: 15px
        }

        .assort li {
            float: left;
            text-align: center;
            color: #a5abb2;
            line-height: 24px;
            font-size: 12px;
            position: relative
        }

        .assort li .active {
            display: inline-block
        }

        .assort li.one {
            width: 117px
        }

        .assort li.two {
            width: 146px
        }

        .assort li.three {
            width: 97px
        }

        .assort li.four {
            width: 117px
        }

        .assort li.last {
            width: 81px
        }

        .assort li:before {
            content: "";
            height: 34px;
            width: 1px;
            background-color: #e6e6e6;
            position: absolute;
            top: 9px;
            left: 0
        }

        .assort li.one:before {
            width: 0
        }

        .assort li a {
            color: #495056
        }

        .assort li a:hover {
            color: #22ac38;
            text-decoration: none
        }

        .assort li a .icon-green-right7x11 {
            margin: -3px 0 0 5px;
            vertical-align: middle;
            background-position: -394px -11px
        }

        .assort li a:hover .icon-green-right7x11 {
            margin: -3px 0 0 5px;
            vertical-align: middle;
            background-position: -394px 0
        }

        .assort li span {
            display: block;
            color: #495056;
            font-size: 18px;
            font-family: Microsoft Yahei;
            padding-bottom: 3px
        }

        #layer-tip {
            font-size: 12px;
            top: 34px;
            left: -91px;
            display: none
        }

        #layer-tip .icon-small-sanjiao {
            bottom: 48px;
            left: 167px
        }

        .assort li #layer-tip .icon-small-sanjiao {
            bottom: 46px
        }

        .em-sta {
            position: relative;
            cursor: pointer;
            z-index: 20
        }

        .tip-icon {
            background-position: -312px -37px;
            position: relative;
            display: inline-block;
            width: 17px;
            height: 17px;
            font-size: 12px;
            top: 2px;
            left: 2px
        }

        .price .tip-icon {
            vertical-align: middle;
            margin-top: -5px
        }

        .pricebox .tip-icon {
            vertical-align: middle;
            margin-top: -7px
        }

        .tip-icon.active {
            display: inline-block
        }

        .tip-icon .layer-tip {
            font-size: 12px;
            top: 30px;
            left: -220px
        }

        .tip-icon .bottom-layer .icon-small-sanjiao {
            bottom: 46px;
            left: 224px
        }

        .pricebox .tip-icon .layer-tip {
            left: -175px;
            width: 233px
        }

        .pricebox .tip-icon .icon-small-sanjiao {
            left: 178px
        }

        .assort li span.layer-tip {
            padding-bottom: 8px
        }

        .width1 {
            width: 233px;
            height: 43px
        }

        .width2 {
            width: 48px;
            min-height: 25px
        }

        .pricebox {
            margin-bottom: 22px
        }

        .pricebox .ico-type {
            color: #495056;
            font-size: 14px
        }

        .pricebox .pricestype {
            font-size: 28px;
            color: #f95523
        }

        .pricebox .newcarprice {
            text-decoration: line-through;
            color: #a5abb2;
            font-size: 14px;
            padding-left: 6px
        }

        .pricebox .price-fenxi {
            float: right;
            display: inline-block;
            vertical-align: middle;
            margin-top: 13px;
            font-size: 14px;
            color: #495056;
            cursor: pointer
        }

        .pricebox .icon-fenxi {
            background-position: -94px -65px;
            width: 11px;
            height: 12px;
            position: inherit;
            margin-left: 5px
        }

        .pricebox .price-fenxi .icon-fenxi {
            margin-bottom: -1px
        }

        a.loanbox, a.loanbox:hover {
            height: 48px;
            line-height: 48px;
            border: 1px solid #c6eccd;
            position: relative;
            padding-left: 95px;
            color: #22ac38;
            font-size: 14px;
            display: block;
            text-decoration: none;
            background-color: #f6fcf7;
            margin-bottom: 20px
        }

        a.loanbox .icon-man {
            background-position: 0 -85px;
            width: 62px;
            height: 81px;
            left: 17px;
            top: -19px
        }

        a.loanbox .monthpad {
            padding-left: 9px
        }

        a.loanbox .text-r {
            float: right;
            display: inline-block;
            padding-right: 8px
        }

        .product-textbox .icon-green-right7x11 {
            vertical-align: middle;
            margin-top: -3px
        }

        .service-protect {
            background-color: #f6f6f6;
            height: 140px;
            color: #495056;
            font-size: 14px;
            margin-bottom: 20px
        }

        .service-protect-title {
            padding-left: 10px;
            height: 56px;
            line-height: 56px;
            padding-bottom: 4px
        }

        .service-protect-title .label-green {
            margin-top: -2px
        }

        .service-protect .icon-service {
            height: 20px;
            vertical-align: middle;
            margin-top: -2px;
            margin-right: 10px
        }

        .service-protect .look-detail {
            color: #495056;
            float: right;
            padding-right: 9px
        }

        .service-protect a.look-detail:hover .icon-gray-right7x11 {
            background-position: -394px -11px
        }

        .service-protect .fc-other {
            color: #7a838d
        }

        .four-service, .three-service {
            padding-left: 10px;
            padding-bottom: 19px
        }

        .four-service li, .three-service li {
            float: left;
            position: relative;
            font-size: 14px;
            color: #495056
        }

        .four-service li.one {
            width: 192px
        }

        .four-service li.two {
            width: 120px
        }

        .four-service li.three {
            width: 126px
        }

        .four-service li.four {
            width: 114px
        }

        .three-service li.one {
            width: 225px
        }

        .three-service li.two {
            width: 186px
        }

        .three-service li.three {
            width: 135px;
            text-align: right
        }

        .four-service li:before, .three-service li:before {
            background-position: -94px -98px;
            width: 20px;
            height: 20px;
            content: "";
            display: block;
            position: absolute;
            left: 0;
            top: 1px
        }

        .three-service li.three:before {
            left: 5px
        }

        .four-service li span, .three-service li span {
            display: inline-block;
            padding-left: 22px;
            position: relative
        }

        .car-fuwu {
            padding-left: 10px
        }

        .buycar-bag {
            background-position: -89px -399px;
            width: 74px;
            height: 18px;
            vertical-align: middle;
            margin-top: -2px
        }

        .text-service {
            color: #495056;
            font-size: 14px;
            padding-right: 5px
        }

        .btnbox a {
            float: left
        }

        a.freephonebtn, a.graybtn, a.greenbtn, a.greenbtn:hover, a.orgbtn, a.orgbtn:hover {
            border-radius: 2px;
            text-align: center;
            text-decoration: none;
            font-size: 20px;
            display: inline-block;
            width: 174px;
            height: 48px;
            line-height: 48px;
            vertical-align: top;
            color: #fff;
            margin-right: 20px
        }

        a.orgbtn, a.orgbtn:hover {
            background-color: #fd6c34;
            position: relative
        }

        a.greenbtn, a.greenbtn:hover {
            width: 172px;
            background-color: #2abd53
        }

        a.graybtn {
            background-color: #bec6ce;
            display: none;
            position: relative
        }

        a.graybtn:hover {
            cursor: default;
            color: #fff
        }

        a.greenbtn:hover {
            background-color: #22ac38;
            color: #fff
        }

        a.orgbtn:hover {
            background-color: #f95523;
            color: #fff
        }

        a.freephonebtn {
            width: 172px;
            height: 46px;
            line-height: 46px;
            border: 1px solid #2abd53;
            background-color: #f6fcf7;
            color: #2abd53;
            margin-right: 0
        }

        a.greenbtn .icon-kan, a.greenbtn:hover .icon-kan {
            background-position: -276px 0
        }

        .right-phone {
            color: #a5abb2;
            font-size: 14px;
            display: inline-block;
            float: right
        }

        .right-phone .f24 {
            font-size: 24px;
            color: #2abd53;
            display: block;
            line-height: 22px;
            font-weight: 700
        }

        .soldmask {
            display: none;
            width: 100%;
            height: 100%;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            background-color: rgba(0, 0, 0, .4);
            z-index: 5
        }

        .bigimgbox {
            position: relative
        }

        .bigimgbox .sold-icon-tingshou, .bigimgbox .sold-icon-yiding, .bigimgbox .sold-icon-yishou {
            width: 133px;
            height: 113px;
            overflow: hidden;
            background-position: -149px -54px;
            position: absolute;
            top: 50%;
            left: 50%;
            margin-top: -57px;
            margin-left: -67px;
            z-index: 5;
            display: none
        }

        .bigimgbox .sold-icon-tingshou {
            background-position: -334px -55px
        }

        .bigimgbox .sold-icon-yiding {
            background-position: -504px -55px
        }

        .soldout .product-detail .bigimgbox:hover a.next, .soldout .product-detail .bigimgbox:hover a.prev, .soldout a.freephonebtn, .soldout a.greenbtn, .soldout a.orgbtn {
            display: none
        }

        .soldout .graybtn, .soldout .sold-icon-yishou, .soldout .soldmask {
            display: block
        }

        .soldout .icon-collect-star, .soldout .icon-collect-star.active, .soldout .icon-jijiang, .soldout .icon-warn {
            display: none
        }

        .bigimgbox .icon-jijiang {
            text-align: center;
            color: #fff
        }
        .shoubu{border-radius:25px;background-color:#f0f0f0;margin-top:0px;margin-bottom:10px;border-bottom:1px solid #6e6e6e;box-shadow:2px 4px 6px #000;}
        .shoubu p{display:inline-block;padding:20px 20px 5px 20px;}
        .shoubu_p{padding:20px 20px 35px 20px;}
        .shoubu p a:hover{text-decoration:none;box-shadow:1px 2px 1px #000;}

        .backtable{border-radius:5px;display:inline-block;height:40px;padding:0px 45px 5px 45px;}
        .bigimgbox .icon-jijiang .f22 {
            font-size: 22px;
            display: block;
            line-height: 20px;
            padding-top: 12px;
            padding-bottom: 3px
        }

        .bigimgbox .icon-jijiang .f18 {
            font-size: 18px;
            display: block
        }

        .bigimg-pop {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            z-index: 1000
        }

        .bigimg-pop.active, .bigimg-pop.active .list, .bigimg-pop.active .mask {
            display: block
        }

        .bigimg-pop .list {
            position: absolute;
            top: 10%;
            bottom: 19%;
            left: 0;
            right: 0;
            text-align: center;
            z-index: 101
        }

        .bigimg-pop .list img {
            max-width: 100%;
            height: 100%
        }

        .popbox {
            position: fixed;
            z-index: 101;
            display: none;
            width: 100%;
            height: 100%;
            text-align: center;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0
        }

        .popbox .bigimgbox {
            position: absolute
        }

        .popbox .det-picside {
            position: absolute;
            width: 100%;
            height: 100%
        }

        .popbox .slidercon {
            margin: 0
        }

        .popbox .bigimgbox {
            bottom: 157px;
            top: 20px
        }

        .popbox a.next, .popbox a.prev {
            width: 52px;
            height: 94px;
            position: absolute;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            z-index: 100;
            top: 50%;
            margin-top: -47px;
            border-radius: 3px
        }

        .popbox a.prev {
            left: 20%
        }

        .popbox a.next {
            right: 20%
        }

        .popbox .slidercon {
            width: 100%;
            height: 100%
        }

        .popbox .smallimgbox {
            width: 1010px;
            height: 80px;
            padding: 0 55px;
            position: absolute;
            bottom: 10px;
            left: 50%;
            margin-left: -560px
        }

        .popbox .smallimgbox .wrapper {
            margin-left: -5px;
            width: 1024px
        }

        .popbox .smallimgbox li {
            width: 118px;
            height: 80px;
            padding: 0
        }

        .popbox .smallimgbox li img {
            width: 100%;
            height: 100%
        }

        .popbox .smallimgbox li.on .imgborder {
            border: 3px solid #22ac38;
            height: 74px;
            width: 112px;
            display: block;
            position: absolute;
            top: 0;
            left: 0
        }

        .popbox .next-smallimg, .popbox .prev-smallimg {
            top: 0
        }

        .popbox .prev-smallimg {
            left: 0
        }

        .popbox .next-smallimg {
            right: 0
        }

        .popbox .smallimgbox li {
            margin: 0 5px
        }

        a.next-left-box, a.prev-left-box {
            position: absolute;
            height: 80px;
            display: inline-block;
            width: 55px;
            top: 0
        }

        a.prev-left-box {
            left: 0
        }

        a.next-left-box {
            right: 0
        }

        .icon-next, .icon-prev {
            width: 12px;
            height: 22px;
            margin-top: 27px
        }

        .icon-prev {
            background-position: -420px -253px
        }

        .icon-next {
            background-position: -437px -253px
        }

        a.prev-left-box:hover .icon-prev {
            background-position: -420px -289px
        }

        a.next-left-box:hover .icon-next {
            background-position: -437px -289px
        }

        .disable a, a.disable {
            cursor: default
        }

        a.disable .icon-prev, a.disable:hover .icon-prev {
            background-position: -420px -327px;
            cursor: default
        }

        a.disable .icon-next, a.disable:hover .icon-next {
            background-position: -437px -327px;
            cursor: default
        }

        .big-next-box, .big-prev-box {
            height: 100%;
            position: absolute;
            top: 0;
            width: 50%
        }

        .big-prev-box {
            left: 0
        }

        .big-next-box {
            right: 0
        }

        .closed {
            display: inline-block;
            position: fixed;
            right: 20px;
            top: 20px;
            z-index: 102;
            -webkit-border-radius: 19px;
            border-radius: 19px;
            cursor: pointer;
            background-position: -425px -395px;
            width: 37px;
            height: 37px
        }

        .green-border {
            border: 3px solid #22ac38;
            position: absolute;
            top: 0;
            left: 0;
            width: 112px;
            height: 74px;
            display: none
        }

        .popbox .smallimgbox li.active .green-border {
            display: block;
            top: 0
        }

        .no-finance .loanbox {
            display: none
        }

        .no-finance .assort {
            margin-bottom: 13px
        }

        .no-finance .pricebox {
            margin-bottom: 20px
        }
    </style>
    <style type="text/css">
        a, abbr, acronym, address, applet, b, big, blockquote, body, caption, center, cite, code, dd, del, dfn, div, dl, dt, em, fieldset, font, form, h1, h2, h3, h4, h5, h6, html, i, iframe, img, ins, kbd, label, legend, li, object, ol, p, pre, q, s, samp, small, span, strike, strong, sub, sup, table, tbody, td, tfoot, th, thead, tr, tt, u, ul, var {
            margin: 0;
            padding: 0;
            border: 0;
            outline: 0
        }

        li, ol, ul {
            list-style: none
        }

        blockquote, q {
            quotes: none
        }

        blockquote:after, blockquote:before, q:after, q:before {
            content: "";
            content: none
        }

        :focus {
            outline: 0
        }

        del {
            text-decoration: line-through
        }

        table {
            border-collapse: collapse;
            border-spacing: 0
        }

        address, cite, code, dfn, em, i, var {
            font-style: normal
        }

        button, input[type=button], input[type=reset], input[type=submit] {
            cursor: pointer;
            -webkit-appearance: none
        }

        .vm {
            vertical-align: middle
        }

        .clearfix:after {
            content: " ";
            display: block;
            clear: both;
            height: 0;
            visibility: hidden
        }

        * + html .clearfix, * html .clearfix {
            zoom: 1
        }

        .fl {
            float: left
        }

        .fr {
            float: right
        }

        body {
            background: #fff
        }

        body, button, input, select, textarea {
            font: 12px/1.5 arial, helvetica, clean, sans-serif
        }

        a {
            text-decoration: none;
            color: #24d
        }

        a:hover {
            text-decoration: underline;
            color: #c00
        }
    </style>
    <!-- 头部-->
    <style type="text/css">

    </style>
    <style type="text/css">
        .product-detail {
            height: 0px;
            width: 560px;
            float: left;
        }
    </style>
    <style type="text/css">
        .product-textbox {
            height: 0;
            width: 45.33%;
            float: right;
        }
    </style>
    <style type="text/css">

        .table1 {
            text-align: center;
            width: 380px;
            float: left;
            margin-bottom: 100px;
            margin-right: 2px;
        }

        .table1 th {
            background-color: #f5f5f5;
            font-size: 16px;
            height: 35px;
        }

        .detailcontent table {
            border: 1px solid #6e6e6e;
            font-size: 17px;
            rules: all
        }

        .titlediv {
            height: 47px;
            border-bottom: 1px solid #e6e6e6;
            margin-bottom: 30px;
            font-size: 22px;
        }

        .titlediv span {
            border-bottom: 4px solid #22ac38;
            display: inline-block;
            line-height: 43px;
        }

        .footer_bg1 {
            background-color: #6e6e6e;
        }

        .header_btm {
            background-color: #6e6e6e;
        }

        .product-image {
            float: left;
            width: 150px;
            height: 100px;
        }

        .more-views-container {
            width: 100px;
            height: 0;
        }

    </style>
    <style type="text/css">
        .span1_of_1 {
            width: 52.3333%;
            float: left;
        }

        div {
            margin: 0;
            padding: 0;
            border: 0;
            font-size: 100%;
            font: inherit;
        }
    </style>
</head>
<body>
<!-- 侧边导航栏 -->
<!--头部部分-->
<div id="header">
    <!--轮播图-->
    <div class="scroll" style="height: 360px;">
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
    </div>
</div>
        <div>
            <div class="main_bg">
                <div class="wrap">
                    <div class="main">
                        <!-- start content -->
                        <div class="single">
                            <!-- start span1_of_1 -->

                            <div class="infor-main service-open">
                                <div class="product-detail" id="page-slide" data-group-count="4">

                                    <div>
                                        <img alt="111" src="${detail.pic}" style="width: 700px;height: 450px;">
                                    </div>

                                </div>
                                <!-- start span1_of_1 -->
                                <div class="product-textbox">
                                    <div class="titlebox">
                                        <p>${detail.name}</p>
                                        <span class="labels">4s保养</span>
                                    </div>

                                    <ul class="assort clearfix">
                                        <li class="one"><span>${detail.age}</span>车齡</li>
                                        <li class="two"><span>${detail.mile}</span>表显里程</li>
                                        <li class="three"><span>${detail.cityname}</span>上牌地</li>
                                        <li class="four"><span>${detail.demage}</span>车损状况</li>
                                        <li class="last"><span>${detail.cspeed}</span>变速箱</li>
                                    </ul>

                                    <div class="pricebox js-disprice">
                                        <i class="ico-type">车主报价：</i>
                                        <span class="pricestype">${detail.nowprice}  <span class="f14">万</span></span>
                                    </div>

                                    <div class="service-protect">
                                        <div class="service-protect-title clearfix"><i class="icon-service">服务保障升级</i>
                                            <i class="label-green">理赔高达4.68万</i><i class="label-green">保全车12大系统</i>
                                        </div>
                                        <ul class="four-service clearfix">
                                            <li class="one">
                                                <span>1年2万公里售后保障<i class="icon-triangle-top"></i></span>
                                            </li>
                                            <li class="two">
                                                <span>14天可退<i class="icon-triangle-top"></i></span>
                                            </li>
                                            <li class="three">
                                                <span>259项检测<i class="icon-triangle-top"></i></span>
                                            </li>
                                            <li class="four">
                                                <span>优质个人车<i class="icon-triangle-top"></i></span>
                                            </li>
                                        </ul>
                                        <%--<div class="car-fuwu">--%>
                                        <%--<i class="ico-txt">服务费：</i><span>3500元（车价x4%，最低3500元） </span>--%>
                                        <%--</div>--%>
                                    </div>


                                    <div class="btnbox clearfix">
                                        <a id="order" rel="nofollow" href="javascript:void(0)" class="orgbtn js-apt">预约看车</a>
                                        <span class="layer-tip js-layer-tip" style="width: 233px; height: 43px; display: none;">
                    <i class="icon-small-sanjiao"></i>
                        此车已有<i class="fc-green">59</i>人关注，预计很快售出，建议尽快<i class="fc-green js-apt"
                                                                        data-gzlog="tracking_type=click&amp;eventid=0460310000000074&amp;carid=14313937">预约看车</i>
                </span>
                                        </a>
                                        <a id="collect" rel="nofollow" href="javascript:void(0)" class="greenbtn js-bargain"
                                           data-gzlog="tracking_type=click&amp;eventid=0460310000000075&amp;carid=14313937">添加收藏</a>

                                    </div>
                                </div>                <!--    详情页右上方车源-->
                            </div>
                            <!-- start基本信息 -->
                            <!-- start粗略浏览 -->
                            <div class="titlediv">
                                <span>基本信息</span>
                            </div>
                            <!-- end粗略浏览 -->
                            <div class="detailcontent">
                                <table border="1" class="table1">
                                    <thead>
                                    <tr>
                                        <th align="center" colspan="2">基本信息</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>厂商</td>
                                        <td>${carInfo.fname}</td>
                                    </tr>
                                    <tr>
                                        <td>级别</td>
                                        <td>${carInfo.level}</td>
                                    </tr>
                                    <tr>
                                        <td>发动机</td>
                                        <td>${carInfo.engine}</td>
                                    </tr>
                                    <tr>
                                        <td>变速箱</td>
                                        <td>${carInfo.gearbox}</td>
                                    </tr>
                                    <tr>
                                        <td>车身结构</td>
                                        <td>${carInfo.bodyStructure}</td>
                                    </tr>
                                    <tr>
                                        <td>长*宽*高{mm)</td>
                                        <td>${carInfo.size}</td>
                                    </tr>
                                    <tr>
                                        <td>最大车速(km/s}</td>
                                        <td>${carInfo.maximumspeed}</td>
                                    </tr>
                                    <tr>
                                        <td>行李箱容积(L)</td>
                                        <td>${carInfo.cargoVolume}</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    </tbody>
                                </table>
                                <table class="table1">
                                    <thead>
                                    <tr>
                                        <th align="center" colspan="2">发动机参数</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>排量(L)</td>
                                        <td>${carEngineInfo.displacement}</td>
                                    </tr>
                                    <tr>
                                        <td>进气形式</td>
                                        <td>${carEngineInfo.intake_form}</td>
                                    </tr>
                                    <tr>
                                        <td>气缸排列形式</td>
                                        <td>${carEngineInfo.cylinder_arrangement}</td>
                                    </tr>
                                    <tr>
                                        <td>气缸数</td>
                                        <td>${carEngineInfo.cylinders}</td>
                                    </tr>
                                    <tr>
                                        <td>最大马力(Ps)</td>
                                        <td>${carEngineInfo.maximum_horsepower}</td>
                                    </tr>
                                    <tr>
                                        <td>燃料类型</td>
                                        <td>${carEngineInfo.fuel}</td>
                                    </tr>
                                    <tr>
                                        <td>燃油标号</td>
                                        <td>${carEngineInfo.fuel_label}</td>
                                    </tr>
                                    <tr>
                                        <td>供油方式</td>
                                        <td>${carEngineInfo.oilsupply_mode}</td>
                                    </tr>
                                    <tr>
                                        <td>排放标准</td>
                                        <td>${carEngineInfo.enviroment_standard}</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <table class="table1">
                                    <thead>
                                    <tr>
                                        <th align="center" colspan="2">底盘及制动</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>驱动方式</td>
                                        <td>${carChassisBrakeInfo.drive_mode}</td>
                                    </tr>
                                    <tr>
                                        <td>助力类型</td>
                                        <td>${carChassisBrakeInfo.auto_power_type}</td>
                                    </tr>
                                    <tr>
                                        <td>前悬挂类型</td>
                                        <td>${carChassisBrakeInfo.front_suspension_type}</td>
                                    </tr>
                                    <tr>
                                        <td>后悬挂类型</td>
                                        <td>${carChassisBrakeInfo.rear_suspension_type}</td>
                                    </tr>
                                    <tr>
                                        <td>前制动类型</td>
                                        <td>${carChassisBrakeInfo.front_brake_type}</td>
                                    </tr>
                                    <tr>
                                        <td>后制动类型</td>
                                        <td>${carChassisBrakeInfo.rear_brake_type}</td>
                                    </tr>
                                    <tr>
                                        <td>驻车制动类型</td>
                                        <td>${carChassisBrakeInfo.parking_brake_type}</td>
                                    </tr>
                                    <tr>
                                        <td>前轮胎规格</td>
                                        <td>${carChassisBrakeInfo.front_wheel_size}</td>
                                    </tr>
                                    <tr>
                                        <td>后轮胎规格</td>
                                        <td>${carChassisBrakeInfo.front_wheel_size}</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <table class="table1">
                                    <thead>
                                    <tr>
                                        <th align="center" colspan="2">安全配置</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>主/副驾驶安全气囊</td>
                                        <td>${carSafetyInfo.front_airbag}</td>
                                    </tr>
                                    <tr>
                                        <td>前/后排头部气囊</td>
                                        <td>${carSafetyInfo.head_airbag}</td>
                                    </tr>
                                    <tr>
                                        <td>儿童座椅接口</td>
                                        <td>${carSafetyInfo.child_seat_int}</td>
                                    </tr>
                                    <tr>
                                        <td>胎压检测</td>
                                        <td>${carSafetyInfo.tpms}</td>
                                    </tr>
                                    <tr>
                                        <td>车内中控锁</td>
                                        <td>${carSafetyInfo.car_lock}</td>
                                    </tr>
                                    <tr>
                                        <td>ABS防抱死系统</td>
                                        <td>${carSafetyInfo.abs}</td>
                                    </tr>
                                    <tr>
                                        <td>车身稳定控制</td>
                                        <td>${carSafetyInfo.usc}</td>
                                    </tr>
                                    <tr>
                                        <td>无钥匙启动</td>
                                        <td>${carSafetyInfo.pss}</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <table class="table1">
                                    <thead>
                                    <tr>
                                        <th align="center" colspan="2">外部配置</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>电动天窗</td>
                                        <td>${carExternalInfo.electronic_sunroof}</td>
                                    </tr>
                                    <tr>
                                        <td>全景天窗</td>
                                        <td>${carExternalInfo.panoramic_sunroof}</td>
                                    </tr>
                                    <tr>
                                        <td>电动吸合门</td>
                                        <td>${carExternalInfo.electronic_door_pull}</td>
                                    </tr>
                                    <tr>
                                        <td>电动后备箱</td>
                                        <td>${carExternalInfo.electronic_trunk}</td>
                                    </tr>
                                    <tr>
                                        <td>雨量感应雨刷</td>
                                        <td>${carExternalInfo.rain_sensing_wipers}</td>
                                    </tr>
                                    <tr>
                                        <td>后雨刷</td>
                                        <td>${carExternalInfo.rear_wiper}</td>
                                    </tr>
                                    <tr>
                                        <td>前/后电动车窗</td>
                                        <td>${carExternalInfo.power_window}</td>
                                    </tr>
                                    <tr>
                                        <td>电动后视镜</td>
                                        <td>${carExternalInfo.electronic_rearview_mirror}</td>
                                    </tr>
                                    <tr>
                                        <td>后视镜加热</td>
                                        <td>${carExternalInfo.rearview_mirror_heating}</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <table class="table1">
                                    <thead>
                                    <tr>
                                        <th align="center" colspan="2">内部配置</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>多功能方向盘</td>
                                        <td>${carInternalInfo.mf_steering_wheel}</td>
                                    </tr>
                                    <tr>
                                        <td>定速巡航</td>
                                        <td>${carInternalInfo.dlcc}</td>
                                    </tr>
                                    <tr>
                                        <td>自动空调</td>
                                        <td>${carInternalInfo.automatic_air_con}</td>
                                    </tr>
                                    <tr>
                                        <td>手动空调</td>
                                        <td>${carInternalInfo.manual_air_con}</td>
                                    </tr>
                                    <tr>
                                        <td>GPS导航</td>
                                        <td>${carInternalInfo.gps}</td>
                                    </tr>
                                    <tr>
                                        <td>倒车雷达</td>
                                        <td>${carInternalInfo.parking_redar}</td>
                                    </tr>
                                    <tr>
                                        <td>倒车影像</td>
                                        <td>${carInternalInfo.reverse_video}</td>
                                    </tr>
                                    <tr>
                                        <td>真皮座椅</td>
                                        <td>${carInternalInfo.leather_seat}</td>
                                    </tr>
                                    <tr>
                                        <td>前后排座椅加热</td>
                                        <td>${carInternalInfo.seat_heating}</td>
                                    </tr>
                                    </tbody>
                                </table>

                            </div>
                            <!-- end基本信息 -->
                            <!-- end content -->
                        </div>
                    </div>
                </div>
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
        order();
        collect();
    });

    function collect() {
        $("#collect").click(function () {
            var username="${username}";
            var collectid="${userid}";
            var collectedid="${detail.id}";
            if (username!=""){
                $.ajax({
                    url:"${pageContext.request.contextPath}/collect",
                    data:{"collectid":collectid,"collectedid":collectedid},
                    type:"GET",
                    success:function(result){
                        console.log(result);
                        //1、解析并显示员工数据
                        if (result!=100&&result!==1){
                            alert("收藏失败");
                        }else if (result==1) {
                            alert("您已经收藏");
                        }else {
                            alert("收藏成功");
                        }
                    }
                });
            }else {
                alert("请先登录");
            }
        });
    }
    function order() {
        $("#order").click(function () {
            var username="${username}";
            var orderid="${userid}";
            var orderedid="${detail.id}";
            if (username!=""){
                $.ajax({
                    url:"${pageContext.request.contextPath}/order",
                    data:{"orderid":orderid,"orderedid":orderedid,"status":"未交易"},
                    type:"GET",
                    success:function(result){
                        console.log(result);
                        //1、解析并显示员工数据
                        if (result!=100&&result!==1){
                            alert("预约失败");
                        }else if (result==1) {
                            alert("您已经预约");
                        }else {
                            alert("预约成功");
                        }
                    }
                });
            }else {
                alert("请先登录");
            }
        });

    }

    function getCurrentCity(){

                var title="${title}";
                document.title = title;
                $("#cityname").html("${cityname}");
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

