<%-- 
    Document   : company
    Created on : Jul 28, 2023, 12:41:01 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="text-danger mt-4 mb-5 text-center"><h2>QUẢN LÝ DOANH NGHIỆP</h2></div>
<section>
    <div class="a">                
        <a href="<c:url value="/addCompany" />" class="btn btn-success mt-5 ">Thêm doanh nghiệp </a>
    </div>
    <div>
        <table class="table table-hover container  ">
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
                            <c:url value="/addCompany/${c.id}" var="api" />
                            <a href="${api}" class="btn btn-info">Cập nhật</a>
                            <button class="btn btn-danger" onclick="deleteCompany('${api}')">Xóa</button>
                        </td>
                    </tr> 
                </c:forEach>
            </tbody>
        </table>
    </div>
</section>>
<script src="<c:url value="/js/main.js" />"></script>