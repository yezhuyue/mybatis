<%--
  Created by IntelliJ IDEA.
  User: tang
  Date: 2017/3/26
  Time: 23:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>修改博客信息</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/static/jquery/jquery-3.2.0.slim.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h1>修改博客信息</h1>
    <hr/>

    <form:form action="${pageContext.request.contextPath}/updateBlogPost" method="post" commandName="blog">
        <div class="form-group">
            <input type="hidden" class="form-control" name="id" value="${blog.id}">
            <label for="inputTitle" class="control-label">标题</label>
            <input type="text" class="form-control" id="inputTitle" name="title" value="${blog.title}" placeholder="请输入标题...">
        </div>
        <div class="form-group">
            <label for="inputAuthor" class="control-label">作者</label>
            <select class="form-control" name="userId" id="inputAuthor" >
                <c:forEach items="${users}" var="user">
                    <c:if test="${user.id==blog.userId}">
                        <option value="${user.id}" selected="selected">${user.name}</option>
                    </c:if>
                    <c:if test="${user.id!=blog.userId}">
                        <option value="${user.id}" >${user.name}</option>
                    </c:if>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label for="inputTextarea" class="control-label">内容</label>
            <textarea class="form-control" id="inputTextarea" name="content" rows="3" placeholder="请输入文本...">${blog.content}</textarea>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-success">提交</button>
        </div>
    </form:form>
    <%--
    <form class="form-horizontal" action="${pageContext.request.contextPath}/updatePost" method="post">

    </form>
    --%>
</div>
</body>
</html>
