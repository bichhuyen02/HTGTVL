<%-- 
    Document   : home
    Created on : Jul 19, 2023, 2:56:47 PM
    Author     : HUYEN TRAN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/" var="action" />

<link rel="stylesheet" href="<c:url value="/css/search.css" />"/>
<script src="<c:url value="/js/home.js" />"></script>

<script>$('#myCarousel').carousel({
        interval: 3000
    })
</script>
<div id="myCarousel" class="carousel slide carousel-fade" data-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <div class="mask flex-center">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-md-7 col-12 order-md-1 order-2">
                            <h4>Đón lấy thành công <br>
                                việc làm hấp dẫn</h4>
                            <p>Tiếp cận 10,000+ doanh nghiệp tuyển dụng uy tín.  <br>
                                Việc làm mới mỗi ngày với mức lương cao, hấp dẫn, chế độ đãi ngộ cực tốt!</p>
                            <a href="<c:url value="/jobs" />">ĐĂNG TUYỂN    <i class="fa fa-arrow-right" aria-hidden="true"></i></a> </div>

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
                            <h4>Tìm việc làm <br>
                                ổn định tương lai</h4>
                            <p>Tiếp cận 10,000+ doanh nghiệp tuyển dụng uy tín.  <br>
                                Việc làm mới mỗi ngày với mức lương cao, hấp dẫn, chế độ đãi ngộ cực tốt!</p>
                            <a href="#">ĐĂNG TUYỂN    <i class="fa fa-arrow-right" aria-hidden="true"></i></a> </div>
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
                            <h4>Việc làm nhanh <br>
                                tin tuyển dụng mới nhất</h4>
                            <p>Tiếp cận 10,000+ doanh nghiệp tuyển dụng uy tín.  <br>
                                Việc làm mới mỗi ngày với mức lương cao, hấp dẫn, chế độ đãi ngộ cực tốt!</p>
                            <a href="#">ĐĂNG TUYỂN    <i class="fa fa-arrow-right" aria-hidden="true"></i></a> </div>
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
<!--tim-->
<div class="container mt-5">

    <div class="row d-flex justify-content-center">

        <div class=" col-md-10">

            <div class="card p-3  py-4">

                <h4>Chúng tôi giúp gì được cho bạn?</h4>

                <div class="row g-3 mt-2">

                    <div class="col-md-3">

                        <div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-expanded="false">
                                Khu Vực
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <li><a class="dropdown-item" href="#">Rural</a></li>
                                <li><a class="dropdown-item" href="#">Urban</a></li>
                                <li><a class="dropdown-item" href="#">All</a></li>
                            </ul>
                        </div>

                    </div>

                    <div class="col-md-6">

                        <input type="text" class="form-control" placeholder="Enter address e.g. street, city and state or zip">

                    </div>

                    <div class="col-md-3">

                        <button class="btn btn-danger btn-block">Tìm Kiếm</button>

                    </div>

                </div>


                <div class="mt-3">

                    <a data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample" class="advanced">
                        Tìm kiếm nâng cao  <i class="fa fa-angle-down"></i>
                    </a>


                    <div class="collapse" id="collapseExample">
                        <div class="card card-body">

                            <div class="row">

                                <div class="col-md-4">

                                    <input type="text" placeholder="Property ID" class="form-control">

                                </div>


                                <div class="col-md-4">

                                    <input type="text" class="form-control" placeholder="Search by MAP">

                                </div>


                                <div class="col-md-4">

                                    <input type="text" class="form-control" placeholder="Search by Country">

                                </div>

                            </div>

                        </div>
                    </div>


                </div>
            </div>

        </div>

    </div>

</div>
<!--vieclam tuyen gap-->
<div class="container mt-5 pt-4">
    <div class="row align-items-end mb-4 pb-2">
        <div class="col-md-8">
            <div class="section-title text-center text-md-start">
                <h4 class="title mb-4">Find the perfect jobs</h4>
                <p class="text-muted mb-0 para-desc">Start work with Leaping. Build responsive, mobile-first projects on the web with the world's most popular front-end component library.</p>
            </div>
        </div> 

        <div class="col-md-4 mt-4 mt-sm-0 d-none d-md-block">
            <div class="text-center text-md-end">
                <a href="#" class="text-primary">View more Jobs <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-right fea icon-sm"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg></a>
            </div>
        </div><!--end col-->
    </div><!--end row-->

    <div class="row">
        <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2 ">
            <div class="card border-0 bg-light rounded shadow hover-job">
                <div class="card-body p-4 ">
                    <span class="badge rounded-pill bg-primary float-md-end mb-3 mb-sm-0">Full time</span>
                    <h5>Web Designer</h5>
                    <div class="mt-3">
                        <span class="text-muted d-block"><i class="fa fa-home" aria-hidden="true"></i> <a href="#" target="_blank" class="text-muted">Bootdey.com LLC.</a></span>
                        <span class="text-muted d-block"><i class="fa fa-map-marker" aria-hidden="true"></i> USA</span>
                    </div>

                    <div class="mt-3">
                        <a href="#" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
        </div><!--end col-->

        <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
            <div class="card border-0 bg-light rounded shadow">
                <div class="card-body p-4">
                    <span class="badge rounded-pill bg-primary float-md-end mb-3 mb-sm-0">Remote</span>
                    <h5>Front-end Developer</h5>
                    <div class="mt-3">
                        <span class="text-muted d-block"><i class="fa fa-home" aria-hidden="true"></i> <a href="#" target="_blank" class="text-muted">Bootdey.com LLC.</a></span>
                        <span class="text-muted d-block"><i class="fa fa-map-marker" aria-hidden="true"></i> USA</span>
                    </div>

                    <div class="mt-3">
                        <a href="#" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
        </div><!--end col-->

        <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
            <div class="card border-0 bg-light rounded shadow">
                <div class="card-body p-4">
                    <span class="badge rounded-pill bg-primary float-md-end mb-3 mb-sm-0">Contract</span>
                    <h5>Web Developer</h5>
                    <div class="mt-3">
                        <span class="text-muted d-block"><i class="fa fa-home" aria-hidden="true"></i> <a href="#" target="_blank" class="text-muted">Bootdey.com LLC.</a></span>
                        <span class="text-muted d-block"><i class="fa fa-map-marker" aria-hidden="true"></i> USA</span>
                    </div>

                    <div class="mt-3">
                        <a href="#" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
        </div><!--end col-->

        <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
            <div class="card border-0 bg-light rounded shadow">
                <div class="card-body p-4">
                    <span class="badge rounded-pill bg-primary float-md-end mb-3 mb-sm-0">WFH</span>
                    <h5>Back-end Developer</h5>
                    <div class="mt-3">
                        <span class="text-muted d-block"><i class="fa fa-home" aria-hidden="true"></i> <a href="#" target="_blank" class="text-muted">Bootdey.com LLC.</a></span>
                        <span class="text-muted d-block"><i class="fa fa-map-marker" aria-hidden="true"></i> USA</span>
                    </div>

                    <div class="mt-3">
                        <a href="#" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
        </div><!--end col-->

        <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
            <div class="card border-0 bg-light rounded shadow">
                <div class="card-body p-4">
                    <span class="badge rounded-pill bg-primary float-md-end mb-3 mb-sm-0">Full time</span>
                    <h5>UX / UI Designer</h5>
                    <div class="mt-3">
                        <span class="text-muted d-block"><i class="fa fa-home" aria-hidden="true"></i> <a href="#" target="_blank" class="text-muted">Bootdey.com LLC.</a></span>
                        <span class="text-muted d-block"><i class="fa fa-map-marker" aria-hidden="true"></i> USA</span>
                    </div>

                    <div class="mt-3">
                        <a href="#" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
        </div><!--end col-->

        <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
            <div class="card border-0 bg-light rounded shadow">
                <div class="card-body p-4">
                    <span class="badge rounded-pill bg-primary float-md-end mb-3 mb-sm-0">Remote</span>
                    <h5>Tester</h5>
                    <div class="mt-3">
                        <span class="text-muted d-block"><i class="fa fa-home" aria-hidden="true"></i> <a href="#" target="_blank" class="text-muted">Bootdey.com LLC.</a></span>
                        <span class="text-muted d-block"><i class="fa fa-map-marker" aria-hidden="true"></i> USA</span>
                    </div>

                    <div class="mt-3">
                        <a href="#" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
        </div><!--end col-->

        <div class="col-12 mt-4 pt-2 d-block d-md-none text-center">
            <a href="#" class="btn btn-primary">View more Jobs <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-right fea icon-sm"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg></a>
        </div><!--end col-->
    </div><!--end row-->
</div>
<!--end vieclam-->

<!--<div class="text-primary mt-4 mb-4 text-center"><h2>NHÀ TUYỂN DỤNG NỔI BẬT</h2></div>

<section class="container">
    <c:set var="cout" value="0"/>

    <div class="row">
        <div class="carousel-inner">
            <div class="row">
                <c:forEach items="${companies}" var="c">

                    <c:if test="${cout < 4}">

                        <div class="col-sm-3">
                            <div class="col-item">
                                <div class="info">
                                    <div class="row">

                                        <h4 class="card-name">${c.name}</h4>

                                        <div class="rating hidden-sm col-md-6">
                                            <i class=" fa fa-star"></i>
                                            <i class=" fa fa-star"></i>
                                            <i class=" fa fa-star"></i>


                                        </div>
                                        <img src="${c.image}" class="photo" alt="${c.name}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <c:set var="cout" value="${cout+1}"/>
                    </c:if>
                </c:forEach>
            </div>
        </div>
    </div>
</section>-->

<div class="text-primary mt-4 mb-4 text-center"><h2>TOP NGÀNH NGHỀ NỔI BẬT</h2></div>
<div class="container">
    <div class="row">

        <!--team-1-->
        <div class="col-lg-4">
            <div class="our-team-main">

                <div class="team-front">
                    <img src="http://placehold.it/110x110/9c27b0/fff?text=Dilip" class="img-fluid" />
                    <h3>MARKETING</h3>
                    
                </div>

                <div class="team-back">
                    <span>
                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis 
                        natoque penatibus et magnis dis parturient montes,
                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis 
                        natoque.
                    </span>
                </div>

            </div>
        </div>
        <!--team-1-->

        <!--team-2-->
        <div class="col-lg-4">
            <div class="our-team-main">

                <div class="team-front">
                    <img src="https://thuthuatnhanh.com/wp-content/uploads/2021/06/Hinh-anh-lam-viec-nhom-hieu-qua-nhat.jpg" class="img-fluid" />
                    <h3>CÔNG NGHỆ THÔNG TIN</h3>
<!--                    <p>Web Designer</p>-->
                </div>

                <div class="team-back">
                    <span>
                       Công nghệ thông tin đòi hỏi trí tuệ cũng như sự nhạy bén cao, cần phải thực hành để nắm bắt được những công nghệ mới.
                       Nghành công nghệ thông tin chưa bao giờ hết hot bởi cơ hội việc làm, mức lương “khủng” mà nó đem lại sau khi ra trường.
                       
                    </span>
                </div>

            </div>
        </div>
        <!--team-2-->

        <!--team-3-->
        <div class="col-lg-4">
            <div class="our-team-main">

                <div class="team-front">
                    <img src="http://placehold.it/110x110/607d8b/fff?text=Dilip" class="img-fluid" />
                    <h3>TÀI CHÍNH NGÂN HÀNG</h3>
               
                </div>

                <div class="team-back">
                    <span>
                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis 
                        natoque penatibus et magnis dis parturient montes,
                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis 
                        natoque.
                    </span>
                </div>

            </div>
        </div>
    </div>
</div>
<section class="section">
    <div class="container">
        <div class="row md-m-25px-b m-45px-b justify-content-center text-center">
            <div class="col-lg-8">
                <h3 class="h1 m-15px-b">Job Positions</h3>
                <p class="m-0px font-2">Luper is a HTML5 template based on Sass and Bootstrap 4 with modern and creative multipurpose design you can use it as a startups.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 col-lg-4 m-15px-tb">
                <div class="media box-shadow-only-hover hover-top border-all-1 border-color-gray p-15px">
                    <a class="overlay-link" href="#"></a>
                    <div class="icon-50 theme-bg white-color border-radius-50 d-inline-block">
                        <i class="number">LD</i>
                    </div>
                    <div class="p-20px-l media-body">
                        <span class="theme2nd-bg white-color p-0px-tb p-10px-lr font-small border-radius-15">Full time</span>
                        <h6 class="m-5px-tb">Laravel Developer</h6>
                        <p class="m-0px font-small">San Francisco, US</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4 m-15px-tb">
                <div class="media box-shadow-only-hover hover-top border-all-1 border-color-gray p-15px">
                    <a class="overlay-link" href="#"></a>
                    <div class="icon-50 green-bg white-color border-radius-50 d-inline-block">
                        <i class="number">LD</i>
                    </div>
                    <div class="p-20px-l media-body">
                        <span class="theme2nd-bg white-color p-0px-tb p-10px-lr font-small border-radius-15">Full time</span>
                        <h6 class="m-5px-tb">Laravel Developer</h6>
                        <p class="m-0px font-small">San Francisco, US</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4 m-15px-tb">
                <div class="media box-shadow-only-hover hover-top border-all-1 border-color-gray p-15px">
                    <a class="overlay-link" href="#"></a>
                    <div class="icon-50 yellow-bg white-color border-radius-50 d-inline-block">
                        <i class="number">LD</i>
                    </div>
                    <div class="p-20px-l media-body">
                        <span class="theme2nd-bg white-color p-0px-tb p-10px-lr font-small border-radius-15">Full time</span>
                        <h6 class="m-5px-tb">Laravel Developer</h6>
                        <p class="m-0px font-small">San Francisco, US</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4 m-15px-tb">
                <div class="media box-shadow-only-hover hover-top border-all-1 border-color-gray p-15px">
                    <a class="overlay-link" href="#"></a>
                    <div class="icon-50 pink-bg white-color border-radius-50 d-inline-block">
                        <i class="number">LD</i>
                    </div>
                    <div class="p-20px-l media-body">
                        <span class="theme2nd-bg white-color p-0px-tb p-10px-lr font-small border-radius-15">Full time</span>
                        <h6 class="m-5px-tb">Laravel Developer</h6>
                        <p class="m-0px font-small">San Francisco, US</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4 m-15px-tb">
                <div class="media box-shadow-only-hover hover-top border-all-1 border-color-gray p-15px">
                    <a class="overlay-link" href="#"></a>
                    <div class="icon-50 theme-bg white-color border-radius-50 d-inline-block">
                        <i class="number">LD</i>
                    </div>
                    <div class="p-20px-l media-body">
                        <span class="theme2nd-bg white-color p-0px-tb p-10px-lr font-small border-radius-15">Full time</span>
                        <h6 class="m-5px-tb">Laravel Developer</h6>
                        <p class="m-0px font-small">San Francisco, US</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4 m-15px-tb">
                <div class="media box-shadow-only-hover hover-top border-all-1 border-color-gray p-15px">
                    <a class="overlay-link" href="#"></a>
                    <div class="icon-50 dark-bg white-color border-radius-50 d-inline-block">
                        <i class="number">LD</i>
                    </div>
                    <div class="p-20px-l media-body">
                        <span class="theme2nd-bg white-color p-0px-tb p-10px-lr font-small border-radius-15">Full time</span>
                        <h6 class="m-5px-tb">Laravel Developer</h6>
                        <p class="m-0px font-small">San Francisco, US</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4 m-15px-tb">
                <div class="media box-shadow-only-hover hover-top border-all-1 border-color-gray p-15px">
                    <a class="overlay-link" href="#"></a>
                    <div class="icon-50 yellow-bg white-color border-radius-50 d-inline-block">
                        <i class="number">LD</i>
                    </div>
                    <div class="p-20px-l media-body">
                        <span class="theme2nd-bg white-color p-0px-tb p-10px-lr font-small border-radius-15">Full time</span>
                        <h6 class="m-5px-tb">Laravel Developer</h6>
                        <p class="m-0px font-small">San Francisco, US</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4 m-15px-tb">
                <div class="media box-shadow-only-hover hover-top border-all-1 border-color-gray p-15px">
                    <a class="overlay-link" href="#"></a>
                    <div class="icon-50 green-bg white-color border-radius-50 d-inline-block">
                        <i class="number">LD</i>
                    </div>
                    <div class="p-20px-l media-body">
                        <span class="theme2nd-bg white-color p-0px-tb p-10px-lr font-small border-radius-15">Full time</span>
                        <h6 class="m-5px-tb">Laravel Developer</h6>
                        <p class="m-0px font-small">San Francisco, US</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4 m-15px-tb">
                <div class="media box-shadow-only-hover hover-top border-all-1 border-color-gray p-15px">
                    <a class="overlay-link" href="#"></a>
                    <div class="icon-50 blue-bg white-color border-radius-50 d-inline-block">
                        <i class="number">LD</i>
                    </div>
                    <div class="p-20px-l media-body">
                        <span class="theme2nd-bg white-color p-0px-tb p-10px-lr font-small border-radius-15">Full time</span>
                        <h6 class="m-5px-tb">Laravel Developer</h6>
                        <p class="m-0px font-small">San Francisco, US</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4 m-15px-tb">
                <div class="media box-shadow-only-hover hover-top border-all-1 border-color-gray p-15px">
                    <a class="overlay-link" href="#"></a>
                    <div class="icon-50 blue-bg white-color border-radius-50 d-inline-block">
                        <i class="number">LD</i>
                    </div>
                    <div class="p-20px-l media-body">
                        <span class="theme2nd-bg white-color p-0px-tb p-10px-lr font-small border-radius-15">Full time</span>
                        <h6 class="m-5px-tb">Laravel Developer</h6>
                        <p class="m-0px font-small">San Francisco, US</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4 m-15px-tb">
                <div class="media box-shadow-only-hover hover-top border-all-1 border-color-gray p-15px">
                    <a class="overlay-link" href="#"></a>
                    <div class="icon-50 pink-bg white-color border-radius-50 d-inline-block">
                        <i class="number">LD</i>
                    </div>
                    <div class="p-20px-l media-body">
                        <span class="theme2nd-bg white-color p-0px-tb p-10px-lr font-small border-radius-15">Full time</span>
                        <h6 class="m-5px-tb">Laravel Developer</h6>
                        <p class="m-0px font-small">San Francisco, US</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4 m-15px-tb">
                <div class="media box-shadow-only-hover hover-top border-all-1 border-color-gray p-15px">
                    <a class="overlay-link" href="#"></a>
                    <div class="icon-50 yellow-bg white-color border-radius-50 d-inline-block">
                        <i class="number">LD</i>
                    </div>
                    <div class="p-20px-l media-body">
                        <span class="theme2nd-bg white-color p-0px-tb p-10px-lr font-small border-radius-15">Full time</span>
                        <h6 class="m-5px-tb">Laravel Developer</h6>
                        <p class="m-0px font-small">San Francisco, US</p>
                    </div>
                </div>
            </div>

            <div class="col-12 p-25px-t text-center">
                <a class="m-btn m-btn-radius m-btn-theme" href="#">Load More</a>
            </div>
        </div>
    </div>
</section>

<!--<div class="text-primary mt-4 mb-4 text-center"><h2>VIỆC LÀM TUYỂN GẤP</h2></div>
<section class="container">
    <c:set var="couts" value="0"/>
    <div class="row">
        <div class="carousel-inner">
            <div class="row">

                <c:forEach items="${jobs}" var="j">
                    <c:if test="${couts < 4}">
                        <div class="col-sm-3 " >
                            <div class="col-item">
                                <div class="info">
                                    <div class="row">
                                        <img src="${j.companyId.image}" class="card-img-top" alt="${j.title}">
                                        <h5 class="card-title">${j.title}</h5>

                                        <div class="card-footer" >
                                            <small class="text-muted">Cập nhật ${j.createTime} </small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <c:set var="couts" value="${couts+1}"/>
                    </c:if>
                </c:forEach>
            </div>
        </div>
    </div>
</section>-->






