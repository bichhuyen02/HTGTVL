<%-- 
    Document   : company
    Created on : Jul 28, 2023, 12:41:01 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <script src="<c:url value="/js/main.js" />"></script>
<link rel="stylesheet" href="<c:url value="/css/index1.css" />"/>

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
                                    <th scope="col">Ảnh</th>
                                    <th scope="col">Tên doanh nghiệp</th>
                                    <th scope="col">Trang doanh nghiệp</th>
                                    <th scope="col" style="width: 200px;">Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${companies}" var="c">
                                    <tr>
                                        <td>
                                            <img style="width: 70px; height: 70px" src="${c.image}" alt="${c.name}"class="avatar-sm rounded-circle me-2"/>
                                        </td>  
                                        <td>${c.name}</td>
                                        <td>${c.linkCompany}</td>
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
</section>
             