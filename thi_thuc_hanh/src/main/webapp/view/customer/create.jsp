<%--
  Created by IntelliJ IDEA.
  User: huynh
  Date: 27/08/2022
  Time: 7:40 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <title>Add new Hộ Khẩu</title>
    <style>
        body {
            background-image: url("https://cdn.wallpapersafari.com/97/50/eRwDMy.jpg");
        }

        form {
            background-image: url("https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v960-ning-30.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=63dd5f402645ef52fb7dfb592aec765a");
        }

        a {
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        input:invalid {
            border-color: red;
        }

        input:valid {
            border-color: green;
        }
    </style>
</head>
<body>
<div class="mx-5 px-5 pt-3">
    <h2 class="text-center fw-bold">Add new Hộ Khẩu</h2>

    <p class="text-center mt-3"><a href="/"><i class="fa-solid fa-house-chimney h5 mx-1"></i> Back to HOME</a></p>

    <p class="text-center">
        <a href="/hokhau"><i class="fa-solid fa-backward"></i> Back to Hộ Khẩu list</a>
    </p>

    <c:if test="${mess!=null}">
        <c:if test="${check}">
            <div class="justify-content-center d-flex">
                <div class="alert alert-success alert-dismissible fade show w-50 text-center">
                    <strong>Congratulations!</strong> ${mess}
                    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                </div>
            </div>
        </c:if>

        <c:if test="${!check}">
            <div class="justify-content-center d-flex">
                <div class="alert alert-danger alert-dismissible fade show w-50 text-center">
                    <strong>Sorry!</strong> ${mess}
                    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                </div>
            </div>
        </c:if>
    </c:if>

    <div class="d-flex justify-content-center">

        <form class="w-50 border border-2 border-success p-3 rounded" action="/hokhau?action=create"
              method="post">
            <div class="form-group">
                <label for="hokhauName" class="h6">Name:</label>
                <div class="input-group">
                    <input type="text" id="hokhauName" class="form-control" placeholder="Input name" name="hokhauName" required
                           pattern="^[A-Z][a-z]+( [A-Z][a-z]*)+$"
                           title="Tên khách hàng không được chứa số và các kí tự đầu tiên của mỗi từ phải viết hoa.">
                    <span class="input-group-text"><i class="fa-solid fa-person-circle-question"></i></span>
                </div>
            </div>

            <div class="mt-3 form-group">
                <label for="hokhauSoluong" class="h6">Số Lượng</label>
                <div class="input-group">
                    <input type="text" id="hokhauSoluong" class="form-control" placeholder="Input Id card" name="hokhauSoluong">
                    <span class="input-group-text"><i class="fa-solid fa-id-card"></i></span>
                </div>
            </div>

            <div class="mt-3 form-group">
                <label for="hokhauNgayNhap" class="h6">Ngày Làm Hộ Khẩu:</label>
                <input type="date" id="hokhauNgayNhap" class="form-control" name="hokhauNgayNhap">
            </div>
            <div class="mt-3 form-group">
                <label for="hokhauDiaChi" class="h6">Địa Chỉ</label>
                <div class="input-group">
                    <input type="text" id="hokhauDiaChi" class="form-control" placeholder="Input Address" name="hokhauDiaChi"
                           required pattern="^.+$" title="Vui lòng không để trống địa chỉ.">
                    <span class="input-group-text"><i class="fa-solid fa-map-location-dot"></i></span>
                </div>
            </div>

            <div class="mt-3 text-center">
                <button class="btn btn-info btn-outline-success btn-sm border border-2 border-success text-dark">
                    -- Save <i class="fa-solid fa-floppy-disk"></i> --
                </button>
            </div>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>
</body>
</html>