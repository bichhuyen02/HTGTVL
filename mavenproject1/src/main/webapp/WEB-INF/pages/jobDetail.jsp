<%-- 
    Document   : jobDetail
    Created on : Aug 31, 2023, 9:05:31 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>

<link rel="stylesheet" href="<c:url value="/css/index1.css" />"/>


<div class="container bootstrap snippets bootdey mt-4 bg-white">
    <div class="panel-body inf-content">
        <div class="row">
            <div class="col-md-4 ml-4">
                <img alt="" style="width:300px; height:300px;" title="" class="rounded-circle img-thumbnail isTooltip mt-5 ml-4" src="${jobDetails.companyId.image}" data-original-title="Usuario"> 
            </div>

            <div class="col-md-6 mt-2">
                <h4>${jobDetails.positionId.name}</h4>
                <br>
                <div class="table-responsive">
                    <table class="table table-user-information">
                        <tbody>
                            <tr>        
                                <td>
                                    <strong>
                                        <i class="fas fa-dollar-sign" style="color: #105ce0;"></i>
                                        Lương                                                
                                    </strong>
                                </td>
                                <td class="text-primary">
                                    ${jobDetails.salary}     
                                </td>
                            </tr>
                            <tr>    
                                <td>
                                    <strong>
                                        <i class="far fa-building" style="color: #125bd9;"></i>    
                                        Tên công ty                                              
                                    </strong>
                                </td>
                                <td class="text-primary">
                                    ${jobDetails.companyId.name}    
                                </td>
                            </tr>
                            <tr>        
                                <td>
                                    <strong>
                                        <i class="fas fa-hourglass-half" style="color: #1459d2;"></i>  
                                       Hạn nộp hồ sơ                                          
                                    </strong>
                                </td>
                                <td class="text-primary">
                                    ${jobDetails.outOffTime}  
                                </td>
                            </tr>

                            <tr>        
                                <td>
                                    <strong>
                                         <i class="fas fa-users" style="color: #146aff;"></i> 
                                       Số lượng cần tuyển                                               
                                    </strong>
                                </td>
                                <td class="text-primary">
                                    ${jobDetails.quantity} 
                                </td>
                            </tr>

                            <tr>        
                                <td>
                                    <strong>
                                        <i class="fas fa-briefcase" style="color: #125dde;"></i> 
                                       Kinh nghiệm                                               
                                    </strong>
                                </td>
                                <td class="text-primary">
                                    ${jobDetails.experience}
                                </td>
                            </tr>
                            <tr>        
                                <td>
                                    <strong>
                                       <i class="fa fa-envelope" aria-hidden="true"style="color: #146aff;"></i> 
                                        Email                                                
                                    </strong>
                                </td>
                                <td class="text-primary">
                                    ${jobDetails.companyId.mail}  
                                </td>
                            </tr>
                            <tr>
                                <se:authorize access="!isAuthenticated()">
                                    <td>
                                        <a href="<c:url value="/login" />" class="btn btn-success btn-block">Ứng tuyển ngay </a>
                                    </td>
                                </se:authorize>
                                <se:authorize access="hasRole('ROLE_USER')">
                                    <td>
                                       <a href="<c:url value="/jobDetail/${jobDetails.id}/applyCv" />" class="btn btn-success btn-block">Ứng tuyển ngay </a>
                                    </td>
                                 </se:authorize>
                                <td>
                                    <button type="button" class="btn btn-outline-success btn-block">Lưu tin</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<br>

<div id="main-content" class="blog-page">
    <div class="container">
        <div class="row clearfix">
            <div class="col-lg-8 col-md-12 left-box">
                <div class="card single_post">
                    <div class="body">
                        <h3>Mô tả chi tiết</h3>
                        <p>
                            ${jobDetails.description}
                        </p>
                        <h3>Quyền lợi </h3>
                        <p>
                            ${jobDetails.benefits}
                        </p>
                    </div>                        
                </div>
            </div>


            <div class="col-lg-4 col-md-12 right-box">
                <div class="card">
                    <div class="body search">
                        <h4> Gợi ý việc làm</h4>
                        <div class="text-center text-md-end">
                            <a href="<c:url value="/addUser" />" class="text-primary">Xem thêm công việc <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-right fea icon-sm"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg></a>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="header">
                        <h4>Kĩ năng</h4>
                    </div>
                    <div class="body widget">
                        <ul class="list-unstyled categories-clouds m-b-0">
                            <li>
                              ${jobDetails.skill}
                            </li>
                            
                        </ul>
                    </div>
                </div>


            </div>
        </div>

    </div>
</div>
                            
<script src="<c:url value="/js/home.js" />"></script>