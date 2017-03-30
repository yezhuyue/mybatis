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
    <title>Mybatis博客管理</title>
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
            Mybatis博客管理
        </div>
        <div class="col-md-offset-10">
            <a href="${pageContext.request.contextPath}/getUsers" button type="button" class="btn btn-info">用户管理</a>
            <a href="${pageContext.request.contextPath}/getBlogs" button type="button" class="btn btn-info">博客管理</a>
        </div>
    </h1>
    <hr/>
    <c:if test="${not empty blogs}">
        <tr>
            <h4>所有博客<a href="${pageContext.request.contextPath}/addBlog" type="button" class="btn btn-primary">添加</a>
            </h4>
        </tr>
    </c:if>
    <c:if test="${empty blogs}">
        <tr>
            <h4>Blog表为空,请添加用户<a href="${pageContext.request.contextPath}/addBlog" button type="button"
                                class="btn btn-primary">添加</a></h4>
        </tr>
    </c:if>
    <table class="table table-hover table-bordered">
        <tr>
            <th>ID</th>
            <th>标题</th>
            <th>作者</th>
            <th>发布日期</th>
            <th>操作</th>
        </tr>

        <c:if test="${not empty blogs}">
            <c:forEach items="${blogs}" var="blog">
                <tr>
                    <td><c:out value="${blog.id}"/></td>
                    <td><c:out value="${blog.title}"/></td>
                    <td><c:out value="${blog.user.name}"/></td>
                    <td><fmt:formatDate value="${blog.pubDate}" type="both" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                    <td>
                        <a href="${pageContext.request.contextPath}/showBlog/${blog.id}"   type="button" class="btn btn-info">详情</a>
                        <a href="${pageContext.request.contextPath}/updateBlog/${blog.id}" type="button" class="btn btn-warning">更新</a>
                        <a href="${pageContext.request.contextPath}/deleteBlog/${blog.id}" type="button" class="btn btn-danger">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </c:if>
    </table>
</div>
</body>
</html>
