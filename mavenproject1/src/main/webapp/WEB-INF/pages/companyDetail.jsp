<%-- 
    Document   : companyDetail
    Created on : Sep 1, 2023, 7:30:45 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<link rel="stylesheet" href="<c:url value="/css/rating.css" />"/>
<link rel="stylesheet" href="<c:url value="/css/index1.css" />"/>
<script src="script.js" defer></script>
<c:url value="/companyDetail/${copaDetails.id}" var="action" />

<div id="main-content" class="blog-page">
    <div class="container">
        <div class="row clearfix">
            <div class="col-lg-8 col-md-12 left-box mt-4">

                <div class="card single_post">
                    <div class="body">
                        <div class="img-post">
                            <img alt="" style="width:300px;" title="" class="rounded-circle img-thumbnail isTooltip " src="${copaDetails.image}" data-original-title="Usuario"> 
                        </div>
                        <h3>${copaDetails.name}</h3>

                    </div>                        
                </div>

                <div class="card">
                    <div class="header">
                        <h2>Việc làm đang tuyển</h2>
                    </div>
                    <div class="body">
                        <ul class="comment-reply list-unstyled">
                            <li class="row clearfix">
                                <div class="icon-box col-md-2 col-4"><img class="img-fluid img-thumbnail" src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Awesome Image"></div>
                                <div class="text-box col-md-10 col-8 p-l-0 p-r0">
                                    <h5 class="m-b-0">Gigi Hadid </h5>
                                    <p>Why are there so many tutorials on how to decouple WordPress? how fast and easy it is to get it running (and keep it running!) and its massive ecosystem. </p>
                                    <ul class="list-inline">
                                        <li><a href="javascript:void(0);">Mar 09 2018</a></li>
                                        <li><a href="javascript:void(0);">Reply</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="row clearfix">
                                <div class="icon-box col-md-2 col-4"><img class="img-fluid img-thumbnail" src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="Awesome Image"></div>
                                <div class="text-box col-md-10 col-8 p-l-0 p-r0">
                                    <h5 class="m-b-0">Christian Louboutin</h5>
                                    <p>Great tutorial but few issues with it? If i try open post i get following errors. Please can you help me?</p>
                                    <ul class="list-inline">
                                        <li><a href="javascript:void(0);">Mar 12 2018</a></li>
                                        <li><a href="javascript:void(0);">Reply</a></li>
                                    </ul>
                                </div>
                            </li>

                        </ul>                                        
                    </div>
                </div>
                <div class="card">
                    <div class="header">
                        <h2>Bình Luận</h2>
                    </div>
                    <div class="body">
                        <c:set var="cout" value="0"/>
                        <ul class="comment-reply list-unstyled">
                            <c:forEach items="${cmts}" var="c">
                                <c:if test="${cout < 5}">
                                    <li class="row clearfix">
                                        <div class="icon-box col-md-2 col-4"><img class="img-fluid img-thumbnail" src="${c.userId.avatar}" alt="Awesome Image"></div>
                                        <div class="text-box col-md-10 col-8 p-l-0 p-r0">
                                            <h5 class="m-b-0">${c.userId.name}</h5>
                                            <p>${c.content}</p>
                                            <ul class="list-inline">
                                                <li><a href="javascript:void(0);">${c.createTime}</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <c:set var="cout" value="${cout+1}"/>
                                </c:if>
                            </c:forEach>
                        </ul>                                        
                    </div>
                </div>

                <div class="card">
                    <div class="header">
                        <h2>Mời <small>Bạn đánh giá</small></h2>
                    </div>
                    <se:authorize access="!hasRole('ROLE_EMP')">

                        <se:authorize access="!isAuthenticated()">
                            <a href="<c:url value="/login" />" class="btn btn-block btn-primary">Đăng nhập để bình luận</a>
                        </se:authorize>

                        <se:authorize access="hasRole('ROLE_USER')">                            
                            <br>
                            <div class="comment-form ">
                                <form:form cssclass="row clearfix" modelAttribute="cmt" action="${action}" method="post" enctype="multipart/form-data">
                                    <div class="col-sm-12 ">
                                        <div class="form-group">
                                            <form:textarea rows="4" class="form-control no-resize" id="content" name="content"
                                                           path="content" placeholder="Please type what you want..."></form:textarea>
                                            </div>
                                            <button type="submit" class="btn btn-block btn-primary">Bình luận</button>
                                        </div>                                
                                </form:form>
                            </div>
                        </se:authorize>
                    </se:authorize>
                </div>
            </div>

            <div class="col-lg-4 col-md-12 right-box mt-4">

                <div class="card">
                    <div class="header">
                        <h2>Giới thiệu công ty</h2>
                    </div>
                    <div class="body widget">
                        <ul class="list-unstyled categories-clouds m-b-0">
                            <li><a href="<c:url value="${copaDetails.linkCompany}"/>">Trang chủ công ty</a></li>
                            <li>Ngày thành lập: ${copaDetails.dateOfIncorporation}</li>
                            <li>Nhân lực: ${copaDetails.scale}</li>
                            <li>Mô tả: ${copaDetails.description}</li>                
                        </ul>
                    </div>
                </div>

                <div class="card">
                    <div class="header">
                        <h2>Thông tin liên hệ</h2>                        
                    </div>
                    <div class="body widget popular-post">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="single_post">
                                    <p class="m-b-0">Địa chỉ</p>
                                    <span></span>
                                    <div class="body widget">
                                        <ul class="list-unstyled categories-clouds m-b-0">
                                            <li>Địa chỉ: ${copaDetails.address}</li>
                                            <li>Mail: ${copaDetails.mail}</li>
                                            <li>Số điện thoại: ${copaDetails.phone}</li>                
                                        </ul>
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