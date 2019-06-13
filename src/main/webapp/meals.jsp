<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime" %>
<html>
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
<table border="1">
    <thead>
        <tr>
            <th>Date</th>
            <th>Description</th>
            <th>Calories</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${mealToList}" var="meal">
            <c:if test="${meal.excess eq true}">
                <tr bgcolor="red">
                    <td><c:out value="${meal.dateTime}"/></td>
                    <td><c:out value="${meal.description}"/> </td>
                    <td><c:out value="${meal.calories}"/> </td>
                </tr>
            </c:if>
            <c:if test="${meal.excess eq false}">
                <tr bgcolor="green">
                    <td><c:out value="${meal.dateTime}"/></td>
                    <td><c:out value="${meal.description}"/> </td>
                    <td><c:out value="${meal.calories}"/> </td>
                </tr>
            </c:if>
        </c:forEach>
    </tbody>

</table>

    <c:out value="${meal.description}"/>


</body>
</html>