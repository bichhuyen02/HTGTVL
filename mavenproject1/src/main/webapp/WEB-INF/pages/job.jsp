<%-- 
    Document   : job
    Created on : Jul 26, 2023, 5:25:59 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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

    <table class="table table-hover container">
        <thead>
            <tr class="table-primary">
                <th>Tên công việc</th>
                <th>Loại công việc</th>
<!--                <th>Địa chỉ</th>-->
                <th>Lương</th>
                <th>Khu vực</th>
                <th>Doanh nghiệp</th>
                <th>Thao tác</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${jobs}" var="j">
                <tr>
                    <td>${j.title}</td>
                    <td>${j.jobNature}</td>
<!--                    <td>${j.address}</td>-->
                    <td>${j.salary}</td>
                    <td>${j.locationId.name}</td>
                    <td>
                        <img style="width: 120px; height: 120px" src="${j.companyId.image}" alt="${j.companyId.image}"/>
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
</section>
<script src="<c:url value="/js/main.js" />"></script>
