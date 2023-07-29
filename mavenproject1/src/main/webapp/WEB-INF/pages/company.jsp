<%-- 
    Document   : company
    Created on : Jul 28, 2023, 12:41:01 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<section>
    <div class="text-danger mt-4 mb-4 text-center"><h2>QUẢN LÝ DOANH NGHIỆP</h2></div>

    <div class="a">                
        <a href="<c:url value="/addCompany" />" class="btn btn-success ">Thêm doanh nghiệp </a>
    </div>

    <table class="table table-hover container">
        <thead>
            <tr>
                <!--<th>id </th>-->
                <th></th>
                <th>Name</th>
                <th>Link company</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${companies}" var="c">
                <tr>
                    <!--<td>${c.id}</td>-->
                    <td>
                        <img style="width: 100px; height: 100px" src="${c.image}" alt="${c.name}"/>
                    </td>  
                    <td>${c.name}</td>
                    <td>${c.linkCompany}</td>
                    <td>
                        <a href="#" class="btn btn-info">Cập nhật</a>
                        <button class="btn btn-danger mt-2">Xóa</button>
                    </td>
                </tr> 
            </c:forEach>
        </tbody>
    </table>
</section>