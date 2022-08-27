<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 8/27/2022
  Time: 9:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Cập Nhập Sản Phẩm</h1>
<form action="/product?action=edit" method="post">
    <label>Mã Sản Phẩm</label><br/>
    <input type="Text" name="id" readonly value="${product.id}"><br/>
    <label>Tên Sản Phẩm</label><br/>
    <input type="Text" name="name" value="${product.name}"><br/>
    <label>Giá Sản Phẩm</label><br/>
    <input type="Text" name="price" value="${product.price}"><br/>
    <label>Mô Tả Sản Phẩm</label><br/>
    <input type="Text" name="description" value="${product.description}"><br/>
    <label>Nhà Sản Xuất</label><br/>
    <input type="Text" name="production" value="${product.production}"><br/>
    <input type="submit" value="submit">
</form>
</body>
</html>
