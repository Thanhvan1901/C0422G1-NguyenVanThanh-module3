<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 8/23/2022
  Time: 3:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Product Discount Calculator</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
  </head>
  <body>
  <h3>Product Discount Calculator</h3>
  <form action="/displaydiscount" method="post">
    <label>Product Description</label> <br/>
    <input name="productDescription" placeholder="Tên Sản Phẩm"><br/>
    <label> List Price</label><br/>
    <input  name="listPrice" placeholder="Giá Niêm Yết"><br/>
    <label> Discount Percent</label><br/>
    <input  name="discountPercent" placeholder="Tỉ Lệ Chiết Khấu"><br/>
    <input type="submit" id="submit" value="Calculate Discount ">
  </form>
  </body>
</html>
