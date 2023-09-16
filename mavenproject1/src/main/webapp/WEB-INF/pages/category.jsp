<%-- 
    Document   : major
    Created on : Jul 27, 2023, 9:42:30 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
 <script src="<c:url value="/js/main.js" />"></script>
<link rel="stylesheet" href="<c:url value="/css/index1.css" />"/>

<section>
    <div class="text-primary mt-4 mb-4 text-center"><h2>DANH SÁCH  NGÀNH NGHỀ</h2></div>
    <hr></hr>
    <div class="a">                
        <a href="<c:url value="/addCate" />" class="btn btn-success ">Thêm ngành nghề</a>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="">
                    <div class="table-responsive">
                        <table class="table table-hover project-list-table table-nowrap align-middle table-borderless">
                            <thead>
                                <tr class="table-primary">

                                    <th scope="col">Tên</th>
                                    <th scope="col">Mô tả </th>
                                  
                                    <th scope="col" style="width: 200px;">Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${categories}" var="c">
                                    <tr>
                                        <td>${c.name}</td>   
                                        <td>${c.description}</td>
                                        <td>
                                            <c:url value="/addCate/${c.id}" var="api" />
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
                       
