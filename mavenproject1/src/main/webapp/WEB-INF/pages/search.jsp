<%-- 
    Document   : search
    Created on : Oct 24, 2023, 9:44:49 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<h1>Ứng viên thích hợp</h1>
<c:url value="/search" var="action" />
        <form class="row" action="${action}">
            <div class="col">
<%--                <select class="form-select mb-2" name="majors" id="majors">
                    <c:forEach items="cate" var="c">
                            <form:option value="${c.name}">${c.name}</form:option>
                    </c:forEach>
                </select>--%>
            </div>

            <div class="col">
                <select class="form-select mb-2" name="experience" id="experience">
                    <option>Không có</option>
                    <option>Dưới 1 năm</option>
                    <option>Từ 2-5 năm</option>
                    <option>Trên 5 năm</option>
                </select>
            </div>
            
            <div class="col">
                <select class="form-select mb-2" name="gender" id="gender">
                    <option>Không</option>
                    <option>Nữ</option>
                    <option>Nam</option>
                </select>
            </div>

<%--            <div class="col">
                <select class="form-select mb-2" name="categoryId" id="categoryId">
                    <c:forEach items="${categories}" var="c">
                        <option value="${c.id}">${c.name}</option>
                    </c:forEach>
                </select>
            </div>--%>

            <div class="col">
                <button class="btn btn-primary mb-2" type="submit">Search</button>
            </div>
        </form>

    <section class="section ">
        <div class="container">
            <div class="row">
                <c:forEach items="${u}" var="u">
                    <div class="col-sm-6 col-lg-4 m-15px-tb">
                        <div class="media box-shadow-only-hover hover-top border-all-1 border-color-gray p-15px">

<%--                            <div class=" icon-50 border-radius-50 d-inline-block">
                                <img src="${j.companyId.image}" class="rounded-circle photohinh"alt="${j.title}">
                            </div>

                            <div class="p-20px-l media-body">
                                <span class="theme2nd-bg white-color p-0px-tb p-10px-lr font-small border-radius-15">${j.jobNature}</span>
                                <a href="<c:url value="/jobDetail/${j.id}"/>"><h6 class="m-5px-tb">${j.title}</h6></a>

                                <p class="m-0px font-small">${j.experience}</p>
                            </div>--%>
                        </div>
                    </div>                                            
                </c:forEach>
            </div>
        </div>
    </section>