<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 8/24/2022
  Time: 3:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Calculator</title>
  </head>
  <body>
<form method="get" action="/calculator">
  <h1>Simple Calculator</h1>
  <label >First operand</label><br/>
  <input type="text" name="firstOperand"><br/>
  <label>Operator</label><br/>
  <select name="operator">
    <option>Addition</option>
    <option>Subtraction</option>
    <option>Division</option>
    <option>Multiplication</option>
  </select><br/>
  <label>Second operand</label><br/>
  <input type="text" name="secondoperand"><br/>
  <input type="submit" id="submit" name="Calculate" value="Calculator">
</form>
  </body>
</html>
