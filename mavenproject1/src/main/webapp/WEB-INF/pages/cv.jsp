<%-- 
    Document   : cv
    Created on : Sep 10, 2023, 11:59:59 AM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>

<div class="text-primary mt-4 mb-4 text-center"><h2> DANH SÁCH HỒ SƠ ỨNG TUYỂN </h2></div>
<div class="container bootstrap snippets bootdey">
    <c:forEach items="${jobC}" var="j">
        <div class="row">
            <div class="col-sm-3">
                <!--left col-->

                <ul class="list-group">
                    <li class="list-group-item text-muted">Thông tin công việc</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>Tên công việc</strong></span> ${j.title}</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>Kinh nghiệm</strong></span> ${j.level}</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>Thời gian</strong></span> ${j.jobNature}</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>Lương</strong></span> ${j.salary}</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>Kỹ năng</strong></span> ${j.skill}</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>Số lượng tuyển</strong></span> ${j.quantity}</li>
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
                                        <th>Tải</th>
                                        <th>Thao tác </th>
                                    </tr>
                                </thead>
                                <c:forEach items="${cvs}" var="c">
                                    <c:if test="${c.jobId.id == j.id}">
                                        <tbody id="items">
                                            <tr>
                                                <td>${c.userId.name}</td>
                                                <td>${c.userId.mail}</td>
                                                <td>${c.userId.phone}</td>
                                           
                                                <td>
                                                   <a href="<c:url value="/pdf/view/${c.id}"/>" target="_blank">${c.name}</a>                                                    
                                                </td>
                                                <td>
                                                   <a href="<c:url value="/download/${c.id}"/>">
                                                       <i class="fa-solid fa-circle-down">rr</i>
                                                   </a>                                                    
                                                </td>
                                                <td>
                                                    <c:url value="/cv/${c.id}" var="api" />
                                                    <button class="btn btn-danger " onclick="updateActive('${api}')">Duyệt</button>
                                                    <button class="btn btn-danger " onclick="deleteCompany('${api}')">Xóa</button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </c:if>
                                </c:forEach> 
                                <c:forEach items="${cvT}" var="c">
                                    <c:if test="${c.jobId.id == j.id}">
                                        <tbody id="items">
                                            <tr>
                                                <td>${c.userId.name}</td>
                                                <td>${c.userId.mail}</td>
                                                <td>${c.userId.phone}</td>
                                                <td>
                                                    <a href="<c:url value="/pdf/view/${c.id}"/>" target="_blank">${c.name}</a>      
                                                </td>
                                                <td>
                                                   <a href="<c:url value="/download/${c.id}"/>">
                                                       <i class="fa-solid fa-circle-down">rr</i>
                                                   </a>                                                    
                                                </td>
                                                <td>
                                                    Đã duyệt
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
        <br>
    </c:forEach>
</div>
<script src="<c:url value="/js/main.js" />"></script>
