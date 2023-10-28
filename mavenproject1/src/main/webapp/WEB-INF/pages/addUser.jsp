<%-- 
    Document   : addUser
    Created on : Aug 11, 2023, 4:48:31 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>

<c:url value="/addUser" var="action" />
<form:form cssClass="container " modelAttribute="addUsers" action="${action}" method="post" enctype="multipart/form-data">
    <%--<form:errors path="*" element="div" cssClass="alert alert-danger" />--%>
    <form:hidden path="id" />
    <form:hidden path="avatar" />
    <form:hidden path="accountId" />

    <div class="card nen">
        <article class="card-body mx-auto" style="width: 45%;">
            <h2 class="card-title  text-center text-white">ĐĂNG KÝ TÀI KHOẢN</h2>
            <p class="text-center">Sử dụng tài khoản miễn phí!</p>
            <!--            <p>
                            <a href="" class="btn btn-block btn-gmail"> <i class="fa fa-envelope"></i>       Đăng nhập gmail</a>
                            <a href="" class="btn btn-block btn-facebook"> <i class="fab fa-facebook-f"></i>   Đăng nhập facebook</a>
                        </p>-->
            <p class="divider-text">
                <span ></span>
            </p>
            <c:if test="${errMsg != null}">
                <div class="alert alert-danger msg">
                    ${errMsg}
                </div>    
            </c:if>
            <form>
                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-user" style="color:#3376BC"></i> </span>
                    </div>
                    <form:input type="text" class="form-control" path="name" id="name" 
                                placeholder="Họ và tên" name="name" />
                </div>
                <form:errors path="name" element="div" cssClass="text-danger" />


                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-calendar-o" aria-hidden="true" style="color:#3376BC"></i> </span>
                    </div>
                    <form:input type="date" class="form-control" path="birthDate" id="birthDate" 
                                placeholder="Ngày sinh" name="birthDate" />
                </div>
                <form:errors path="birthDate" element="div" cssClass="text-danger" />

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> 
                            <i class="fa fa-envelope-open" aria-hidden="true" style="color:#3376BC"></i> 
                        </span>
                    </div>
                    <form:input type="email" name="mail" class="form-control" id="mail" path="mail"
                                placeholder="Mail" />
                </div>
                <form:errors path="mail" element="div" cssClass="text-danger" />

                <div class="form-group input-group">
                    <span class="input-group-text"> 
                        <i class="fa fa-phone"style="color:#3376BC"></i>
                    </span>
                    <form:input type="number" class="form-control" path="phone" id="phone" 
                                placeholder="Số điện thoại" name="phone" />
                </div>
                <form:errors path="phone" element="div" cssClass="text-danger" />

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-user" style="color:#3376BC"></i> </span>
                    </div>
                    <form:input type="text" class="form-control" path="username" id="username" 
                                placeholder="Tên đăng nhập" name="username" />
                </div>
                <form:errors path="username" element="div" cssClass="text-danger" />

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-lock"style="color:#3376BC"></i> </span>
                    </div>
                    <form:input class="form-control" type="password" path="password" id="password" 
                                placeholder="Tạo mật khẩu" name="password" />
                </div> 
                <form:errors path="password" element="div" cssClass="text-danger" /> 

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-lock"style="color:#3376BC"></i> </span>
                    </div>
                    <form:input class="form-control" type="password" path="confirmPassword" id="confirmPassword" 
                                placeholder="Xác nhận mật khẩu" name="confirmPassword" />
                </div> 
                <form:errors path="confirmPassword" element="div" cssClass="text-danger" />

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-briefcase" aria-hidden="true"style="color:#3376BC"></i> </span>
                    </div>
                    <form:select class="form-control" type="text" path="majors" id="majors" placeholder="Chuyên ngành" name="majors" >                    
                        <c:forEach items="${categories}" var="c">
                            <form:option value="${c.name}">${c.name}</form:option>
                        </c:forEach>
                    </form:select>

                </div>

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-address-card" aria-hidden="true"style="color:#3376BC"></i> </span>
                    </div>
                    <form:select class="form-control" type="text" path="experience" id="experience" placeholder="Kinh nghiệm" name="experience" >                    
                        <form:option value="Không có">Không có</form:option>
                        <form:option value="Dưới 1 năm">Dưới 1 năm</form:option>
                        <form:option value="Từ 2-5 năm">Từ 2-5 năm</form:option>
                        <form:option value="Trên 5 năm">Trên 5 năm</form:option>
                    </form:select>
                </div>

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-address-card" aria-hidden="true"style="color:#3376BC"></i> </span>
                    </div>
                    <form:select type="text" class="form-control" path="level" id="level" placeholder="Trình độ học vấn" name="level" >
                        <form:option value="Trung cấp nghề">Trung cấp nghề</form:option>
                        <form:option value="Cao đẳng">Cao đẳng</form:option>
                        <form:option value="Đại học">Đại học</form:option>
                    </form:select>
                </div>

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-mercury" aria-hidden="true" style="color:#3376BC"></i> </span>
                    </div>
                    <form:select class="form-control" path="gender" id="gender" placeholder="Giới Tính" name="gender" >                    
                        <form:option value="Nam">Nam</form:option>
                        <form:option value="Nữ">Nữ</form:option>
                    </form:select>
                </div>

                <div class="form-group input-group">
                    <form:select  class="form-select" id="location" name="location" path="location">
                        <c:forEach items="${locations}" var="l">
                            <c:choose>

                                <c:when test="${l.name == addjobs.location}">
                                    <option value="${l.id}" selected>${l.name}</option>
                                </c:when>

                                <c:otherwise>
                                    <option value="${l.id}">${l.name}</option>
                                </c:otherwise>

                            </c:choose>
                        </c:forEach>
                    </form:select>
                </div>

                <div class="form-floating mb-3 mt-3">
                    <form:input type="file" class="form-control" path="file" id="file" placeholder="avatar" name="file" />
                    <label for="logo">avatar</label>
                    <c:if test="${addUsers.avatar != null}">
                        <img src="${addUsers.avatar}" width="120" height="100" />
                    </c:if>
                </div>

                <se:authorize access="hasRole('ROLE_ADMIN')">   
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary"> 
                            <c:choose>
                                <c:when test="${addUsers.id != null}">Cập nhật</c:when>
                                <c:otherwise>Thêm</c:otherwise>
                            </c:choose>
                        </button>
                        <button type="button" onclick="deUser()" class="btn btn-danger">Hủy</button>
                    </div> 
                </se:authorize>

                <se:authorize access="!isAuthenticated()">
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary btn-block"> 
                            <c:choose>
                                <c:when test="${addUsers.id != null}">Cập nhật tài khoản</c:when>
                                <c:otherwise>Tạo tài khoản</c:otherwise>
                            </c:choose>
                        </button>
                    </div>    
                    <p class="text-center">Bạn đã có tài khoản? <a href="<c:url value="/login" />">Đăng nhập</a> 
                    </p> 
                    <p class="text-center"><a href="<c:url value="/" />">Trang chủ</a> 
                    </p>
                </se:authorize>
            </form>
        </article>
    </div>
</form:form>
<script src="<c:url value="/js/main.js" />"></script>



