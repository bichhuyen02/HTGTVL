<%-- 
    Document   : user
    Created on : Aug 9, 2023, 4:11:27 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<link rel="stylesheet" href="<c:url value="/css/index1.css" />"/>
<script src="<c:url value="/js/main.js" />"></script>

<section>
    <div class="text-primary mt-4 mb-4 text-center"><h2>DANH SÁCH TÀI KHOẢN</h2>
    </div>

    <hr></hr>
    <div class="d">                
        <a href="<c:url value="/addUser" />" class="btn btn-success ">Thêm tài khoản</a>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="">
                    <div class="table-responsive">
                        <table class="table table-hover project-list-table table-nowrap align-middle table-borderless">
                            <thead>
                                <tr class="table-primary">
                                    <th>Họ Tên</th>
                                    <th>Email</th>
                                    <th>SĐT</th>
                                    <th>Tên đăng nhập</th>
                                    <th>Thao tác </th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${users}" var="u">
                                    <tr>
                                        <td>${u.name} </td>   
                                        <td>${u.mail}</td>
                                        <td>${u.phone}</td>
                                        <td>${u.accountId.username}</td>

                                        <td>
                                            <c:url value="/addUser/${u.id}" var="api" />
                                            <a href="${api}" class="btn btn-info">Cập nhật</a>
                                            <button class="btn btn-danger" onclick="deleteCompany('${api}')">Xóa</button>
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
