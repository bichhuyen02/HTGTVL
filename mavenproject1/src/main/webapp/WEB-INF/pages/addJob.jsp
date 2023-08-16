<%-- 
    Document   : addJob
    Created on : Jul 28, 2023, 2:49:03 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<form:form cssClass="container " modelAttribute="addjobs"> 
    <form:hidden path="id" />

        <div class="card nen fm">
            <article class="card-body mx-auto" style="width: 50%;">
                <h2 class="card-title  text-center text-white">QUẢN LÝ CÔNG VIỆC</h2>
                <form>
                    <div class="form-group input-group">
                        <input type="text" class="form-control" path="title" id="title" placeholder="Tên công việc" name="title" />

                    </div>

                    <div class="form-group input-group">
                        <input type="text" class="form-control" path="description" id="description" placeholder="Mô Tả" name="description" />

                    </div>

                    <div class="form-group input-group">
                        <input type="text" class="form-control" path="requirement" id="requirement" placeholder="Yêu Cầu" name="requirement" />

                    </div>

                    <div class="form-group input-group">
                        <input type="text" class="form-control" path="address" id="address" placeholder="Địa Chỉ" name="address" />

                    </div>

                    <div class="form-group input-group">
                        <input type="text" class="form-control" path="salary" id="salary" placeholder="Lương" name="salary" />

                    </div>

                    <div class="form-group input-group">
                        <select class="form-control" path="jobNature" id="jobNature" name="jobNature">
                            <option>Full Time</option>
                            <option>Part Time</option>
                            <select>
                    </div>

                    <div class="form-group input-group">
                        <input type="date" class="form-control" path="outOffTime" id="outOffTime" placeholder="Ngày Hết Hạn" name="outOffTime" />

                    </div>


                    <div class="form-floating">
                        <form:select class="form-select" id="locationId" name="locationId" path="locationId">
                            <c:forEach items="${locations}" var="l">
                                <c:choose>
                                    <c:when test="${l.id == addjobs.locationId.id}"><option value="${l.id}" selected>${l.name}</option></c:when>
                                    <c:otherwise><option value="${l.id}">${l.name}</option></c:otherwise>
                                </c:choose>
                            </c:forEach>
                        </form:select>
                        <label for="location" class="form-label">Khu Vực</label>
                    </div>



                    <div class="form-floating mb-3 mt-3">
                        <form:select class="form-select" id="companyId" name="companyId" path="companyId">

                            <c:forEach items="${companies}" var="c">
                                <c:choose>
                                    <c:when test="${c.id == addjobs.companyId.id}"><option value="${c.id}" selected>${c.name}</option></c:when>
                                    <c:otherwise><option value="${c.id}">${c.name}</option></c:otherwise>
                                </c:choose>
                            </c:forEach>
                        </form:select>
                        <label for="location" class="form-label">Doanh Nghiệp</label>
                    </div>



                    <div class="form-floating mb-3 mt-3">
                        <button type="submit" class="btn btn-info">
                            <c:choose>
                                <c:when test="${addjobs.id != null}">Cập nhật Doanh Nghiệp</c:when>
                                <c:otherwise>Thêm Doanh Nghiệp</c:otherwise>
                            </c:choose>
                        </button>
                    </div>

                </form:form>
            </article>
        </div>

