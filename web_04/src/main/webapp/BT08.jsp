<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, java.text.*" %>
<%@ page import="com.baitap.session04.Revenue" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    List<Revenue> revenueList = new ArrayList<>();
    revenueList.add(new Revenue("Tháng 1", 1200));
    revenueList.add(new Revenue("Tháng 2", 2100));
    revenueList.add(new Revenue("Tháng 3", 3500));
    revenueList.add(new Revenue("Tháng 4", 1900));
    revenueList.add(new Revenue("Tháng 5", 1600));
    request.setAttribute("revenues", revenueList);
%>

<html>
<head>
    <title>Doanh Thu Theo Tháng</title>
</head>
<body>
<h2>Danh Sách Doanh Thu</h2>
<table border="1" cellpadding="8">
    <tr>
        <th>Tháng</th>
        <th>Doanh Thu</th>
    </tr>

    <c:set var="total" value="0" />
    <c:forEach var="rev" items="${revenues}">
        <tr>
            <td>${rev.month}</td>
            <td>${rev.amount}</td>
        </tr>
        <c:set var="total" value="${total + rev.amount}" />
    </c:forEach>
</table>

<br/>
<p><strong>Tổng Doanh Thu:</strong> ${total}</p>

<c:choose>
    <c:when test="${total > 10000}">
        <p style="color:green;"><strong>Doanh thu cao!</strong></p>
    </c:when>
    <c:otherwise>
        <p style="color:orange;"><strong>Doanh thu chưa đạt mục tiêu.</strong></p>
    </c:otherwise>
</c:choose>

</body>
</html>
