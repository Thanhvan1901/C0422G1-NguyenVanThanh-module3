<%--
  Created by IntelliJ IDEA.
  User: huynh
  Date: 27/08/2022
  Time: 9:58 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <title>Home</title>
    <style>
        .header {
            background-image: url("https://img.wallpapersafari.com/desktop/1600/900/22/47/iU4Gez.jpg");
        }

        a {
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        .footer {
            position: absolute;
            bottom: 0;
            background-image: url("https://wallpaperaccess.com/full/3953563.jpg");
        }

        .left {
            overflow: hidden;
            height: 520px;
        }

        .left:hover {
            overflow: scroll;
        }

        .zoom:hover {
            transform: scale(1.2);
        }

        .body {
            background-image: url("https://media.istockphoto.com/photos/abstract-blur-blue-gradient-color-background-with-bokeh-round-light-picture-id1310553941?b=1&k=20&m=1310553941&s=170667a&w=0&h=ceXJ-ZDLHlygjY53FQTNp5xpQ9lqRCkjD-RMJGUSvp0=");
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid mx-5">
        <a class="navbar-brand font-weight-bold" href="/">Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item dropdown ms-3">
                    <a class="nav-link dropdown-toggle text-dark" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false">HoKhau</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/hokhau">Hộ Khẩu list</a></li>
                        <li><a class="dropdown-item" href="/hokhau?action=create">Add new Hộ Khẩu</a></li>
                    </ul>
                </li>

                <li class="nav-item dropdown ms-3">
                    <a class="nav-link dropdown-toggle text-dark" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false">Service</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/facility">Facility list</a></li>
                        <li><a class="dropdown-item" href="/facility?action=create">Add new Facility</a></li>
                    </ul>
                </li>

                <li class="nav-item dropdown ms-3">
                    <a class="nav-link dropdown-toggle text-dark" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false">Contract</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/contract">Contract list</a></li>
                        <li><a class="dropdown-item" href="/contract?action=create">Add new Contract</a></li>
                    </ul>
                </li>
            </ul>

            <form class="d-flex my-2" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">
                    <i class="fa-solid fa-magnifying-glass"></i></button>
            </form>
        </div>
    </div>
</nav>

<div class="container-fluid body" style="height: 520px">
    <div class="row mx-3">
        <div class="col-2 left">
            <p class="ms-2 mt-2 text-success">Item 1</p>
            <img class="img-fluid zoom border border-primary" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkVmLmFswjaPR6nEZpl54_5iCVRwtZrf7ds6cnFnhH5DBRHAurKWkeKQc1OrF8jKURPGs&usqp=CAU" alt="">

            <p class="ms-2 mt-4 text-secondary">Item 2</p>
            <img class="img-fluid zoom border border-success" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi-taWYvyjOC_LUqwf5eHpUrgn-G2IqOqRowmd5rQoVMFW1D1OtrBioJhy1rZ319e96nc&usqp=CAU" alt="">

            <p class="ms-2 mt-4 text-success">Item 3</p>
            <img class="img-fluid zoom border border-danger" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9iS90e5jZmIgNx23HNAi4IFUwvjVCFhiZ4m1rj8C3PfYYFQPwuf9XJLcHijTMadm-QmM&usqp=CAU" alt="">

            <p class="ms-2 mt-4 text-secondary">Item 4</p>
            <img class="img-fluid zoom border border-warning" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWXGdKlUj-vG5q3kiSbZbXIZsvOV5arHkhn5IW24NExOxJBh1C12cfd2Q1jlEQLUqO2QQ&usqp=CAU" alt="">

            <p class="ms-2 mt-4 text-success">Item 5</p>
            <img class="img-fluid zoom border border-info" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWQfQa65lK7gySRtU6GwaV2LEIi7DdDg4N5mdR36doe06APb7d-L1-6B56DbAsUbhsonI&usqp=CAU" alt="">

            <p class="ms-2 mt-4 text-secondary">Item 6</p>
            <img class="img-fluid zoom border border-warning" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7YoFQEjitLVkwprh31XODzfX2nwG6_p9bZ8w0zAkN2WiBrbZ69iLoJZzLeeBUvHiT29s&usqp=CAU" alt="">

            <p class="ms-2 mt-4 text-success">Item 7</p>
            <img class="img-fluid zoom border border-success" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJDxUz9fzPbDof1B28f5_FLMNhNPor9MfjFQ&usqp=CAU" alt="">
        </div>

        <div class="col-10">
            <img class="img-fluid mt-4 ms-2 border border-4 border-light" src="http://ngocdiep.vn/wp-content/uploads/2020/12/4.flamigo-cat-ba.jpg" alt="">
        </div>
    </div>
</div>

<div class="container-fluid text-center footer" style="height: 50px">
    <p class="text-light pt-2">&copy;FURAMA - officially operated in 1997.</p>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>
</body>
</html>