<%-- 
    Document   : home
    Created on : Jul 19, 2023, 2:56:47 PM
    Author     : HUYEN TRAN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<c:url value="/" var="action" />

<script>$('#myCarousel').carousel({
        interval: 3000,
    })
</script>
<div id="myCarousel" class="carousel slide carousel-fade" data-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <div class="mask flex-center">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-md-7 col-12 order-md-1 order-2">
                            <h4>Present your <br>
                                awesome product</h4>
                            <p>Lorem ipsum dolor sit amet. Reprehenderit, qui blanditiis quidem rerum <br>
                                necessitatibus praesentium voluptatum deleniti atque corrupti.</p>
                            <a href="#">BUY NOW</a> </div>
                        <div class="col-md-5 col-12 order-md-2 order-1"><img src="https://myxteam.vn/wp-content/uploads/2020/08/9.5-Gia%CC%89i-pha%CC%81p-de%CC%82%CC%89-xu%CC%9B%CC%89-ly%CC%81-khi-co%CC%81-xung-do%CC%A3%CC%82t-xa%CC%89y-ra-khi-la%CC%80m-vie%CC%A3%CC%82c-nho%CC%81m.png" class="mx-auto" alt="slide"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <div class="mask flex-center">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-md-7 col-12 order-md-1 order-2">
                            <h4>Present your <br>
                                awesome product</h4>
                            <p>Lorem ipsum dolor sit amet. Reprehenderit, qui blanditiis quidem rerum <br>
                                necessitatibus praesentium voluptatum deleniti atque corrupti.</p>
                            <a href="#">BUY NOW</a> </div>
                        <div class="col-md-5 col-12 order-md-2 order-1"><img src="https://myxteam.vn/wp-content/uploads/2020/08/4-ky%CC%83-na%CC%86ng-gia%CC%89i-quye%CC%82%CC%81t-ma%CC%82u-thua%CC%82%CC%89n-ca%CC%82%CC%80n-bie%CC%82%CC%81t-khi-la%CC%80m-vie%CC%A3%CC%82c-nho%CC%81m.png" class="mx-auto" alt="slide"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <div class="mask flex-center">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-md-7 col-12 order-md-1 order-2">
                            <h4>Ở đây có <br>
                                việc làm tốt</h4>
                            <p>Lorem ipsum dolor sit amet. Reprehenderit, qui blanditiis quidem rerum <br>
                                necessitatibus praesentium voluptatum deleniti atque corrupti.</p>
                            <a href="#">BUY NOW</a> </div>
                        <div class="col-md-5 col-12 order-md-2 order-1"><img src="https://myxteam.vn/wp-content/uploads/2020/08/8.Qua%CC%89n-ly%CC%81-tho%CC%9B%CC%80i-gian-trong-la%CC%80m-vie%CC%A3%CC%82c-nho%CC%81m-B.png" class="mx-auto" alt="slide"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev"> 
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span> 
    </a> 
    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next"> 
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span> 
    </a>
</div>

<div class="text-info mt-4 mb-4 text-center"><h2>VIỆC LÀM TUYỂN GẤP</h2></div>
<div class="container">
    <div class="row">
        
        <div class="carousel-inner">

            <div class="row">
                <div class="col-sm-3">
                    <div class="col-item">
                        <div class="info">
                            <div class="row">
                                <div class="price col-md-6">
                                    <h5>Product A</h5>
                                    <h5 class="price-text-color">$7.99</h5>
                                </div>
                                <div class="rating hidden-sm col-md-6">
                                    <i class=" fa fa-star"></i>
                                    <i class=" fa fa-star"></i>
                                </div>
                            </div>
                        </div>

                        <div class="photo">
                            <img src="https://brademar.com/wp-content/uploads/2022/09/FE-CREDIT-Logo-PNG-1.png" class="img-responsive" alt="a" />
                        </div>

                    </div>
                </div>

                <div class="col-sm-3">
                    <div class="col-item">
                        <div class="info">
                            <div class="row">
                                <div class="price col-md-6">
                                    <h5>Product B</h5>
                                    <h5 class="price-text-color">$9.99</h5>
                                </div>
                                <div class="rating hidden-sm col-md-6">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class=" fa fa-star"></i>
                                </div>
                            </div>
                        </div>

                        <div class="photo">
                            <img src="https://images.glints.com/unsafe/1200x0/glints-dashboard.s3.amazonaws.com/company-logo/481a5d92fb0fd8247b64ca67ba00425d.png" class="img-responsive" alt="a" />
                        </div>

                    </div>
                </div>

                <div class="col-sm-3">
                    <div class="col-item">
                        <div class="info">
                            <div class="row">
                                <div class="price col-md-6">
                                    <h5>Product B</h5>
                                    <h5 class="price-text-color">$9.99</h5>
                                </div>
                                <div class="rating hidden-sm col-md-6">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class=" fa fa-star"></i>
                                </div>
                            </div>
                        </div>

                        <div class="photo">
                            <img src="https://res.cloudinary.com/dtoc5lqfe/image/upload/v1692092057/coffee_c7xemc.webp" class="img-responsive" alt="a" />
                        </div>

                    </div>
                </div>

                <div class="col-sm-3">
                    <div class="col-item">
                        <div class="info">
                            <div class="row">
                                <div class="price col-md-6">
                                    <h5>Another product</h5>
                                    <h5 class="price-text-color">$3.75</h5>
                                </div>
                                <div class="rating hidden-sm col-md-6">
                                    <i class=" fa fa-star"></i>
                                    <i class=" fa fa-star"></i>
                                    <i class=" fa fa-star"></i>
                                    <i class=" fa fa-star"></i>
                                </div>
                            </div>
                        </div>

                        <div class="photo">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/MINISTOP_logo.svg/1280px-MINISTOP_logo.svg.png" class="img-responsive" alt="a" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="text-primary mt-4 mb-4 text-center"><h2>TOP NGÀNH NGHỀ NỔI BẬT  </h2></div>
<div class="job container" >
    <div class="row container">
        <div class="col-sm-6 ">
            <div class="card text-white bg-primary mb-4">
                <div class="card-body">
                    <h5 class="card-title">CÔNG NGHỆ THÔNG TIN</h5>
                    <p class="card-text">Nghề công nghệ thông tin chưa bao giờ hết hot bởi cơ hội việc làm, mức lương “khủng” mà nó đem lại sau khi ra trường</p>
                </div>
            </div>
        </div>

        <div class="col-sm-6 ">
            <div class="card text-white bg-secondary mb-4">
                <div class="card-body">
                    <h5 class="card-title">QUẢN TRỊ KINH DOANH</h5>
                    <p class="card-text">Quản trị kinh doanh dành cho bạn trẻ năng động bản lĩnh muốn thử thách bản thân để thăng tiến tương xứng với năng lực</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 ">
            <div class="card text-white bg-success mb-4">
                <div class="card-body">
                    <h5 class="card-title">CÔNG NGHỆ Ô TÔ </h5>
                    <p class="card-text">Tương lai của ngành này rất hấp dẫn với các kỹ sư ô tô như công việc ổn định mức lương cao và nhu cầu về nguồn nhân lực rất lớn</p>
                </div>
            </div>
        </div>

        <div class="col-sm-6 ">
            <div class="card text-white bg-warning mb-4">
                <div class="card-body">
                    <h5 class="card-title">QUẢN TRỊ NHÀ HÀNG, KHÁCH SẠN</h5>
                    <p class="card-text"> Quản trị nhà hàng khách sạn được xem là một trong những ngành học không bao giờ “lỗi thời”</p>
                </div>
            </div>
        </div>
    </div>

</div>

<div class="text-primary mt-4 mb-4 text-center"><h2>VIỆC LÀM TUYỂN GẤP</h2></div>

<section class="container">
    <c:forEach items="${jobs}" var="j">
        <div class="card">
            <img src="${j.companyId.image}" class="card-img-top" alt="${j.title}">
            <div class="card-body">
                <h5 class="card-title">${j.title}</h5>
            </div>
            <div class="card-footer">
                <small class="text-muted">Cập nhật 3 phút trước </small>
            </div>
    </c:forEach>

</section>


