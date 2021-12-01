<%--
  Created by IntelliJ IDEA.
  User: jackie
  Date: 12/1/21
  Time: 9:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<h2 class="p-3">Login</h2>
<form action="login.jsp" method="post" class="p-3">
    <div class="form-group">
        <label for="username">Username</label>
        <input type="text" class="form-control col-4" id="username">
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input type="password" class="form-control col-4" id="password">
    </div>
    <button type="submit" class="btn btn-primary" value="Submit">Submit</button>
</form>
