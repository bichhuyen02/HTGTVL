<%-- 
    Document   : addUser
    Created on : Aug 11, 2023, 4:48:31 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:url value="/addUser" var="action" />
<form:form cssClass="container " modelAttribute="addUsers" action="${action}" method="post" enctype="multipart/form-data">
    <form:hidden path="id" />

    <div class="card nen">
        <article class="card-body mx-auto" style="width: 45%;">
            <h2 class="card-title  text-center text-white">ĐĂNG KÝ TÀI KHOẢN</h2>
            <p class="text-center">Sử dụng tài khoản miễn phí!</p>
            <p>
                <a href="" class="btn btn-block btn-gmail"> <i class="fa fa-envelope"></i>       Đăng nhập gmail</a>
                <a href="" class="btn btn-block btn-facebook"> <i class="fab fa-facebook-f"></i>   Đăng nhập facebook</a>
            </p>
            <p class="divider-text">
                <span ></span>
            </p>
            <form>
                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-user" style="color:#3376BC"></i> </span>
                    </div>
                    <input type="text" class="form-control" path="name" id="name" placeholder="Họ và tên" name="name" />
                </div>



                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> 
                            <i class="fa fa-envelope" style="color:#3376BC"></i> 
                        </span>
                    </div>
                    <input name="email" class="form-control" id="email" path="email" placeholder="Email" type="email" name="email">
                </div>

                <div class="form-group input-group">
                    <span class="input-group-text"> 
                        <i class="fa fa-phone"style="color:#3376BC"></i>
                    </span>
                    <input type="number" class="form-control" path="phone" id="phone" placeholder="Số điện thoại" name="phone" />
                </div>

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-user" style="color:#3376BC"></i> </span>
                    </div>
                    <input type="text" class="form-control" path="username" id="username" placeholder="Tên đăng nhập" name="username" />

                </div>

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-lock"style="color:#3376BC"></i> </span>
                    </div>
                    <input class="form-control" type="text" path="password" id="password" placeholder="Tạo mật khẩu" name="password" />
                </div> <!-- form-group// --> 

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-lock"style="color:#3376BC"></i> </span>
                    </div>
                    <input class="form-control" type="password" path="password" id="password" placeholder="Xác nhận mật khẩu" name="password" />
                </div> <!-- form-group// -->   

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-building"style="color:#3376BC"></i> </span>
                    </div>
                    <select class="form-control" id="userRole" name="userRole" path="userRole">

                        <option value="ROLE_USER">Người ứng tuyển</option>
                        <option value="ROLE_EMP">Nhà tuyển dụng</option>

                    </select>
                </div> <!-- form-group end.// -->

                <div class="form-floating mb-3 mt-3">
                    <form:input type="file" class="form-control" path="file" id="file" placeholder="avatar" name="file" />
                    <label for="logo">avatar</label>
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block"> 
                        <c:choose>
                            <c:when test="${addUsers.id != null}">Cập nhật tài khoản</c:when>
                            <c:otherwise>Tạo tài khoản</c:otherwise>
                        </c:choose>
                    </button>
                </div> <!-- form-group// -->      
                <p class="text-center">Bạn đã có tài khoản? <a href="<c:url value="/login" />">Đăng nhập</a> 
                </p> 
                <p class="text-center"><a href="<c:url value="/" />">Quay về</a> 
                </p>  
            </form>
        </article>
    </div> <!-- card.// -->
</form:form>



