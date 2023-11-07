<%-- 
    Document   : addCompany
    Created on : Jul 29, 2023, 10:35:41 AM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>

<c:url value="/addCompany" var="action" />

<form:form cssClass="container" modelAttribute="addCompanies" action="${action}" method="post" enctype="multipart/form-data">
    <%--<form:errors path="*" element="div" cssClass="alert alert-danger" />--%>
    <form:hidden path="id" />
    <form:hidden path="image" />
    <form:hidden path="accountId" />

    <div class="card nen">
        <article class="card-body mx-auto" style="width: 50%;">
            <h2 class="card-title  text-center text-white">DOANH NGHIỆP</h2>
            <form> 
                <c:if test="${errMsg != null}">
                    <div class="alert alert-danger msg">
                        ${errMsg}
                    </div>    
                </c:if>

                <div class="form-floating mb-3 mt-3">
                    <form:input type="text" class="form-control" path="name" id="name" placeholder="Tên doanh nghiệp" name="name" />
                    <label for="name">Tên doanh nghiệp</label>
                </div>
                    <form:errors path="name" element="div" cssClass="text-danger" />

                <div class="form-floating mb-3 mt-3">
                    <form:input type="email" class="form-control" path="mail" id="mail" placeholder="Mail" name="mail" />
                    <label for="mail">Mail</label>
                </div>
                    <form:errors path="mail" element="div" cssClass="text-danger" />

                <div class="form-floating mb-3 mt-3">
                    <form:input type="number" class="form-control" path="phone" id="phone" placeholder="Số điện thoại" name="phone" />
                    <label for="phone">Số điện thoại</label>
                </div>

                <div class="form-floating mb-3 mt-3">
                    <form:input type="text" class="form-control" path="address" id="address" placeholder="Địa chỉ" name="address" />
                    <label for="address">Địa chỉ</label>
                </div>
                    <form:errors path="address" element="div" cssClass="text-danger" />

                <div class="form-floating mb-3 mt-3">
                    <form:input type="date" class="form-control" path="dateOfIncorporation" id="dateOfIncorporation" placeholder="Địa chỉ" name="dateOfIncorporation" />
                    <label for="dateOfIncorporation">Ngày thành lập</label>
                </div>

                <div class="form-floating mb-3 mt-3">
                    <form:textarea rows ="3" class="form-control" path="description" id="description" placeholder="Mô tả" name="description" />
                    <label for="description">Mô tả</label>
                </div>
                    <form:errors path="description" element="div" cssClass="text-danger" />

                <div class="form-floating mb-3 mt-3">
                    <form:input type="text" class="form-control" path="scale" id="scale" placeholder="Nhân lực" name="scale" />
                    <label for="scale">Nhân lực</label>
                </div>
                    <form:errors path="scale" element="div" cssClass="text-danger" />
                    
                <div class="form-floating mb-3 mt-3">
                    <form:input type="text" class="form-control" path="linkCompany" id="linkCompany" placeholder="Link giới thiệu " name="linkCompany" />
                    <label for="name">Trang doanh nghiệp </label>
                </div>
                    <form:errors path="linkCompany" element="div" cssClass="text-danger" />

                <div class="form-floating mb-3 mt-3">
                    <form:input type="text" class="form-control" path="username" id="username" placeholder="tên đăng nhập" name="username" />
                    <label for="username">Tên đăng nhập</label>
                </div>

                <div class="form-floating mb-3 mt-3">
                    <form:input type="password" class="form-control" path="password" id="password" placeholder="Mật khẩu" name="password" />
                    <label for="password">Mật khẩu</label>
                </div> 

                <div class="form-floating mb-3 mt-3">
                    <form:input type="password" class="form-control" path="confirmPassword" id="confirmPassword" placeholder=" Xác nhận mật khẩu" name="confirmPassword" />
                    <label for="password">Xác nhận mật khẩu</label>
                </div>   

                <div class="form-floating mb-3 mt-3">
                    <form:input type="file" class="form-control" path="file" id="file" placeholder="logo" name="file" />
                    <label for="avatar">logo </label>
                    <c:if test="${addCompanies.image != null}">
                        <img src="${addCompanies.image}" width="120" height="100" />
                    </c:if>
                </div>
            </form>

            <se:authorize access="isAuthenticated()">
                <div class="form-floating mb-3 mt-3">
                    <button type="submit" class="btn btn-primary">
                        <c:choose>
                            <c:when test="${addCompanies.id != null}">Cập nhật</c:when>
                            <c:otherwise>Thêm</c:otherwise>
                        </c:choose>
                    </button>
                    <button type="button" onclick="deCompa()" class="btn btn-danger">Hủy</button>
                </div>
            </se:authorize>

            <se:authorize access="!isAuthenticated()">
                <div class="form-floating mb-3 mt-3">
                    <button type="submit" class="btn btn-primary">
                        Đăng kí Nhà tuyển dụng
                    </button>
                </div>
            </se:authorize>

            <p class="text-center"><a href="<c:url value="/" />">Trang chủ</a></p>
        </article>
    </div>
</form:form>
<script src="<c:url value="/js/main.js" />"></script>
