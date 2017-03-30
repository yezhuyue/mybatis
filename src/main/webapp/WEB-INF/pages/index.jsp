<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <title>index</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/static/jquery/jquery-3.2.0.slim.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h1>欢迎浏览mybatis首页</h1>
    <hr/>
    <h3>
        <a href="${pageContext.request.contextPath}/getUsers" button type="button" class="btn btn-info">用户管理</a>
        <a href="${pageContext.request.contextPath}/getBlogs" button type="button" class="btn btn-info">博客管理</a>
    </h3>
</div>
</body>
</html>
