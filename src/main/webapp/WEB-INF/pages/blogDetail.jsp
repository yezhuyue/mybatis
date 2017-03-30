<%--
  Created by IntelliJ IDEA.
  User: tang
  Date: 2017/3/26
  Time: 23:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>博文详情</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/static/jquery/jquery-3.2.0.slim.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <h1>博文详情</h1>
        <hr/>

        <table class="table table-striped table-bordered">
            <tr>
                <th>ID</th>
                <td>${blog.id}</td>
            </tr>
            <tr>
                <th>标题</th>
                <td>${blog.title}</td>
            </tr>
            <tr>
                <th>作者</th>
                <td>${blog.user.name}</td>
            </tr>
            <tr>
                <th>内容</th>
                <td>${blog.content}</td>
            </tr>
            <tr>
                <th>发布时间</th>
                <td><fmt:formatDate value="${blog.pubDate}" type="both" pattern="yyyy-MM-dd HH:mm:ss"/></td>
            </tr>
        </table>
    </div>
</body>
</html>
