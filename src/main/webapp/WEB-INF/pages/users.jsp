<%-- 
    Document   : users
    Created on : Nov 17, 2021, 9:19:05 AM
    Author     : asus
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Cars">
    <h1>Users</h1>
    <form method="POST" action="${pageContext.request.contextPath}/Users">
    <c:if test="${pageContext.request.isUserInRole('AdminRole')}">
        <a class="btn-primary btn-lg" href="${pageContext.request.contextPath}/AddUser" role="button">Add User</a>
    </c:if>
    <c:forEach var="car" items="$(cars)" varStatus="status">
    <div class="row">
        <div class="col-md">
            <input type="checkbox" name="user_ids" value="${user.id}"/>
        </div>
        <div class="col-md-4">
            $(user.username)
        </div>
        <div class="col-md-4">
             $(user.email)
        </div>
         <div class="col-md-4">
             $(user.position)
        </div>
    </div>
    </c:forEach>
    </form>
    
    Invoice for:
    <c:forEach var="username" items="${invoices}" varStatus="status">
        ${username}
    </c:forEach>
</t:pageTemplate>
