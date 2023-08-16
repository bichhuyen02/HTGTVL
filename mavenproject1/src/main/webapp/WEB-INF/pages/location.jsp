<%-- 
    Document   : major
    Created on : Jul 27, 2023, 9:42:30 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<section>
    <div class="text-info mt-4 mb-4 text-center"><h2>DANH SÁCH KHU VỰC</h2></div>
    <hr></hr>
    <div class="a">                
        <a href="<c:url value="/addLocation" />" class="btn btn-success ">Thêm khu vực</a>
    </div>

    <table class="table table-hover container">
        <thead>
            <tr class="table-primary">
                <th>Tên</th>
                <th>Mô tả </th>
                <th>Thao tác </th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${locations}" var="lctn">
                <tr>
                    <td>${lctn.name}</td>   
                    <td>${lctn.description}</td>
                    <td>
                            <c:url value="/addLocation/${lctn.id}" var="api" />
                            <a href="${api}" class="btn btn-info">Cập nhật</a>
                            <button class="btn btn-danger" onclick="deleteCompany('${api}')">Xóa</button>
                    </td>
                </tr> 
            </c:forEach>
        </tbody>
    </table>
</section>
<script src="<c:url value="/js/main.js" />"></script>
