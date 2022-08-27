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
<p>
    Bạn Có Muốn Xóa Sản Phẩm Có ID : ${id}
</p>
<a href="/product?action=confirm_delete&id=${id}"><input type="button" value="Có"></a>
<a href="/product"><button>Không</button></a>
</body>
</html>
