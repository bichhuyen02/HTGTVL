<%-- 
    Document   : header
    Created on : Jul 26, 2023, 4:58:53 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>

<c:url value="/" var="action" />
<nav class="navbar navbar-expand-sm p-3 " >
    <div class="container-fluid ">
        <a class="navbar-brand text-white" href="${action}">JOB24H-WEBSITE</a>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav me-auto">

                <se:authorize access="!isAuthenticated()">
                    <li class="nav-item">
                        <a class="nav-link  " href="<c:url value="/jobss"/>"><strong>Công Việc</strong></a>
                    </li>
                </se:authorize>

                <se:authorize access="isAuthenticated()">
                    <li class="nav-item">
                        <a class="nav-link  " href="<c:url value="/jobs"/>"><strong>Công Việc</strong></a>
                    </li>                       
                </se:authorize>

                <se:authorize access="hasRole('ROLE_EMP')">
                    <li class="nav-item text-danger"  >
                        <a class="nav-link  " href="<c:url value="/cv"/>"><strong>Xem CV</strong></a>
                    </li>

                    <li class="nav-item text-danger"  >
                        <a class="nav-link  " href="<c:url value="/search"/>"><strong>Tìm ứng viên</strong></a>
                    </li>
                </se:authorize>

                <se:authorize access="not hasRole('ROLE_EMP')">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/companies"/>"><strong>Doanh Nghiệp</strong></a>
                    </li>

                </se:authorize>

                <se:authorize access="hasRole('ROLE_USER')">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/post/${sessionScope.currentUser.uId}"/>"><strong>Đăng tin</strong></a>
                    </li>
                </se:authorize>

                <se:authorize access="hasRole('ROLE_ADMIN')">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/admin/location"/>"><strong>Khu Vực</strong> </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/admin/categories"/>"><strong>Ngành Nghề</strong></a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/admin/user"/>"><strong>Người Dùng</strong> </a>
                    </li>  

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"><strong>Thống Kê</strong></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-item">
                                <a href="<c:url value="/admin/quarterStats"/>">
                                    <i class="fas fa-plus mr-2"></i>
                                    <strong class="hide-nav">Doanh thu theo quý</strong>
                                </a>
                            </li>
                            <li class="dropdown-item">
                                <a href="<c:url value="/admin/yearStats"/>">
                                    <i class="fas fa-plus mr-2"></i>
                                    <strong class="hide-nav">Doanh thu theo năm</strong>
                                </a>
                            </li>
                        </ul>
                    </li>
                </se:authorize>

                <c:choose>
                    <c:when test="${pageContext.request.userPrincipal.name != null}">
                        <se:authorize access="hasRole('ROLE_USER')">
                            <li class="hinhanhavt">
                                <a class="nav-link text-danger huyen" href="<c:url value="/profile/${sessionScope.currentUser.uId}" />">
                                    Chào
                                    <img src="${sessionScope.currentUser.avatar}" alt="${sessionScope.currentUser.username}" class="imageavt rounded-circle">  
                                </a>
                            </li>
                        </se:authorize>
                        <se:authorize access="hasRole('ROLE_EMP')">
                            <li class="hinhanhavt">
                                <a class="nav-link text-danger huyen" href="<c:url value="/companyDetail/${sessionScope.currentUser.uId}" />">
                                    Chào
                                    <img src="${sessionScope.currentUser.avatar}" alt="${sessionScope.currentUser.username}" class="imageavt rounded-circle">  
                                </a>
                            </li>
                        </se:authorize>
                        <se:authorize access="hasRole('ROLE_ADMIN')">
                            <li class="nav-item" >
                                <a class="nav-link text-danger " href="<c:url value="/" />">
                                    Chào Admin
                                </a>
                            </li>
                        </se:authorize> 

                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value="/logout" />"><strong>Đăng Xuất</strong></a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value="/login" />"><strong>Đăng Nhập</strong></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value="/addUser" />"><strong>Đăng Ký</strong></a>
                        </li>
                    </c:otherwise>
                </c:choose>

            </ul>

<!--            <form class="d-flex" action="${action}">
                <input class="form-control me-2" type="text" name="kw" placeholder="Nhập từ khóa...">
                <button class="btn btn-primary" type="submit">Tìm</button>
            </form>-->

        </div>
    </div>
</nav>