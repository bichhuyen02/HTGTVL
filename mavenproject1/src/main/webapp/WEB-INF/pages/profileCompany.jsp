<%-- 
    Document   : profileCompany
    Created on : Nov 2, 2023, 9:19:40 PM
    Author     : ACER
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<link rel="stylesheet" href="<c:url value="/css/profileC.css" />"/>
<c:url value="/profileCompany/${c.id}" var="action" />
<div class="container bootstrap snippets bootdey">
    <hr>

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="well profile">
                <img class="user img-circle pull-left clearfix" height="54" src="${c.image}" alt="${c.name}">
                <h3 class="name pull-left clearfix">${co.name}</h3>
                <div class="clearfix"></div>
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#tab" data-toggle="tab">
                            Doanh Nghiệp
                        </a>
                    </li>
                    <li> // </li>
                    <li class="">
                        <a href="#tab2" data-toggle="tab">
                            Hồ Sơ
                        </a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="tab">
                        <div class="row">
                            <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
                                <p>
                                    <br>
                                    ${c.description}
                                    <br>
                                </p>
                                <hr>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="tab2">
                        <div class="row">
                            <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10">
                                <div class="tab-content">
                                    <div class="tab-pane active" id="basic">
                                        <form:form class="form-horizontal" modelAttribute="c" action="${action}" 
                                                   method="post" enctype="multipart/form-data">
                                            <form:hidden path="id" />
                                            <form:hidden path="accountId" />
                                            <form:hidden path="image" />
                                            <c:if test="${errMsg != null}">
                                                <div class="alert alert-danger msg">
                                                    ${errMsg}
                                                </div>    
                                            </c:if>
                                            <!--                                        <form  role="form">-->
                                            <div class="form-group">
                                                <label for="inputfullname" class="col-lg-2 control-label">Tên</label>
                                                <div class="col-lg-10">
                                                    <form:input path="name" type="text" class="form-control" id="name" placeholder="Tên"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputlastname" class="col-lg-2 control-label">Mail</label>
                                                <div class="col-lg-10">
                                                    <form:input path="mail" type="email" class="form-control" id="mail" placeholder="Mail"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputemail" class="col-lg-2 control-label">Giới thiệu</label>
                                                <div class="col-lg-10">
                                                    <form:textarea row="4" path="description" class="form-control" 
                                                                   id="description" placeholder="Thông tin" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputpassword" class="col-lg-2 control-label">Nhân lực</label>
                                                <div class="col-lg-10">
                                                    <form:input path="scale" type="text" class="form-control" id="scale" placeholder="Nhân lực" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputpassword" class="col-lg-2 control-label">Địa chỉ</label>
                                                <div class="col-lg-10">
                                                    <form:input path="address" type="text" class="form-control" id="address" placeholder="Địa chỉ"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputpassword" class="col-lg-2 control-label">Ngày thành lập</label>
                                                <div class="col-lg-10">
                                                    <form:input path="dateOfIncorporation" type="date" class="form-control" 
                                                                id="dateOfIncorporation" placeholder="Ngày thành lập"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputpassword" class="col-lg-2 control-label">Số điện thoại</label>
                                                <div class="col-lg-10">
                                                    <form:input path="phone" type="number" class="form-control" id="phone" placeholder="SĐT"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputpassword" class="col-lg-2 control-label">Link Công ty</label>
                                                <div class="col-lg-10">
                                                    <form:input path="linkCompany" type="text" class="form-control" id="linkCompany" placeholder="Link Công ty"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <!--<label  class="col-lg-2 control-label">Logo</label>-->
                                                <%-- <div class="col-lg-10">
                                                    <div class="bootstrap-filestyle input-group">
                                                        <form:input type="file" class="form-control" path="file" 
                                                                    id="file" placeholder="logo" name="file" />
                                                        <c:if test="${c.image != null}">
                                                            <img src="${c.image}" width="120" height="100" />
                                                        </c:if>
                                                    </div>
                                                </div>  --%>  
                                            </div>
                                            <button type="submit" class="btn btn-success ml-3 mt-3 ">Cập nhật</button>
                                            <!--                                        </form>-->
                                        </form:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>                    