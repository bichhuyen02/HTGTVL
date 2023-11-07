<%-- 
    Document   : login
    Created on : Aug 9, 2023, 12:04:15 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="<c:url value="/js/main.js" />"></script>
<link rel="stylesheet" href="<c:url value="/css/index1.css" />"/>

<c:url value="/login" var="action" />

<div class="register-photo">

    <div class="form-container">
        <div class="image-holder"></div>
        <form method="post" action="${action}">
            <h2 class="text-center text-primary"><strong>ĐĂNG NHẬP </strong></h2>

            <div class="form-group">
                <input class="form-control" id="name" type="username" name="username" required
                       placeholder="Tên đăng nhập"></div>
            <div class="form-group">
                <input class="form-control" id="pwd" type="password" name="password" required
                       placeholder="Mật khẩu"></div>
            <div class="form-group">
                <div class="d-flex justify-content-between">
                    <div class="form-check"> <input class="form-check-input" onclick="showPassword()" type="checkbox" value="" id="flexCheckDefault"> <label class="form-check-label" for="flexCheckDefault"> Hiển thị mật khẩu </label> </div>
                    <!--                    <div> <a href="#" class="text-info">Quên mật khẩu </a> </div>-->
                </div>
            </div>
            <div class="form-group">
                <button class="btn-login btn btn-info btn-block" type="submit" value ="Đăng Nhập">Đăng nhập</button>
            </div>
            <p class="text-center">Bạn chưa có tài khoản? <a href="<c:url value="/addUser" />">Đăng ký</a> 
            </p> 
            <p class="text-center"><a href="<c:url value="/" />">Trang chủ</a> 
            </p>
    </div>

