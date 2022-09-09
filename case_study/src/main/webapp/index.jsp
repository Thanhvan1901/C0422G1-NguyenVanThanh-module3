<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/3/2022
  Time: 9:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="furama/include/header.jsp" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap-5.0.2-dist/css/bootstrap.min.css">
</head>
<body>
<div class="container-fluid ">
    <div class="row">
        <img class="position-relative w-100"
             src="https://thodiavn24h.com/wp-content/uploads/2020/05/home-furama-resort-danang.jpg"
             alt="responsive image">
    </div>
    <div class="row row-cols-1 row-cols-md-3 g-4 m-5 ">
        <div class="col">
            <div class="card h-100 shadow p-3 mb-5 bg-body rounded">
                <img src="https://images.vietnamtourism.gov.vn/vn/images/Furama12.jpg" class="card-img-top"
                     alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                        additional content. This content is a little bit longer.</p>
                </div>
                <div class="card-footer">
                    <small class="text-muted">Võ Như Vinh</small>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100 shadow p-3 mb-5 bg-body rounded">
                <img src="https://images.vietnamtourism.gov.vn/vn/images/Furama12.jpg" class="card-img-top"
                     alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This card has supporting text below as a natural lead-in to additional
                        content.</p>
                </div>
                <div class="card-footer">
                    <small class="text-muted">Võ Như Vinh</small>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100 shadow p-3 mb-5 bg-body rounded">
                <img src="https://images.vietnamtourism.gov.vn/vn/images/Furama12.jpg" class="card-img-top"
                     alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                        additional content. This card has even longer content than the first to show that equal
                        height
                        action.</p>
                </div>
                <div class="card-footer">
                    <small class="text-muted">Võ Như Vinh</small>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="furama/include/footer.jsp" %>
</body>
<script src="bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</html>
