<%-- 
    Document   : profileCompany
    Created on : Nov 2, 2023, 9:19:40 PM
    Author     : ACER
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<link rel="stylesheet" href="<c:url value="/css/profileC.css" />"/>
<div class="container bootstrap snippets bootdey">
    <hr>

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="well profile">
                <img class="user img-circle pull-left clearfix" height="54" src="https://bootdey.com/img/Content/user_1.jpg" alt="">
                <h3 class="name pull-left clearfix">Tên</h3>
                <div class="clearfix"></div>
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#tab" data-toggle="tab">
                            Doanh Nghiệp
                        </a>
                    </li>
                    <li> // </li>
                    <li class="">
                        <a href="#tab2" data-toggle="tab">
                            Hồ Sơ
                        </a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="tab">
                        <div class="row">
                            <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
                                <p>
                                    <br>
                                    " đọc phần Giới thiệu"
                                    Praesent non tincidunt nisi. Nulla eu arcu ornare, gravida augue vel, commodo orci. Integer quis erat mauris. Integer nisl risus, sodales in laoreet eget, laoreet at nunc. Ut quis libero id orci semper porta ac vel ante. In nec laoreet sapien. Nunc hendrerit ligula at massa sodales, ullamcorper rutrum orci semper. Donec at massa eget odio ultrices convallis vel volutpat leo. Nulla rhoncus lacus tortor, vel tincidunt dolor eleifend et. Ut consequat elit quam, iaculis volutpat ipsum fermentum pulvinar. Pellentesque nec sem vel arcu ornare faucibus.
                                    <br>
                                </p>
                                <hr>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="tab2">
                        <div class="row">
                            <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10">
                                <div class="tab-content">
                                    <div class="tab-pane active" id="basic">
                                        <form class="form-horizontal" role="form">
                                            <div class="form-group">
                                                <label for="inputfullname" class="col-lg-2 control-label">First Name</label>
                                                <div class="col-lg-10">
                                                    <input type="email" class="form-control" id="inputfullname" placeholder="First Name">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputlastname" class="col-lg-2 control-label">Last Name</label>
                                                <div class="col-lg-10">
                                                    <input type="email" class="form-control" id="inputlastname" placeholder="Last Name">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputemail" class="col-lg-2 control-label">Email</label>
                                                <div class="col-lg-10">
                                                    <input type="email" class="form-control" id="inputemail" placeholder="Email">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputpassword" class="col-lg-2 control-label">Password</label>
                                                <div class="col-lg-10">
                                                    <input type="password" class="form-control" id="inputpassword" placeholder="Password">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label  class="col-lg-2 control-label">Photo</label>
                                                <div class="col-lg-10">
                                                    
                                                    <div class="bootstrap-filestyle input-group">
                                                       <input type="text" class="form-control " disabled="" placeholder="Choose file"> 
                                                        <span class="input-group-btn" tabindex="0"> 
                                                            <label for="filestyle-0" class="btn btn-outline-secondary btn-lg">   
                                                                <span class="fa fa-folder-open"></span>   
                                                            </label>

                                                        </span>
                                                    </div>
                                                </div>    
                                                <button type="submit" class="btn btn-success ml-3 mt-3 ">Cập nhật</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>                    