<%-- 
    Document   : major
    Created on : Jul 27, 2023, 9:42:30 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<section>
    <div class="text-danger mt-4 mb-4 text-center"><h2>DANH SÁCH CHUYÊN NGÀNH</h2></div>

    <div class="a">                
        <a href="<c:url value="/addCate" />" class="btn btn-success ">Thêm công việc</a>
    </div>

    <table class="table table-hover container">
        <thead>
            <tr>
                <th>id </th>
                <th>name</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${categories}" var="c">
                <tr>
                    <td>${c.id}</td>
                    <td>${c.name}</td>                  
                    <td>
                            <c:url value="/addCate/${c.id}" var="api" />
                            <a href="${api}" class="btn btn-info">Cập nhật</a>
                            <button class="btn btn-danger" onclick="deleteCategory('${api}')">Xóa</button>
                    </td>
                </tr> 
            </c:forEach>
        </tbody>
    </table>
</section>
<script src="<c:url value="/js/main.js" />"></script>
