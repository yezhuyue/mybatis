<%--
  Created by IntelliJ IDEA.
  User: tang
  Date: 2017/3/26
  Time: 23:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>testMybatis用户管理</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/static/jquery/jquery-3.2.0.slim.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h1>
        <div class="col-md-4">
            Mybatis用户管理
        </div>
        <div class="col-md-offset-10">
            <a href="${pageContext.request.contextPath}/getUsers" button type="button" class="btn btn-info">用户管理</a>
            <a href="${pageContext.request.contextPath}/getBlogs" button type="button" class="btn btn-info">博客管理</a>
        </div>
    </h1>
    <hr/>

    <c:if test="${not empty users}">
        <tr>
            <h4>所有用户<a href="${pageContext.request.contextPath}/addUser" button type="button"
                       class="btn btn-primary">添加</a></h4>
        </tr>
    </c:if>
    <c:if test="${empty users}">
        <tr>
            <h4>User表为空,请添加用户<a href="${pageContext.request.contextPath}/addUser" button type="button"
                                class="btn btn-primary">添加</a></h4>
        </tr>
    </c:if>

    <table class="table table-hover table-bordered">
        <tr>
            <th>ID</th>
            <th>姓名</th>
            <th>密码</th>
            <th>操作</th>
        </tr>


        <c:if test="${not empty users}">
            <c:forEach items="${users}" var="user">
                <tr>
                    <td><c:out value="${user.id}"/></td>
                    <td><c:out value="${user.name}"/></td>
                    <td><c:out value="${user.pwd}"/></td>
                    <td>
                        <a href="${pageContext.request.contextPath}/show/${user.id}" button type="button"
                           class="btn btn-info">详情</a>
                        <a href="${pageContext.request.contextPath}/update/${user.id}" type="button"
                           class="btn btn-warning">更新</a>
                        <a href="${pageContext.request.contextPath}/delete/${user.id}" type="button"
                           class="btn btn-danger">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </c:if>
    </table>
</div>
</body>
</html>
