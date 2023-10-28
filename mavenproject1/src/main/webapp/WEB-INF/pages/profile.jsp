<%-- 
    Document   : profile
    Created on : Sep 6, 2023, 5:07:22 PM
    Author     : Admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<link rel="stylesheet" href="<c:url value="/css/index1.css" />"/>
<c:url value="/profile/${sessionScope.currentUser.id}" var="action" />

<div class="text-primary mt-2 mb-4 text-center"><h2>THÔNG TIN NGƯỜI DÙNG</h2></div>
<form:form modelAttribute="u" action="${action}" method="post" enctype="multipart/form-data">
    <form:hidden path="id" />
    <form:hidden path="accountId" />
    <form:hidden path="avatar" />

    <div class="container">
        <div class="row gutters">
            <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
                <div class="card h-100">
                    <div class="card-body">
                        <div class="account-settings">
                            <div class="user-profile">
                                <div class="user-avatar">
                                    <img src="${u.avatar}" alt="${u.name}">
                                </div>
                                <h5 class="user-name">${sessionScope.currentUser.username}</h5>
                                <h6 class="user-email">${sessionScope.currentUser.mail}</h6>
                            </div>
                            <div class="about">
                                <h5>Giới thiệu</h5>
                                <p>Tôi là ${u.name}.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
                <div class="card h-100">
                    <div class="card-body">
                        <div class="row gutters">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <h6 class="mb-2 text-primary">Thông tin chung</h6>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label for="fullName">Họ tên</label>
                                    <form:input type="text" path="name" class="form-control" id="fullName" placeholder="${u.name}" />
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label for="eMail">Mail</label>
                                    <form:input type="email" path="mail" class="form-control" id="eMail" placeholder="${u.mail}" />
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label for="phone">SĐT</label>
                                    <form:input type="number" path="phone" class="form-control" id="phone" placeholder="${u.phone}" />
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label for="major">Chuyên ngành</label>
                                    <form:input type="text" path="majors" class="form-control" id="website" placeholder="${u.majors}"/>
                                </div>
                            </div>
                        </div>
                        <div class="row gutters">

                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label for="Street">Ngày sinh</label>
                                    <form:input type="date" class="form-control" path="birthDate" id="birthDate" 
                                                placeholder="Ngày sinh" name="birthDate" />
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label for="text">Kinh nghiệm</label>
                                    <form:input type="text" path="experience" class="form-control" id="ciTy" placeholder="Enter City"/>
                                </div>
                            </div>

                        </div>

                        <div class="row gutters">

                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label for="Street">Giới tính</label>
                                    <form:select class="form-control" path="gender" id="gender" placeholder="Giới Tính" name="gender" >                    
                                        <form:option value="Nam">Nam</form:option>
                                        <form:option value="Nữ">Nữ</form:option>
                                    </form:select>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label for="text">Trình độ văn hóa</label>
                                    <form:select type="text" class="form-control" path="level" id="level" placeholder="Trình độ học vấn" name="level" >
                                        <form:option value="Trung cấp nghề">Trung cấp nghề</form:option>
                                        <form:option value="Cao đẳng">Cao đẳng</form:option>
                                        <form:option value="Đại học">Đại học</form:option>
                                    </form:select>
                                </div>
                            </div>

                        </div>

                        <div class="row gutters">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="text-right">
                                    <button type="submit" id="submit" name="submit" class="btn btn-primary">Cập nhật</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form:form>
