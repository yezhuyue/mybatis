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
    <title>Mybatis用户管理</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/static/jquery/jquery-3.2.0.slim.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <h1>用户详情</h1>
        <hr/>

        <table class="table table-striped table-bordered">
            <tr>
                <th>ID</th>
                <td>${user.id}</td>
            </tr>
            <tr>
                <th>姓名</th>
                <td>${user.name}</td>
            </tr>
            <tr>
                <th>密码</th>
                <td>${user.pwd}</td>
            </tr>
            <tr>
                <th>更新时间</th>
                <td><fmt:formatDate value="${user.updateTime}" type="both" pattern="yyyy-MM-dd HH:mm:ss"/></td>
            </tr>
            <tr>
                <th>创建时间</th>
                <td><fmt:formatDate value="${user.createTime}" type="both" pattern="yyyy-MM-dd HH:mm:ss"/></td>
            </tr>
        </table>
    </div>
</body>
</html>
