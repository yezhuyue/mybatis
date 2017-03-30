<%--
  Created by IntelliJ IDEA.
  User: tang
  Date: 2017/3/26
  Time: 23:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Mybatis更新用户信息</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/static/jquery/jquery-3.2.0.slim.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h1>Mybatis更新用户信息</h1>
    <hr/>
    <!--modelAttribute="user" commandName功能相同 -->
    <form:form action="${pageContext.request.contextPath}/updatePost" method="post" commandName="user" >
        <div class="form-group">
            <label for="inputName" class="col-sm-2 control-label">Name</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="inputName" name="name" placeholder="请输入用户名" value="${user.name}">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword" class="col-sm-2 control-label">Password</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="inputPassword" name="pwd" placeholder="请输入密码">
            </div>
        </div>
        <input type="hidden" class="form-control" id="id" name="id" value="${user.id}">
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">提交</button>
            </div>
        </div>
    </form:form>
    <%--
    <form class="form-horizontal" action="${pageContext.request.contextPath}/updatePost" method="post">

    </form>
    --%>
</div>
</body>
</html>
