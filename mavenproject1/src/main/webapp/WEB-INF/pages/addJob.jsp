<%-- 
    Document   : addJob
    Created on : Jul 28, 2023, 2:49:03 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:url value="/addJob" var="action" />
<form:form cssClass="container " modelAttribute="addjobs" action="${action}" method="post" enctype="multipart/form-data">
    <form:hidden path="id" />

    <div class="card nen ">
        <article class="card-body mx-auto" style="width: 50%;">
            <h2 class="card-title  text-center text-white">QUẢN LÝ CÔNG VIỆC</h2>
            <form>
                <div class="form-group input-group">
                    <form:input type="text" class="form-control" path="title" id="title" 
                                placeholder="Tên công việc" name="title" />
                </div>

                <div class="form-group input-group">
                    <form:textarea class="form-control" path="description" id="description" 
                                   placeholder="Mô Tả" name="description" />
                </div>

                <div class="form-group input-group">
                    <form:textarea class="form-control" path="benefits" id="benefits" 
                                   placeholder="Quyền lợi" name="benefits" />
                </div>

                <div class="form-group input-group">
                    <form:textarea class="form-control" path="skill" id="skill" 
                                   placeholder="Kỹ năng" name="skill" />
                </div>

                <div class="form-group input-group">
                    <form:input type="text" class="form-control" path="quantity" id="quantity" 
                                placeholder="Số lượng cần tuyển" name="quantity" />
                </div>

                <div class="form-group input-group">
                    <form:input type="text" class="form-control" path="experience" id="experience" 
                                placeholder="Kinh Nghiệm" name="experience" />
                </div>

                <div class="form-group input-group">
                    <form:input type="text" class="form-control" path="address" id="address" 
                                placeholder="Địa Chỉ" name="address" />
                </div>

                <div class="form-group input-group">
                    <form:input type="text" class="form-control" path="level" id="level" 
                                placeholder="Trình độ học vấn" name="level" />
                </div>

                <div class="form-group input-group">
                    <form:input type="text" class="form-control" path="salary" id="salary" 
                                placeholder="Lương" name="salary" />
                </div>

                <div class="form-floating mt-3 mb-3">
                    <form:input type="date" class="form-control" path="outOffTime" id="outOffTime"
                                placeholder="Ngày Hết Hạn" name="outOffTime" />
                    <label for="jobNature" class="form-label">Ngày kết thúc</label>
                </div>

                <div class="form-floating mt-3 mb-3">
                    <form:select class="form-control" path="jobNature" id="jobNature" name="jobNature">                      
                        <form:option value="Full-time">Full-time</form:option>
                        <form:option value="Part-time">Part-time</form:option>
                    </form:select>
                    <label for="jobNature" class="form-label">Loại</label>
                </div>

                <div class="form-group input-group">
                    <form:select class="form-select" id="categoryId" name="categoryId" path="categoryId">                      
                        <c:forEach items="${categories}" var="c">
                            <c:choose>

                                <c:when test="${c.id == addjobs.categoryId.id}">
                                    <option value="${c.id}" selected>${c.name}</option>
                                </c:when>

                                <c:otherwise>
                                    <option value="${c.id}">${c.name}</option>
                                </c:otherwise>

                            </c:choose>
                        </c:forEach>
                    </form:select>
                </div>
                
                <div class="form-group input-group">
                    <form:select class="form-select" id="positionId" name="positionId" path="positionId">                      
                        <c:forEach items="${positions}" var="p">
                            <c:choose>

                                <c:when test="${p.id == addjobs.positionId.id}">
                                    <option value="${p.id}" selected>${p.name}</option>
                                </c:when>

                                <c:otherwise>
                                    <option value="${p.id}">${p.name}</option>
                                </c:otherwise>

                            </c:choose>
                        </c:forEach>
                    </form:select>
                </div>

                <div class="form-group input-group">
                    <form:select  class="form-select" id="locationId" name="locationId" path="locationId">
                        <c:forEach items="${locations}" var="l">
                            <c:choose>

                                <c:when test="${l.id == addjobs.locationId.id}">
                                    <option value="${l.id}" selected>${l.name}</option>
                                </c:when>

                                <c:otherwise>
                                    <option value="${l.id}">${l.name}</option>
                                </c:otherwise>

                            </c:choose>
                        </c:forEach>
                    </form:select>
                </div>

                <div class="form-group input-group">
                    <form:select class="form-select" id="companyId" name="companyId" path="companyId">
                        <c:forEach items="${companies}" var="c">
                            <c:choose>

                                <c:when test="${c.id == addjobs.companyId.id}">
                                    <option value="${c.id}" selected>${c.name}</option>
                                </c:when>

                                <c:otherwise>
                                    <option value="${c.id}">${c.name}</option>
                                </c:otherwise>

                            </c:choose>
                        </c:forEach>
                    </form:select>
                </div>



                <div class="form-floating mb-3 mt-3 ">
                    <button type="submit" class="btn btn-info">
                        <c:choose>
                            <c:when test="${addjobs.id != null}">Cập nhật Doanh Nghiệp</c:when>
                            <c:otherwise>Thêm </c:otherwise>
                        </c:choose>
                    </button>

                    <button type="submit" class="btn btn-danger">Hủy</button>


                </div>
                <p class="text-center"><a href="<c:url value="/" />">Trang chủ</a> 
                </p>

            </form:form>
    </article>

</div>

