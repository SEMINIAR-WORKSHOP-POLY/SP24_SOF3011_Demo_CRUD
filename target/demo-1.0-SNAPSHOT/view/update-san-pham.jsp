<%--
  Created by IntelliJ IDEA.
  User: hangnt
  Date: 27/03/2024
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
<header class="container"><h3 style="text-align: center;margin-top:15px;">Sửa thông tin Sinh Viên</h3>
</header>
<main class="container">
    <section>
        <form action="/may-tinh/view-update?id=${mt.id}" method="post">
            <div class="row mt-4">
                <div class="col-6">
                    <label>Mã</label>
                    <input type="text" class="form-control" name="ma" value="${mt.ma}"/>
                </div>
                <div class="col-6">
                    <label>Tên </label>
                    <input type="text" class="form-control" name="ten" value="${mt.ten}"/>
                </div>
            </div>
            <div class="row mt-4">
                <div class="col-6">
                    <label>Giá </label>
                    <input type="text" class="form-control" name="gia"  value="${mt.gia}"/>
                </div>
                <div class="col-6">
                    <label>Bộ nhớ</label>
                    <select name="boNho">
                        <option value="128GB" ${mt.boNho == "128GB" ? "selected" : ""}>128GB</option>
                        <option value="256GB" ${mt.boNho == "256GB" ? "selected" : ""}>256GB</option>
                        <option value="512GB" ${mt.boNho == "512GB" ? "selected" : ""}>512GB</option>
                        <option value="1TB" ${mt.boNho == "1TB" ? "selected" : ""}>1TB</option>
                    </select>

                </div>
            </div>
            <div class="row mt-4">
                <div class="col-6">
                    <label>Màu sắc</label>
                    <input type="radio" name="mauSac" value="Đen" ${mt.mauSac == "Đen" ? "checked" : ""} checked>Đen
                    <input type="radio" name="mauSac" value="Bạc" ${mt.mauSac == "Bạc" ? "checked" : ""}>Bạc
                </div>
                <div class="col-6">
                    <label>Hãng</label>
                    <select name="hang">
                        <option value="MSI" ${mt.hang == "MSI" ? "selected" : ""}>MSI</option>
                        <option value="ASUS" ${mt.hang == "ASUS" ? "selected" : ""}>ASUS</option>
                        <option value="ACER" ${mt.hang == "ACER" ? "selected" : ""}>ACER</option>
                        <option value="DELL" ${mt.hang == "DELL" ? "selected" : ""}>DELL</option>
                    </select>
                </div>
            </div>
            <div class="row mt-4">
                <div class="col-12">
                    <label>Mô tả</label>
                    <input type="text" class="form-control" name="mieuTa" value="${mt.mieuTa}"/>
                </div>
            </div>
            <div class="row mt-4" style="justify-content: center">
                <button class="btn btn-success col-1 m-3">
                    Update
                </button>
            </div>
        </form>
    </section>

</main>
<footer><p style="text-align: center;">HangNT169</p></footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
        integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
        crossorigin="anonymous"></script>
</body>
</html>
