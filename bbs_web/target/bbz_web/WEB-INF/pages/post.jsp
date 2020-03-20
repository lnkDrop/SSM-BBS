<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>

<div id="main" class="main-container container">
    <div class="row max-width">
        <div class="col-xs-12">
            <ul class="breadcrumb">
                <li>
                    <a href="index.html">首页</a>
                </li>
                <li>
                    <strong>
                        <!-- 此处显示帖子标题 -->

                    </strong>
                </li>
            </ul>
        </div>
    </div>

    <div class="col-md-9 threads-show main-col">

        <!-- Thread Detial -->
        <div class="thread panel panel-default">
            <div class="infos panel-heading">

                <div class="pull-right avatar">
                    <a href="my.html"> <img src="/images/avatar.jpg" class="media-object img-thumbnail avatar-64"/> </a>
                </div>

                <h1 class="panel-title thread-title"><!-- 此处显示帖子标题 -->${post.title}</h1>

                <div class="likes">
                    <a href="javascript:void(0);" data-action="like" data-type="Thread" data-url="#" title="赞"
                       class="fa fa-chevron-up likeable like" data-id="10"> 10</a> <a href="javascript:void(0);"
                                                                                      data-action="unlike"
                                                                                      data-type="Thread" data-url="#"
                                                                                      title="踩"
                                                                                      class="fa fa-chevron-down likeable like"
                                                                                      data-id="10"></a>
                </div>

                <div class="meta inline-block">

                    <a href="my.html"> <!-- 此处显示发帖人用户名 -->${post.username} </a>

                    • 于 <abbr title="2016-06-10 02:28:36" class="timeago">2016-06-10 02:28:36</abbr>

                    回复 <a href="my.html"> memory </a> 于 <abbr title="2017-02-08 21:47:25"
                                                              class="timeago">2017-02-08 21:47:25</abbr> •

                    4050 阅读
                </div>
                <div class="clearfix"></div>
            </div>

            <div class="panel-body content-body">

                <div class="markdown-body" id="emojify">
                    <ul>
                        <li><!-- 此处显示帖子内容 -->${post.content}</li>
                    </ul>
                </div>

            </div>

            <div class="panel-footer operate">

                <div class="pull-left" style="font-size:15px;">
                    <a class=""
                       href="http://service.weibo.com/share/share.php?url=http%3A%2F%2Fimooc.com%2Fthread%2F10&type=3&pic=&title=imooc 接下来需要完善的功能"
                       target="_blank" title="分享到微博"> <i class="fa fa-weibo"></i> </a> <a
                        href="https://twitter.com/intent/tweet?url=http%3A%2F%2Fimooc.com%2Fthread%2F10&text=imooc 接下来需要完善的功能&via=imooc.com"
                        class="" target="_blank" title="分享到 Twitter"> <i class="fa fa-twitter"></i> </a> <a
                        href="http://www.facebook.com/sharer.php?u=http%3A%2F%2Fimooc.com%2Fthread%2F10" class=""
                        target="_blank" title="分享到 Facebook"> <i class="fa fa-facebook"></i> </a> <a
                        href="https://plus.google.com/share?url=http%3A%2F%2Fimooc.com%2Fthread%2F10" class=""
                        target="_blank" title="分享到 Google Plus"> <i class="fa fa-google-plus"></i> </a>
                </div>

                <div class="pull-right">
          <span class="tag-list hidden-xs">
      Tags:
            <a href="tag.html"><span class="tag">imooc</span></a>
            </span>

                </div>
                <div class="clearfix"></div>
            </div>

            <div class="modal fade" id="exampleModal" tabindex="-1" role="" aria-labelledby="exampleModalLabel">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="exampleModalLabel">备注内容</h4>
                        </div>

                        <form method="POST" action="" accept-charset="UTF-8">


                            <div class="modal-body">

                                <div class="alert alert-warning">
                                    附加备注, 使用此功能的话, 会给所有参加过讨论的人发送通知.
                                </div>

                                <div class="form-group">
                                    <textarea class="form-control" style="min-height:20px" placeholder="请使用Markdown撰写内容"
                                              name="content" cols="50" rows="10"></textarea>

                                </div>

                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <button type="submit" class="btn btn-primary">提交</button>
                            </div>

                        </form>

                    </div>
                </div>
            </div>
        </div>

        <!-- Reply List -->
        <div class="replies panel panel-default list-panel replies-index">
            <div class="panel-heading">
                <div class="total">回复总数: <b>1</b></div>
            </div>

            <div class="panel-body">

                <ul class="list-group row">
                    <c:forEach items="${comment}" var="comment">
                        <li class="list-group-item media " id="reply11">
                            <div class="avatar pull-left">
                                <a href="my.html"> <img class="media-object img-thumbnail avatar" alt="strdemo"
                                                        src="/images/avatar_small.jpg" style="width:48px;height:48px;"/>
                                </a>
                            </div>
                            <div class="infos">
                                <div class="media-heading meta">
                                    <a href="my.html" title="strdemo"
                                       class="remove-padding-left author"> ${comment.username}</a>
                                    <abbr class="timeago" title="create_time"><spring:eval
                                            expression="comment.createTime"/></abbr> <a
                                        name="reply1" class="anchor" href="#reply1" aria-hidden="true">#1</a>

                                </div>

                                <div class="media-body markdown-reply content-body">
                                        ${comment.content}
                                </div>

                            </div>
                        </li>
                    </c:forEach>
                </ul>
                <!-- Pager -->
                <div class="pull-right" style="padding-right:20px">

                </div>
            </div>
        </div>

        <!-- Reply Box -->
        <div class="panel panel-default">
            <div class="panel-heading">
                发表回复
            </div>
            <div class="panel-body">
                <div class="reply-box form">

                    <!-- 已经登录的情况 -->
                    <c:if test="${sessionScope.user!=null}">
                        <c:if test="${sessionScope.user.userStatus!=0}">
                            <div style="color: red">用户已被锁定，请联系管理员</div>
                        </c:if>
                        <c:if test="${sessionScope.user.userStatus==0}">
                            <form method="POST" action="/comment/add" accept-charset="UTF-8" id="thread_create_form"
                                  class="create_form">
                                <input type="hidden" name="postId" value="${post.id}">
                                <input type="hidden" name="userId" value="${sessionScope.user.id}">
                                <input type="hidden" name="username" value="${sessionScope.user.username}">

                                <div class="form-group">
                                    <textarea class="post-editor form-control" rows="5" style="overflow:hidden"
                                              id="content" placeholder="请使用Markdown撰写内容" name="content"
                                              cols="50"></textarea>
                                </div>
                                <div class="form-group status-post-submit">
                                    <input class="btn btn-primary col-xs-2" id="thread-create-submit" type="submit"
                                           value="回复">
                                </div>
                            </form>
                        </c:if>
                    </c:if>
                    <!-- 未登录的情况 -->
                    <c:if test="${sessionScope.user==null}">
                        <div style="padding:20px;">
                            需要 <a class="btn btn-success" href="/bbs/to_login">登录</a> 后方可回复, 如果你还没有账号请点击这里 <a
                                class="btn btn-primary" href="/bbs/to_register">注册</a>。
                        </div>
                    </c:if>
                </div>
            </div>
        </div>

    </div>

    <div class="col-md-3 side-bar">
        <div class="panel panel-default corner-radius">
            <div class="panel-heading">
                <h3 class="panel-title">BBS</h3>
            </div>
            <!-- 已登录的情况 -->
            <c:if test="${sessionScope.user!=null}">
                <div class="panel-body text-center">
                    <c:if test="${sessionScope.user.userStatus!=0}">
                        <div style="color: red">用户已被锁定，请联系管理员</div>
                    </c:if>
                    <c:if test="${sessionScope.user.userStatus==0}">
                        <a href="/post/to_post" class="btn btn-primary">
                            <i class="fa fa-user"> </i> 发帖
                        </a>
                    </c:if>
                </div>
            </c:if>
            <!-- 未登录的情况 -->
            <c:if test="${sessionScope.user==null}">
                <div class="panel-body text-center">
                    <a href="/bbs/to_register" class="btn btn-primary">
                        <i class="fa fa-user"> </i> 注册
                    </a>
                </div>
                <div class="panel-footer text-center">
                    已注册用户请 <a href="/bbs/to_login">登录</a>
                </div>
            </c:if>
        </div>

        <div class="panel panel-default corner-radius">
            <div class="panel-heading">
                <h3 class="panel-title">小贴士</h3>
            </div>
            <div class="panel-body">
                心若没有栖息的地方，到哪里都是在流浪!
            </div>
        </div>

        <div class="panel panel-default corner-radius">
            <div class="panel-heading">
                <h3 class="panel-title">统计信息</h3>
            </div>
            <ul class="list-group">
                <li class="list-group-item">社区会员: 747</li>
                <li class="list-group-item">主题数: 95</li>
                <li class="list-group-item">回帖数: 218</li>
            </ul>
        </div>

    </div>
    <div class="clearfix"></div>

</div>
<jsp:include page="bottom.jsp"/>