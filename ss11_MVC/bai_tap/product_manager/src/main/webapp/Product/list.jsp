<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 8/26/2022
  Time: 4:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
</head>
<body>
<h1>Customers</h1>
<p>
    <a href="/product?action=create">Thêm Mới Sản Phẩm</a>
    <a href="/product?action=search">Tìm Kiếm Theo Tên Sản Phẩm</a>

</p>
<table border="1">
    <tr>
        <th>Mã Sản Phẩm</th>
        <th>Tên Sản Phẩm</th>
        <th>Giá Bán Sản Phẩm </th>
        <th>Mô Tả Sản Phẩm</th>
        <th>Nhà Sản Xuất</th>
    </tr>
    <c:forEach items='${productList}' var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.description}</td>
            <td>${product.production}</td>
            <td><a href="/product?action=delete&id=${product.id}">Xóa</a></td>
            <td><a href="/product?action=edit&id=${product.id}">Cập Nhập</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
