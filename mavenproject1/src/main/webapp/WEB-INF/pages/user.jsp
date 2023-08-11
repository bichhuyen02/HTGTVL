<%-- 
    Document   : user
    Created on : Aug 9, 2023, 4:11:27 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<section>
    <div class="text-danger mt-4 mb-4 text-center"><h2>DANH SÁCH NGƯỜI DÙNG</h2></div>

    <div class="a">                
        <a href="<c:url value="/addUser" />" class="btn btn-success ">Thêm Người Dùng</a>
    </div>

    <table class="table table-hover container">
        <thead>
            <tr>
                <th>Họ Tên</th>
                <th>email</th>
                <th>SĐT</th>
                <th>Tên đăng nhập</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${users}" var="u">
                <tr>
                    <td>${u.firstName} ${u.lastName}</td>   
                    <td>${u.email}</td>
                    <td>${u.phone}</td>
                    <td>${u.username}</td>
                    <td>
<!--                            <c:url value="/addCate/${u.id}" var="api" />
                            <a href="${api}" class="btn btn-info">Cập nhật</a>
                            <button class="btn btn-danger" onclick="deleteCompany('${api}')">Xóa</button>-->
                    </td>
                </tr> 
            </c:forEach>
        </tbody>
    </table>
</section>
<script src="<c:url value="/js/main.js" />"></script>
