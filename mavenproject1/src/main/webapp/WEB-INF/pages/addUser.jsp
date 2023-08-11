<%-- 
    Document   : addUser
    Created on : Aug 11, 2023, 4:48:31 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="text-danger mt-4 mb-4 text-center"><h2>QUẢN LÝ NGƯỜI DÙNG</h2></div>

<c:url value="/addUser" var="action" />
<form:form cssClass="container " modelAttribute="addUsers" action="${action}" method="post" enctype="multipart/form-data">
    <form:hidden path="id" />

    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="firstName" id="firstName" placeholder="Họ Lót" name="firstName" />
        <label for="name">Họ Lót</label>
    </div>

    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="lastName" id="lastName" placeholder="Tên" name="lastName" />
        <label for="name">Tên</label>
    </div>

    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="email" id="email" placeholder="email" name="email" />
        <label for="name">email</label>
    </div>

    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="phone" id="phone" placeholder="Số điện thoại" name="phone" />
        <label for="name">Số điện thoại</label>
    </div>

    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="username" id="username" placeholder="Tên đăng nhập" name="username" />
        <label for="name">Tên đăng nhập</label>
    </div>

    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="password" id="password" placeholder="Mật Khẩu" name="password" />
        <label for="name">Mật Khẩu</label>
    </div>

    <div class="form-floating mb-3 mt-3">
        <form:input type="file" class="form-control" path="avatar" id="avatar" placeholder="avatar" name="avatar" />
        <label for="logo">avatar</label>
    </div>
        
    <div class="form-floating">
            <form:select class="form-select" id="userRole" name="userRole" path="userRole">
                <option value="ROLE-USER">Người Ứng Tuyển</option>
                <option value="ROLE-EMP">Nhà Tuyển Dụng</option>
            </form:select>
            <label for="location" class="form-label">Vai Trò</label>
    </div>

    <div class="form-floating mb-3 mt-3">
        <button type="submit" class="btn btn-info">
            <c:choose>
                <c:when test="${addUser.id != null}">Cập nhật người dùng</c:when>
                <c:otherwise>Thêm người dùng</c:otherwise>
            </c:choose>
        </button>
    </div>

</form:form>
