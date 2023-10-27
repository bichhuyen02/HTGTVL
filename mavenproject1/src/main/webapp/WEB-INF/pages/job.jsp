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
<se:authorize access="hasRole('ROLE_ADMIN')">
    <div class="text-primary mt-4 mb-4 text-center"><h2>DANH SÁCH CÔNG VIỆC</h2></div>
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
                            <table class="table table-hover project-list-table table-nowrap align-middle table-borderless">
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
    <div class="text-primary mt-4 mb-4 text-center"><h2>DANH SÁCH CÔNG VIỆC</h2></div>
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
    <div class="text-primary mt-4 mb-4 text-center"><h2>DANH SÁCH CÔNG VIỆC</h2></div>

    <div class="container">
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
    </div>
    <!--tim-->
    <section class="d-flex" style=" justify-content: center; margin-left: 12%; ">   
        <c:url value="/jobs" var="action" />
        <form class="row" action="${action}">
            <div class="col">
                <select class="form-select mb-2" name="companyId" id="companyId">
                    <c:forEach items="${companies}" var="c">
                        <option value="${c.id}">${c.name}</option>
                    </c:forEach>
                </select>
            </div>

            <div class="col">
                <select class="form-select mb-2" name="locationId" id="locationId">
                    <c:forEach items="${locations}" var="c">
                        <option value="${c.id}">${c.name}</option>
                    </c:forEach>
                </select>
            </div>

            <div class="col">
                <select class="form-select mb-2" name="positionId" id="positionId">
                    <c:forEach items="${positions}" var="c">
                        <option value="${c.id}">${c.name}</option>
                    </c:forEach>
                </select>
            </div>

            <div class="col">
                <select class="form-select mb-2" name="categoryId" id="categoryId">
                    <c:forEach items="${categories}" var="c">
                        <option value="${c.id}">${c.name}</option>
                    </c:forEach>
                </select>
            </div>

            <div class="col">
                <button class="btn btn-primary mb-2" type="submit">Search</button>
            </div>
        </form>
    </section>
    <section class="section ">
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
                </c:forEach>
            </div>
        </div>
    </section>

</se:authorize>
