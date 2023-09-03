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
                            <a href="<c:url value="/jobs" />">ĐĂNG TUYỂN    <i class="fa fa-arrow-right" aria-hidden="true"></i></a> </div>
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
                            <a href="<c:url value="/jobs" />">ĐĂNG TUYỂN    <i class="fa fa-arrow-right" aria-hidden="true"></i></a> </div>
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

<!--    doc cong ty-->
<div class="text-primary mt-4 mb-4 text-center"><h2> CÔNG TY NỔI BẬT</h2></div>


<div class="col-md-4 mt-4 mt-sm-0 d-none d-md-block  ml-4">
    <div class="text-center text-md-end">
        <a href="<c:url value="/companyDetail" />" class="text-primary">Xem chi tiết <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-right fea icon-sm"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg></a>
    </div>
</div>

<section class="container">
    <c:set var="cout" value="0"/>
    <div class="row">
        <c:forEach items="${companies}" var="c">

            <c:if test="${cout < 12}">
                <div class="col-sm-6 col-lg-4 m-15px-tb">

                    <div class="media box-shadow-only-hover hover-top border-all-1 border-color-gray p-15px">
                        <!--                    <a class="overlay-link" href="#"></a>-->

                        <div class="  border-radius-50 d-inline-block">
                            <img src="${c.image}" class="photohinh"alt="${c.name}">

                        </div>
                        <div class="p-20px-l media-body">
                            <div class="sao">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>

                            </div>
                            <h6 class="m-5px-tb">${c.name}</h6>

                        </div>
                    </div>
                </div>
                <c:set var="cout" value="${cout+1}"/>
            </c:if>
        </c:forEach>
    </div>
</section>
<!--end congty-->

<div class="text-primary mt-4 mb-4 text-center"><h2> NGÀNH NGHỀ NỔI BẬT</h2></div>
<div class="container">
    <div class="row">

        <!--team-1-->
        <div class="col-lg-4">
            <div class="our-team-main">

                <div class="team-front">
                    <img src="https://thuthuatnhanh.com/wp-content/uploads/2021/06/Hinh-anh-lam-viec-nhom-hieu-qua-nhat.jpg" class="img-fluid" />
                    <h3>MARKETING</h3>

                </div>

                <div class="team-back">
                    <span>
                        Marketing  được phát triển cùng với sự kết hợp của nhiều công cụ như Website, mạng xã hội, Google Adwords… 
                        Chính vì thế mà ngành mang đến nhiều cơ hội việc làm cho các ứng viên ở nhiều vị trí. Mặc dù còn xa lạ với nhiều người nhưng sức hút của Marketing là vô cùng lớn.
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


        <div class="col-lg-4">
            <div class="our-team-main">

                <div class="team-front">
                    <img src="https://thuthuatnhanh.com/wp-content/uploads/2021/06/Hinh-anh-lam-viec-nhom-hieu-qua-nhat.jpg" class="img-fluid" />
                    <h3>LOGISTICS</h3>

                </div>

                <div class="team-back">
                    <span>
                        Nhân lực khan hiếm, mức lương hấp dẫn là những lý do khiến người học lựa chọn theo đuổi và viết tiếp đam mê với lĩnh vực logistics và quản trị chuỗi cung ứng.
                        Ngành học này vươn top và tỏa sức nóng mãnh liệt trong thời gian gần đây.
                    </span>
                </div>

            </div>
        </div>
    </div>
</div>
<!--cong viec-->\
<div class="text-primary mt-4 mb-4 text-center"><h2>CÔNG VIỆC ĐANG TUYỂN</h2></div>
<div class="container">

    <div class="row">
        <c:set var="couts" value="0"/>
        <c:forEach items="${jobs}" var="j">
            <c:if test="${couts < 6}">

                <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2 ">

                    <div class="card border-0 bg-light rounded shadow hover-job">
                        <div class="card-body p-4 ">

                            <span class="badge rounded-pill bg-primary float-md-end mb-3 mb-sm-0">${j.jobNature}</span>
                            <h5>${j.title}</h5>
                            <div class="mt-3">
                                <span class="text-muted d-block"><i class="fa fa-home" aria-hidden="true"></i> <a href="#" target="_blank" class="text-muted">${j.companyId.name}</a></span>
                                <span class="text-muted d-block"><i class="fa fa-map-marker" aria-hidden="true"></i> ${j.locationId.name}</span>
                            </div>

                            <div class="mt-3">

                                <a href="<c:url value="/jobDetail/${j.id}" />" class="btn btn-info">Xem chi tiết</a>
                            </div>
                            <c:set var="couts" value="${couts+1}"/>

                        </div>
                    </div>

                </div>
            </c:if>
        </c:forEach>
    </div>
</div>
<!--end cong viec-->








