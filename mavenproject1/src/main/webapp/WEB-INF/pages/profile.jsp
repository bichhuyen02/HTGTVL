s<%-- 
    Document   : profile
    Created on : Sep 6, 2023, 5:07:22 PM
    Author     : Admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<link rel="stylesheet" href="<c:url value="/css/index1.css" />"/>
<div class="text-primary mt-2 mb-4 text-center"><h2>THÔNG TIN NGƯỜI DÙNG</h2></div>

<div class="container bootstrap snippets bootdey">
<div class="panel-body inf-content">
    <div class="row bg-white">
        <div class="col-md-4 ">
            <img alt="" style="width:300px; margin-top: 1%" title="" class="rounded-circle img-thumbnail isTooltip" src="https://bootdey.com/img/Content/avatar/avatar7.png" data-original-title="Usuario"> 
            
        </div>
        <div class="col-md-6">
            
            <div class="table-responsive">
            <table class="table table-user-information">
                <tbody>
                    <tr>        
                        <td>
                            <strong>
                               <i class="fa fa-user-circle" aria-hidden="true" style="color:blue"></i>
                                Tên                                                
                            </strong>
                        </td>
                        <td class="text-primary">
                            123456789     
                        </td>
                    </tr>
                    <tr>    
                        <td>
                            <strong>
                                <i class="fa fa-envelope" aria-hidden="true" style="color:blue"></i> 
                                Mail                                                
                            </strong>
                        </td>
                        <td class="text-primary">
                            Bootdey     
                        </td>
                    </tr>
                    <tr>        
                        <td>
                            <strong>
                                <i class="fa fa-phone" aria-hidden="true"style="color:blue"></i>
                               Phone                                                
                            </strong>
                        </td>
                         <td class="text-primary">
                            123456789     
                        </td>
                    </tr>
                   
                     <tr>        
                        <td>
                            <strong>
                             <i class="fas fa-briefcase" style="color:blue"></i>
                                Ngành nghề                                              
                            </strong>
                        </td>
                        <td class="text-primary">
                            Admin
                        </td>
                    </tr>
                    
                    <tr>        
                        <td>
                            <strong>
                             <i class="fas fa-briefcase" style="color:blue"></i>
                                Kinh nghiệm                                             
                            </strong>
                        </td>
                        <td class="text-primary">
                            Admin
                        </td>
                    </tr>


                    <tr>        
                        <td>
                            <strong>
                               <i class="fa fa-transgender" aria-hidden="true"style="color:blue"></i>
                                Giới tính                                               
                            </strong>
                        </td>
                        <td class="text-primary">
                            Admin
                        </td>
                    </tr>
                    
                                               
                </tbody>
            </table>
            </div>
        </div>
    </div>
</div>
</div>                              