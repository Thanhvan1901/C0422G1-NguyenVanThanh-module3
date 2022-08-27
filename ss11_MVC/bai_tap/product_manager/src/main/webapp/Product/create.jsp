<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 8/27/2022
  Time: 9:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Thêm Mới Sản Phẩm</h1>
<form action="/product?action=create" method="post">
    <label>Tên Sản Phẩm</label><br/>
    <input type="Text" name="name" placeholder="Nhập Tên Sản Phẩm"><br/>
    <label>Giá Sản Phẩm</label><br/>
    <input type="Text" name="price" placeholder="Nhập Giá Sản Phẩm"><br/>
    <label>Mô Tả Sản Phẩm</label><br/>
    <input type="Text" name="description" placeholder="Mô Tả Sản Phẩm"><br/>
    <label>Nhà Sản Xuất</label><br/>
    <input type="Text" name="production" placeholder="Nhà Sản Xuất"><br/>
    <input type="submit" value="submit">
</form>
</body>
</html>
