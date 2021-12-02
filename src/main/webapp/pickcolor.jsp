<%--
  Created by IntelliJ IDEA.
  User: jackie
  Date: 12/2/21
  Time: 10:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pick Color</title>
</head>
<body>
<form action="/pickcolor" method="post">
    <label for="color">Pick a Color</label>
    <input type="text" id="color" name="color">
    <button type="submit" value="Submit">Submit</button>
</form>
</body>
</html>
