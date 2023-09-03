<%-- 
    Document   : jobDetail
    Created on : Aug 31, 2023, 9:05:31 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<link rel="stylesheet" href="<c:url value="/css/index1.css" />"/>


<div class="container bootstrap snippets bootdey mt-4 bg-white">
    <div class="panel-body inf-content">
        <div class="row">
            <div class="col-md-4">
                <img alt="" style="width:400px;" title="" class="rounded-circle img-thumbnail isTooltip mt-5 ml-3" src="${jobDetails.companyId.image}" data-original-title="Usuario"> 
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
                                        Thời gian                                           
                                    </strong>
                                </td>
                                <td class="text-primary">
                                    ${jobDetails.outOffTime}  
                                </td>
                            </tr>

                            <tr>        
                                <td>
                                    <strong>
                                        <i class="fas fa-graduation-cap" style="color: #0e5ce1;"></i>
                                        Username                                                
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
                                        Role                                                
                                    </strong>
                                </td>
                                <td class="text-primary">
                                    ${jobDetails.experience}
                                </td>
                            </tr>
                            <tr>        
                                <td>
                                    <strong>
                                        <i class="fas fa-users" style="color: #146aff;"></i> 
                                        Email                                                
                                    </strong>
                                </td>
                                <td class="text-primary">
                                    ${jobDetails.companyId.mail}  
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <button type="button" class="btn btn-success btn-block">Ứng tuyển ngay </button>

                                </td>
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
                            <li><a href="javascript:void(0);">${jobDetails.skill}</a></li>
                            <!--                                <li><a href="javascript:void(0);">Microsoft Technologies</a></li>
                                                            <li><a href="javascript:void(0);">Creative UX</a></li>
                                                            <li><a href="javascript:void(0);">Wordpress</a></li>
                                                            <li><a href="javascript:void(0);">Angular JS</a></li>
                                                            <li><a href="javascript:void(0);">Enterprise Mobility</a></li>
                                                            <li><a href="javascript:void(0);">Website Design</a></li>
                                                            <li><a href="javascript:void(0);">HTML5</a></li>
                                                            <li><a href="javascript:void(0);">Infographics</a></li>
                                                            <li><a href="javascript:void(0);">Wordpress Development</a></li>-->
                        </ul>
                    </div>
                </div>


            </div>
        </div>

    </div>
</div>