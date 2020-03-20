<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="back_top.jsp"/>
<!-- Start: Sidebar Menu -->
<ul class="nav sidebar-menu">
    <li class="sidebar-label pt20">日常管理</li>
    <li>
        <a href="/back/posts">
            <span class="glyphicon glyphicon-book"></span>
            <span class="sidebar-title">帖子管理</span>
            <span class="sidebar-title-tray">
                            <span class="label label-xs bg-primary">New</span>
                        </span>
        </a>
    </li>
    <li class="active">
        <a href="/back/users">
            <span class="glyphicon glyphicon-home"></span>
            <span class="sidebar-title">用户管理</span>
        </a>
    </li>
</ul>
<!-- End: Sidebar Menu -->

<!-- Start: Sidebar Collapse Button -->
<div class="sidebar-toggle-mini">
    <a href="#">
        <span class="fa fa-sign-out"></span>
    </a>
</div>
<!-- End: Sidebar Collapse Button -->

</div>
<!-- End: Sidebar Left Content -->

</aside>

<!-- Start: Content-Wrapper -->
<section id="content_wrapper">

    <!-- Begin: Content -->
    <section id="content" class="table-layout animated fadeIn">

        <!-- begin: .tray-center -->
        <div class="tray tray-center">

            <!-- Begin: Content Header -->
            <div class="content-header">
                <h2>帖子管理</h2>
                <p class="lead"></p>
            </div>
            <!-- message listing panel -->
            <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">

                <div class="panel  heading-border">
                    <!-- message listings table -->
                    <div class="panel-body pn">
                        <table id="message-table" class="table admin-form theme-warning tc-checkbox-1">
                            <thead>
                            <tr class="">
                                <th class="hidden-xs">ID</th>
                                <th class="hidden-xs">标题</th>
                                <th class="hidden-xs">作者</th>
                                <th class="hidden-xs">内容</th>
                                <th class="text-center">发帖时间</th>
                                <th>删除</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${posts}" var="posts">
                                <tr class="message-unread">
                                    <td class="">${posts.id}</td>
                                    <td class="">${posts.title}</td>
                                    <td class="">${posts.username}</td>
                                    <td class="">${posts.content}</td>
                                    <td class="text-center fw600"><spring:eval expression="posts.createTime"/></td>
                                    <td>
                                        <a href="/back/remove?pid=${posts.id}">删除</a>
                                    </td>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                    </div>

                </div>
                <!-- end: .admin-form -->

            </div>
            <!-- end: .tray-center -->
    </section>
    <!-- End: Content -->

</section>
<!-- End: Content-Wrapper -->

</div>
<!-- End: Main -->
<jsp:include page="back_bottom.jsp"/>