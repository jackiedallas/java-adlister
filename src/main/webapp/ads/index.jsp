<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jackie
  Date: 12/3/21
  Time: 1:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Current Advertisements"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="../partials/navbar.jsp" />
    <div style="padding: 1rem">
        <h1>Current Ads</h1>
        <c:forEach var="ad" items="${ads}">
            <div class="ad">
                <h3>${ad.title}</h3>
                <p>${ad.description}</p>
            </div>
        </c:forEach>
    </div>

</body>
</html>
