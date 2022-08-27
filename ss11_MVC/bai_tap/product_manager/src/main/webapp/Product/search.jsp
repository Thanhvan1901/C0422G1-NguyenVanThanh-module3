<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 8/27/2022
  Time: 2:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tìm Kiếm Theo Tên Sản Phẩm</title>
</head>
<body>
<p>Tìm Kiếm Theo Tên Sản Phẩm</p>
<form action="/product" method="post">
    <label>
        Nhập Tên Cần Tìm Kiếm
        <input type="text" name="name">
    </label>
    <input type="submit" name="action"  value="view">
</form>
</body>
</html>
