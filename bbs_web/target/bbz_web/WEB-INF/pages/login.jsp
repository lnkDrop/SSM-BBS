<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<body class="forum" data-page="forum">
<div id="main" class="main-container container">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">登录</div>
                    <div class="panel-body">
                        <form role="form" method="POST" action="/bbs/login">

                            <div class="form-group">
                                <input type="login" class="form-control" name="username" value="" placeholder="用户名">
                            </div>

                            <div class="form-group">
                                <input type="password" class="form-control" name="password" placeholder="密码">
                            </div>
                            <div class="form-group">
                                <input type="submit" name="commit" value="登录" class="btn btn-primary btn-lg btn-block">
                            </div>
                        </form>
                    </div>
                    <div class="panel-footer">
                        <a href="/bbs/to_register">注册</a>

                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">用其他平台的帐号登录</div>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <a href="###" class="btn btn-default btn-lg btn-block"><i class="fa fa-github"></i>
                                Github</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</div>
<jsp:include page="bottom.jsp"/>