<%-- 
    Document   : company
    Created on : Jul 28, 2023, 12:41:01 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<link rel="stylesheet" href="<c:url value="/css/search.css" />"/>
<se:authorize access="hasRole('ROLE_ADMIN')">
    <div class="text-primary mt-4 mb-5 text-center"><h2>QUẢN LÝ DOANH NGHIỆP</h2></div>
    <hr></hr>
    <section>
        <div class="c">                
            <a href="<c:url value="/addCompany" />" class="btn btn-success mt-5 ">Thêm doanh nghiệp </a>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="">
                        <div class="table-responsive">
                            <table class="table project-list-table table-nowrap align-middle table-borderless">
                                <thead>
                                    <tr class="table-primary">
                                        <th></th>
                                        <th>Tên doanh nghiệp</th>
                                        <th>Ngày Thành Lập</th>
                                        <th>Nhân Lực</th>
                                        <th>Thao tác</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${companiesF}" var="c">
                                        <tr>
                                            <td>
                                                <img style="width: 100px; height: 100px" src="${c.image}" alt="${c.name}"/>
                                            </td>  
                                            <td>${c.name}</td>
                                            <td>${c.dateOfIncorporation}</td>
                                            <td>${c.scale}</td>
                                            <td>
                                                <c:url value="/addCompany/${c.id}" var="api" />
                                                <button class="btn btn-danger " onclick="updateActive('${api}')">Duyệt</button>
                                                <button class="btn btn-danger " onclick="deleteCompany('${api}')">Xóa</button>
                                            </td>
                                        </tr> 
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>

                        <br>

                        <div>
                            <table class="table table-hover container  ">
                                <thead>
                                    <tr class="table-primary">
                                        <th></th>
                                        <th>Tên doanh nghiệp</th>
                                        <th>Ngày Thành Lập</th>
                                        <th>Nhân Lực</th>
                                        <th>Thao tác</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${companiesT}" var="c">
                                        <tr>
                                            <td>
                                                <img style="width: 100px; height: 100px" src="${c.image}" alt="${c.name}"/>
                                            </td>  
                                            <td>${c.name}</td>
                                            <td>${c.dateOfIncorporation}</td>
                                            <td>${c.scale}</td>
                                            <td>
                                                <c:url value="/addCompany/${c.id}" var="api" />
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
    </section>>
</se:authorize>  

<se:authorize access="not hasRole('ROLE_ADMIN')">
    <div class="text-primary mt-4 mb-5 text-center"><h2>DANH SÁCH DOANH NGHIỆP</h2></div> 
    <hr></hr>
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

    <div class="container">

        <div class="row mt-n5">
            <c:forEach items="${companiesT}" var="c">
                <div class="col-md-6 col-lg-4 mt-5 wow fadeInUp" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">

                    <div class="blog-grid">

                        <div class="blog-grid-img position-relative">
                            <img alt="${c.name}" src="${c.image}"></div>
                        <div class="blog-grid-text p-4">

                            <h3 class="h5 mb-3">
                                <a href="<c:url value="/companyDetail/${c.id}"/>">${c.name}</a>
                            </h3>

                            <p class="display-30">${c.description}</p>

                            <div class="meta meta-style2">
                                <ul>
                                    <li><i class="fas fa-calendar-alt"> ${c.dateOfIncorporation}</i>
                                    <li><i class="fas fa-user"></i> ${c.scale}</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</se:authorize>
<script src="<c:url value="/js/main.js" />"></script>