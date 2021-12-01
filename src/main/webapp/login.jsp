<%--
  Created by IntelliJ IDEA.
  User: jackie
  Date: 11/30/21
  Time: 12:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<% if(request.getMethod().equalsIgnoreCase("post")) {--%>
<%--    String username = request.getParameter("username");--%>
<%--    String password = request.getParameter("password");--%>
<%--    if(username.equals("admin") && password.equals("password")) {--%>
<%--        response.sendRedirect("/profile.jsp");--%>
<%--    } else {--%>
<%--        response.sendRedirect("/login.jsp");--%>
<%--    }--%>
<%--}--%>
<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("admin") && password.equals("password")) {
            response.sendRedirect("/profile.jsp");
        }
    }
%>
<html>
<head>
    <title>Login</title>
    <%@include file="partials/head_links.jsp"%>
</head>
<body>
<%@include file="partials/navbar.jsp"%>
<%@include file="partials/login_form.jsp"%>
<%--<form action="login.jsp" method="POST">--%>
<%--    <label for="username">Username</label>--%>
<%--    <input type="text" id="username" name="username">--%>
<%--    <br><br>--%>
<%--    <label for="password">Password</label>--%>
<%--    <input type="password" id="password" name="password">--%>
<%--    <br><br>--%>
<%--    <input type="submit" value="Submit">--%>
<%--</form>--%>
<%@include file="partials/scripts.jsp"%>
</body>
</html>
