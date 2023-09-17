<%-- 
    Document   : addJob
    Created on : Jul 28, 2023, 2:49:03 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>

<c:url value="/addJob" var="action" />
<form:form cssClass="container " modelAttribute="addjobs" action="${action}" method="post" enctype="multipart/form-data">
    <%--<form:errors path="*" element="div" cssClass="alert alert-danger" /--%>
    <form:hidden path="id" />

    <div class="card nen ">
        <article class="card-body mx-auto" style="width: 50%;">
            <h2 class="card-title  text-center text-white">QUẢN LÝ CÔNG VIỆC</h2>

            <c:if test="${errMsg != null}">
                <div class="alert alert-danger msg">
                    ${errMsg}
                </div>    
            </c:if>

            <form>
                <div class="form-group input-group">
                    <form:input type="text" class="form-control" path="title" id="title" 
                                placeholder="Tên công việc" name="title" />
                </div>
                <form:errors path="title" element="div" cssClass="text-danger" />

                <div class="form-group input-group">
                    <form:textarea rows="3" class="form-control" path="description" id="description" 
                                   placeholder="Mô Tả" name="description" />
                </div>
                <form:errors path="description" element="div" cssClass="text-danger" />

                <div class="form-group input-group">
                    <form:textarea rows="3" class="form-control" path="benefits" id="benefits" 
                                   placeholder="Quyền lợi" name="benefits" />
                </div>
                <form:errors path="benefits" element="div" cssClass="text-danger" />

                <div class="form-group input-group">
                    <form:textarea rows="3" class="form-control" path="skill" id="skill" 
                                   placeholder="Kỹ năng" name="skill" />
                </div>
                <form:errors path="skill" element="div" cssClass="text-danger" />

                <div class="form-group input-group">
                    <form:input type="text" class="form-control" path="quantity" id="quantity" 
                                placeholder="Số lượng cần tuyển" name="quantity" />
                </div>
                <form:errors path="quantity" element="div" cssClass="text-danger" />

                <div class="form-group input-group">
                    <form:select class="form-control" type="text" path="experience" id="experience" placeholder="Kinh nghiệm" name="experience" >                    
                        <form:option value="Không yêu cầu kinh nghiệm">Không yêu cầu kinh nghiệm</form:option>
                        <form:option value="Dưới 1 năm">Dưới 1 năm</form:option>
                        <form:option value="Từ 2-5 năm">Từ 2-5 năm</form:option>
                        <form:option value="Trên 5 năm">Trên 5 năm</form:option>
                    </form:select>
                </div>

                <div class="form-group input-group">
                    <form:input type="text" class="form-control" path="address" id="address" 
                                placeholder="Địa Chỉ" name="address" />
                </div>
                <form:errors path="address" element="div" cssClass="text-danger" />

                <div class="form-group input-group">
                    <form:select type="text" class="form-control" path="level" id="level" placeholder="Trình độ học vấn" name="level" >
                        <form:option value="Trung cấp nghề">Trung cấp nghề</form:option>
                        <form:option value="Cao đẳng">Cao đẳng</form:option>
                        <form:option value="Đại học">Đại học</form:option>
                    </form:select>
                </div>

                <div class="form-group input-group">
                    <form:input type="text" class="form-control" path="salary" id="salary" 
                                placeholder="Lương" name="salary" />
                </div>
                <form:errors path="salary" element="div" cssClass="text-danger" />

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

                <se:authorize access="not hasRole('ROLE_EMP')">
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
                </se:authorize> 

                <se:authorize access="hasRole('ROLE_EMP')">   
                    <div class="form-group input-group">
                        <form:select class="form-select" id="companyId" name="companyId" path="companyId">                      
                           <form:option value="${sessionScope.currentUser.uId}">${sessionScope.currentUser.name}</form:option>
                        </form:select>
                    </div> 
                </se:authorize>

                <div class="form-floating mb-3 mt-3 ">
                    <button type="submit" class="btn btn-info">
                        <c:choose>
                            <c:when test="${addjobs.id != null}">Cập nhật công việc</c:when>
                            <c:otherwise>Thêm</c:otherwise>
                        </c:choose>
                    </button>
                    <button type="button" onclick="deJob()" class="btn btn-danger">Hủy</button>
                </div>
                <p class="text-center"><a href="<c:url value="/" />">Trang chủ</a></p>
        </article>
    </div>
</form:form>
<script src="<c:url value="/js/main.js" />"></script>

