<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>XX论坛</title>
    <link rel="stylesheet" href="/static/css/all-df86af5803.css">

</head>

<body class="forum" data-page="forum">
<div class="header">
    <nav class="navbar navbar-inverse navbar-fixed-top navbar-default">
        <div class="container">
            <div class="navbar-header" id="navbar-header">
                <a href="/bbs/list" class="navbar-brand">XX论坛
                </a>
            </div>
            <div id="main-nav-menu">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="/bbs/list"> <span
                            class="hidden-xs hidden-sm">首页</span></a></li>
                    <li class="hidden-sm hidden-xs"><a href="/back/users"<%--为方便测试，后台连接放这里--%>>后台管理</a></li>

                </ul>
            </div>

            <ul class="nav navbar-nav navbar-right">
                <li class="nav-search hidden-xs hidden-sm">
                    <form method="GET" action="###" accept-charset="UTF-8"
                          class="navbar-form form-search active" target="_blank">
                        <div class="form-group">
                            <input placeholder="搜索" class="form-control" name="q" type="search">
                        </div>

                    </form>
                </li>

                <!-- 登录成功要显示的内容 -->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                        ${sessionScope.user.username}  <!-- 此处显示用户名 -->

                        <span class="caret"></span></a>
                    <button class="navbar-toggle" type="button" data-toggle="dropdown" role="button"
                            aria-expanded="false">
                        <span class="sr-only">Toggle</span>

                    </button>
                    <ul class="dropdown-menu" role="menu">
                        <li class=""><a href="my.html">我的主页</a></li>
                        <li>
                            <div class='divider'></div>
                        </li>
                        <li><a href="my.html">个人设置</a></li>

                        <li><a href="score.html">我的积分</a></li>
                        <li class='divider'></li>
                        <li><a href="/bbs/logout" onclick=" return confirm('你确定要退出吗?')"> 退出
                        </a></li>
                    </ul>
                </li>
                <!-- 未登录显示的内容 -->
                <c:if test="${sessionScope.user==null}">
                    <li><a href="/bbs/to_register" id="signup-btn">注册</a></li>
                    <li><a href="/bbs/to_login" id="login-btn">登录</a></li>
                </c:if>

            </ul>
        </div>
    </nav>
</div>