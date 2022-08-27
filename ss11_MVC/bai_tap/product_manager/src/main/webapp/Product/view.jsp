<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 8/27/2022
  Time: 3:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <th>Mã Sản Phẩm</th>
        <th>Tên Sản Phẩm</th>
        <th>Giá Bán Sản Phẩm</th>
        <th>Tình Trạng Sản Phẩm</th>
        <th>Nhà Sản Xuất</th>
    </tr>
    <c:forEach var="product" items="${productSearch}">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.description}</td>
            <td>${product.production}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
