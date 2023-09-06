<%-- 
    Document   : job
    Created on : Jul 26, 2023, 5:25:59 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<script src="<c:url value="/js/main.js" />"></script>
<link rel="stylesheet" href="<c:url value="/css/index1.css" />"/>
<link rel="stylesheet" href="<c:url value="/css/search.css" />"/>

<div class="text-primary mt-4 mb-4 text-center"><h2>DANH SÁCH CÔNG VIỆC</h2></div>
<se:authorize access="hasRole('ROLE_ADMIN')">
    <section>
        <div class="b">                
            <a href="<c:url value="/addJob" />" class="btn btn-success ">Thêm công việc</a>
        </div>
        <nav class="Page container">

            <ul class="pagination ">
                <c:if test="${counter > 1}">
                    <ul class="pagination mt-1">
                        <li class="page-item"><a class="page-link" href="<c:url value="/jobs"/>">Tất cả</a></li>
                            <c:forEach begin="1" end="${counter}" var="i">
                                <c:url value="/jobs" var="pageUrl">
                                    <c:param name="page" value="${i}" />
                                </c:url>
                            <li class="page-item"><a class="page-link" href="${pageUrl}">${i}</a></li>
                            </c:forEach>
                    </ul>
                </c:if>
            </ul>
        </nav>

        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="">
                        <div class="table-responsive">
                            <table class="table project-list-table table-nowrap align-middle table-borderless">
                                <thead>
                                    <tr class="table-primary">

                                        <th scope="col">Tên công việc</th>
                                        <th scope="col">Loại công việc</th>

                                        <th scope="col">Lương</th>
                                        <th scope="col">Khu vực</th>
                                        <th scope="col">Doanh nghiệp</th>
                                        <th scope="col" style="width: 200px;">Thao tác</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${jobs}" var="j">
                                        <tr>
                                            <td>${j.title}</td>
                                            <td>${j.jobNature}</td>

                                            <td>${j.salary}</td>
                                            <td>${j.locationId.name}</td>
                                            <td>
                                                <img style="width: 70px; height: 70px" src="${j.companyId.image}" alt="${j.companyId.image}" class="avatar-sm rounded-circle me-2"/>
                                            </td>  

                                            <td>
                                                <c:url value="/addJob/${j.id}" var="api" />
                                                <a href="${api}" class="btn btn-info">Cập nhật</a>
                                                <button class="btn btn-danger " onclick="deleteCompany('${api}')">Xóa</button>
                                            </td>


                                        </tr> 
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</se:authorize>

<se:authorize access="hasRole('ROLE_EMP')">
    <section>
        <div class="b">                
            <a href="<c:url value="/addJob" />" class="btn btn-success ">Thêm công việc</a>
        </div>
        <nav class="Page container">

            <ul class="pagination ">
                <c:if test="${counter > 1}">
                    <ul class="pagination mt-1">
                        <li class="page-item"><a class="page-link" href="<c:url value="/jobs"/>">Tất cả</a></li>
                            <c:forEach begin="1" end="${counter}" var="i">
                                <c:url value="/jobs" var="pageUrl">
                                    <c:param name="page" value="${i}" />
                                </c:url>
                            <li class="page-item"><a class="page-link" href="${pageUrl}">${i}</a></li>
                            </c:forEach>
                    </ul>
                </c:if>
            </ul>
        </nav>

        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="">
                        <div class="table-responsive">
                            <table class="table project-list-table table-nowrap align-middle table-borderless">
                                <thead>
                                    <tr class="table-primary">

                                        <th scope="col">Tên công việc</th>
                                        <th scope="col">Loại công việc</th>

                                        <th scope="col">Lương</th>
                                        <th scope="col">Khu vực</th>
                                        <th scope="col">Doanh nghiệp</th>
                                        <th scope="col" style="width: 200px;">Thao tác</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${jobsC}" var="j">
                                        <tr>
                                            <td>${j.title}</td>
                                            <td>${j.jobNature}</td>

                                            <td>${j.salary}</td>
                                            <td>${j.locationId.name}</td>
                                            <td>
                                                <img style="width: 70px; height: 70px" src="${j.companyId.image}" alt="${j.companyId.image}" class="avatar-sm rounded-circle me-2"/>
                                            </td>  

                                            <td>
                                                <c:url value="/addJob/${j.id}" var="api" />
                                                <a href="${api}" class="btn btn-info">Cập nhật</a>
                                                <button class="btn btn-danger " onclick="deleteCompany('${api}')">Xóa</button>
                                            </td>


                                        </tr> 
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</se:authorize>

<se:authorize access="hasRole('ROLE_USER')">
    <!--phan trang-->
    <div class="row mt-6 wow fadeInUp" data-wow-delay=".6s" style="visibility: visible; animation-delay: 0.6s; animation-name: fadeInUp;">
        <div class="col-12">
            <div class="pagination text-small text-uppercase text-extra-dark-gray">
                <ul>
                    <li><a href="#!"><i class="fas fa-long-arrow-alt-left me-1 d-none d-sm-inline-block"></i> Prev</a></li>
                    <li class="active"><a href="#!">1</a></li>
                    <li><a href="#!">2</a></li>
                    <li><a href="#!">3</a></li>
                    <li><a href="#!">Next <i class="fas fa-long-arrow-alt-right ms-1 d-none d-sm-inline-block"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
    <br>
    <!--    end phan trang -->
    <section class="section">
        <div class="container">
            <div class="row">
                <c:forEach items="${jobs}" var="j">
                    <div class="col-sm-6 col-lg-4 m-15px-tb">
                        <div class="media box-shadow-only-hover hover-top border-all-1 border-color-gray p-15px">

                            <div class=" icon-50 border-radius-50 d-inline-block">
                                <img src="${j.companyId.image}" class="rounded-circle photohinh"alt="${j.title}">
                            </div>

                            <div class="p-20px-l media-body">
                                <span class="theme2nd-bg white-color p-0px-tb p-10px-lr font-small border-radius-15">${j.jobNature}</span>
                                <a href="<c:url value="/jobDetail/${j.id}"/>"><h6 class="m-5px-tb">${j.title}</h6></a>

                                <p class="m-0px font-small">${j.experience}</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 p-25px-t text-center">
                        <a class="m-btn m-btn-radius m-btn-theme" href="#">Load More</a>

                    </div>
                </c:forEach>
            </div>
        </div>
    </section>
</se:authorize>