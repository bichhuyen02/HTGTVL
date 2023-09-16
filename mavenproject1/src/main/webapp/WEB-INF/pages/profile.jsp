s<%-- 
    Document   : profile
    Created on : Sep 6, 2023, 5:07:22 PM
    Author     : Admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<link rel="stylesheet" href="<c:url value="/css/index1.css" />"/>
<div class="text-primary mt-2 mb-4 text-center"><h2>THÔNG TIN NGƯỜI DÙNG</h2></div>

<div class="container">
    <div class="row gutters">
        <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
            <div class="card h-100">
                <div class="card-body">
                    <div class="account-settings">
                        <div class="user-profile">
                            <div class="user-avatar">
                                <img src="${sessionScope.currentUser.avatar}" alt="Maxwell Admin">
                            </div>
                            <h5 class="user-name">${sessionScope.currentUser.username}</h5>
                            <h6 class="user-email">${sessionScope.currentUser.mail}</h6>
                        </div>
                        <div class="about">
                            <h5>Giới thiệu</h5>
                            <p>Tôi là ${sessionScope.currentUser.name}. Full Stack Designer I enjoy creating user-centric, delightful and human experiences.</p>
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
                            <h5 class="mb-2 text-primary">Thông tin chung</h5>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                                <label for="fullName">  <h6 class=" text-warning">Tên đầy đủ</h6></label>
                                <input type="text" class="form-control" id="fullName" placeholder="${sessionScope.currentUser.name}">
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                                <label for="eMail"><h6 class=" text-warning">Email</h6></label>
                                <input type="email" class="form-control" id="eMail" placeholder="${sessionScope.currentUser.mail}">
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                                <label for="phone"><h6 class=" text-warning">Số điện thoại</h6></label>
                                <input type="number" class="form-control" id="phone" placeholder="${sessionScope.currentUser.phone}">
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                                <label for="major"><h6 class=" text-warning">Ngành nghề</h6></label>
                                <input type="text" class="form-control" id="major" placeholder="${sessionScope.currentUser.majors}">
                            </div>
                        </div>
                    </div>
                    <div class="row gutters">
                       
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                                <label for="date"><h6 class=" text-warning">Ngày sinh</h6></label>
                                <input type="date"  class="form-control" id="date" placeholder="${sessionScope.currentUser.date}"/>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                                <label for="text"><h6 class=" text-warning">Kinh nghiệm</h6></label>
                                <input type="text" class="form-control" id="experience" placeholder="${sessionScope.currentUser.experience}">
                            </div>
                        </div>
                        
                    </div>
                    <div class="row gutters">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="text-right">
                              
                                <button type="button" id="submit" name="submit" class="btn btn-primary">Update</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
                             