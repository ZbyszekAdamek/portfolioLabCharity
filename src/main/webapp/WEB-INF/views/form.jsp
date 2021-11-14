<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Document</title>

    <link rel="stylesheet" href="<c:url value="resources/css/style.css"/>"/>
</head>

<body>
<%@ include file="header.jsp" %>

<form:form method="post" modelAttribute="donation">
<form:checkboxes path="categories"
                 items="${categories}"/>
<form:select path="institution" items="${institutions}"/>
<form:input path="zipCode" />
<form:input path="street" />
<form:input path="city"/>
<form:input path="quantity"/>
<form:textarea path="pickUpComment"/>
<form:input type="date" path="pickUpDate"/>
<form:input type="time" path="pickUpTime" />
</form:form>

<script src="<c:url value="resources/js/app.js"/>"></script>
<%@ include file="footer.jsp" %>
</body>
</html>