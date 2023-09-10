<%-- 
    Document   : cv
    Created on : Sep 10, 2023, 11:59:59 AM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<link rel="stylesheet" href="<c:url value="/css/cv.css" />"/>

<div class="text-primary mt-4 mb-4 text-center"><h2> DANH SÁCH HỒ SƠ ỨNG TUYỂN </h2></div>
<div class="container bootstrap snippets bootdey">
    <c:forEach items="${jobC}" var="j">
        <div class="row">
            <div class="col-sm-3">
                <!--left col-->

                <ul class="list-group">
                    <li class="list-group-item text-muted">Thông tin công việc</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>${j.title}</strong></span> 2.13.2014</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>${j.address}</strong></span> Yesterday</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>${j.jobNature}</strong></span> Joseph Doe</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>${j.salary}</strong></span> 125</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>${j.skill}</strong></span> 13</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>${j.quantity}</strong></span> 37</li>
                </ul>
            </div>

            <div class="col-sm-9">
                <div class="tab-content">
                    <div class="tab-pane active" id="home">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Tên</th>
                                        <th>Mail</th>
                                        <th>SĐT</th>
                                        <th>Cv</th>
                                        <th>Thư</th>
                                        <th>Thao tác </th>
                                    </tr>
                                </thead>
                                <c:forEach items="${cvs}" var="c">
                                   <c:if test="${c.jobId.id} == ${j.id}">
                                        <tbody id="items">
                                            <tr>
                                                <td>${c.userId.name}</td>
                                                <td>${c.userId.mail}</td>
                                                <td>${c.userId.phone}</td>
                                                <td>
                                                    <img style="width: 50px; height: 50px; " src="${c.cv}" alt="${c.userId.name}" class="avatar-sm rounded-circle me-2"/>
                                                </td>
                                                <td>${c.content}</td>
                                                <td>
                                                    <c:url value="/addCompany/${c.id}" var="api" />
                                                    <button class="btn btn-danger " onclick="updateActive('${api}')">Duyệt</button>
                                                    <button class="btn btn-danger " onclick="deleteCompany('${api}')">Xóa</button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </c:if>
                                </c:forEach> 
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
