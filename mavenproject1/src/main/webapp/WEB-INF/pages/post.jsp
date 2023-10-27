<%-- 
    Document   : post
    Created on : Oct 23, 2023, 9:07:31 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<link rel="stylesheet" href="<c:url value="/css/index1.css" />"/>

<!--<div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
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
-->
<div class="text-primary mt-4 mb-4 text-center"><h2>THÔNG TIN CHUNG</h2></div>
<div class="container">
    <div class="row flex-lg-nowrap">

        <div class="col">
            <div class="row">
                <div class="col mb-3">
                    <div class="card">
                        <div class="card-body">
                            <div class="e-profile">

                                <ul class="nav nav-tabs">
                                    <li class="nav-item"><a href="" class="active nav-link">Thông tin</a></li>
                                </ul>
                                <div class="tab-content pt-3">
                                    <div class="tab-pane active">
                                        <form class="form" novalidate="">
                                            <div class="row">
                                                <div class="col">
                                                    <div class="row">
                                                        <div class="col">
                                                            <div class="form-group">
                                                                <label>Full Name</label>
                                                                <input class="form-control" type="text" name="name" placeholder="John Smith" value="John Smith">
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <div class="form-group">
                                                                <label>Username</label>
                                                                <input class="form-control" type="text" name="username" placeholder="johnny.s" value="johnny.s">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col">
                                                            <div class="form-group">
                                                                <label>Email</label>
                                                                <input class="form-control" type="text" placeholder="user@example.com">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col mb-3">
                                                            <div class="form-group">
                                                                <label>About</label>
                                                                <textarea class="form-control" rows="5" placeholder="My Bio"></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-12 col-sm-6 mb-3">
                                                    <div class="mb-2"><b>Change Password</b></div>
                                                    <div class="row">
                                                        <div class="col">
                                                            <div class="form-group">
                                                                <label>Current Password</label>
                                                                <input class="form-control" type="password" placeholder="••••••">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col">
                                                            <div class="form-group">
                                                                <label>New Password</label>
                                                                <input class="form-control" type="password" placeholder="••••••">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col">
                                                            <div class="form-group">
                                                                <label>Confirm <span class="d-none d-xl-inline">Password</span></label>
                                                                <input class="form-control" type="password" placeholder="••••••"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-12 col-sm-5 offset-sm-1 mb-3">
                                                    <div class="mb-2"><b>Keeping in Touch</b></div>
                                                    <div class="row">
                                                        <div class="col">
                                                            <label>Email Notifications</label>
                                                            <div class="custom-controls-stacked px-2">
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="notifications-blog" checked="">
                                                                    <label class="custom-control-label" for="notifications-blog">Blog posts</label>
                                                                </div>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="notifications-news" checked="">
                                                                    <label class="custom-control-label" for="notifications-news">Newsletter</label>
                                                                </div>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="notifications-offers" checked="">
                                                                    <label class="custom-control-label" for="notifications-offers">Personal Offers</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col d-flex justify-content-end">
                                                    <button class="btn btn-primary" type="submit">Save Changes</button>
                                                </div>
                                            </div>
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-md-3 mb-3">
                    <div class="card mb-3">
                        <div class="card-body">
                            <div class="px-xl-3 ">
                                <div class="form-check form-switch ml-4">
                                    <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked>
                                    <label class="form-check-label" for="flexSwitchCheckChecked"></label>
                                   
                                </div>
                                <p >Bật tìm việc giúp hồ sơ của bạn nổi bật hơn và được chú ý hơn trong danh sách tìm kiếm của NTD.</p>
                            </div>
                        </div>
                    </div>
<!--                    <div class="card">
                        <div class="card-body">
                            <h6 class="card-title font-weight-bold">Support</h6>
                            <p class="card-text">Get fast, free help from our friendly assistants.</p>
                            <button type="button" class="btn btn-primary">Contact Us</button>
                        </div>
                    </div>-->
                </div>
            </div>

        </div>
    </div>
</div>
