<%-- 
    Document   : post
    Created on : Oct 23, 2023, 9:07:31 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
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
                        <%--<form:input type="text" path="name" class="form-control" id="fullName" placeholder="${u.name}" />--%>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                    <div class="form-group">
                        <label for="eMail">Mail</label>
                        <%--<form:input type="email" path="mail" class="form-control" id="eMail" placeholder="${u.mail}" />--%>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                    <div class="form-group">
                        <label for="phone">SĐT</label>
                        <%--<form:input type="number" path="phone" class="form-control" id="phone" placeholder="${u.phone}" />--%>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                    <div class="form-group">
                        <label for="major">Chuyên ngành</label>
                        <%--<form:input type="text" path="majors" class="form-control" id="website" placeholder="${u.majors}"/>--%>
                    </div>
                </div>
            </div>
            <div class="row gutters">

                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                    <div class="form-group">
                        <label for="Street">Ngày sinh</label>
                        <%--<form:input type="date" class="form-control" path="birthDate" id="birthDate"--%> 
                                    placeholder="Ngày sinh" name="birthDate" />
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                    <div class="form-group">
                        <label for="text">Kinh nghiệm</label>
                        <%--<form:input type="text" path="experience" class="form-control" id="ciTy" placeholder="Enter City"/>--%>
                    </div>
                </div>

            </div>

            <div class="row gutters">

                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                    <div class="form-group">
                        <label for="Street">Giới tính</label>
                    <%--    <form:select class="form-control" path="gender" id="gender" placeholder="Giới Tính" name="gender" >                    
                            <form:option value="Nam">Nam</form:option>
                            <form:option value="Nữ">Nữ</form:option>
                        </form:select> --%>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                    <div class="form-group">
                        <label for="text">Avatar</label>
                        <%--<form:input type="file" class="form-control" path="file" id="file" placeholder="avatar" name="file" />--%>
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
