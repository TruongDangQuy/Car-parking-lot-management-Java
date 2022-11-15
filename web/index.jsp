<%-- 
    Document   : index
    Created on : Oct 6, 2021, 2:20:01 PM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Quản lý bãi đỗ xe</title>
        <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
        <!--font-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <!--File CSS-->
        <link rel="stylesheet" href="indexcss.css">
    </head>
    <body>
        <header class="header">
            <div class="header-1">
                <a href="#" class="logo"><i class="fas fa-car"></i> Quản lý bãi đỗ xe </a>
                <form action="" class="search-form">
                    <input type="search" name="" placeholder="Tìm kiếm..." id="search-box">
                    <label for="search-box" class="fas fa-search"></label>
                </form>
                <div class="icons">
                    <div id="search-btn" class="fas fa-search"></div>
                    <div id="login-btn" class="fas fa-user"></div>
                </div>
            </div>
            <div class="header-2">
                <nav class="navbar">

                    <a href="#">Ứng dụng web về quản lý bãi đỗ xe</a>
                </nav>
            </div>
        </header>
        <nav class="bottom-navbar">
            <a href="#index" class="fas fa-home"></a>
            <a href="#featured" class="fas fa-list"></a>
            <a href="#arrivals" class="fas fa-tags"></a>
            <a href="#reviews" class="fas fa-comments"></a>
            <a href="#blogs" class="fas fa-blog"></a>
        </nav>
        <div class="login-form-container">

            <div id="close-login-btn" class="fas fa-times"></div>

            <form method="post" action="LogInServlet">
                <h3>Đăng Nhập</h3>
                <span>Tài khoản</span>
                <input type="text" class="box"  name="username" placeholder="Tên đăng nhập..." required>
                <span>Mật khẩu</span>
                <input type="password" class="box" name="password" placeholder="Mật khẩu..." required>
                <div class="checkbox">
                    <input type="checkbox" name="" id="remember-me">
                    <label for="remember-me">Nhớ mật khẩu</label>
                </div>
                <input type="submit" value="Đăng nhập" class="btn">
                <p>Quên mật khẩu? <a href="#">Nhấn vào đây</a></p>
                <p>Bạn chưa có tài khoản? <a href="Signin.jsp">Đăng ký</a></p>
            </form>

        </div>
        <!-- deal section starts  -->

        <section class="deal">


            <div class="content">
                <h3>Bãi đậu xe</h3>
                <h1>An toàn, đáng tin cậy</h1>
                <p>Hỗ trợ trực tuyến mọi lúc mọi nơi 24/7</p>
                <img src="Images/carloader.gif" class="map" alt="" >
                
            </div>
            <div class="image">
                <img src="Images/FE84.png" alt="">
            </div>

        </section>

        <!-- deal section ends -->
        <!-- home section starts  -->

        <section class="home" id="home">

            <div class="row">

                

                <div class="swiper books-slider">
                    <div class="swiper-wrapper">
                        <a href="#" class="swiper-slide"><img src="Images/Park1.png" alt="" ></a>
                        <a href="#" class="swiper-slide"><img src="Images/Park2.png" alt=""></a>
                        <a href="#" class="swiper-slide"><img src="Images/Park3.png" alt=""></a>
                        <a href="#" class="swiper-slide"><img src="Images/Park4.png" alt=""></a>
                        <a href="#" class="swiper-slide"><img src="Images/Park5.png" alt=""></a>
                        <a href="#" class="swiper-slide"><img src="Images/Park6.png" alt=""></a>

                    </div>
                    
                </div>

            </div>

        </section>

        <!-- home section ense  -->
        
        <!-- icons section starts  -->

        

        <!-- icons section ends -->
        
        

        <!-- footer section starts  -->

        <section class="footer">

            <div class="box-container">

                <div class="box">
                    <h3>Vị trí</h3>
                    <a href="#"> <i class="fas fa-map-marker-alt"></i> Việt Nam </a>
                    <a href="#"> <i class="fas fa-map-marker-alt"></i> Hoa Kỳ </a>
                    <a href="#"> <i class="fas fa-map-marker-alt"></i> Trung Quốc </a>
                    <a href="#"> <i class="fas fa-map-marker-alt"></i> Nhật Bản </a>
                    <a href="#"> <i class="fas fa-map-marker-alt"></i> Pháp </a>
                    <a href="#"> <i class="fas fa-map-marker-alt"></i> Ấn Độ </a>
                </div>

                <div class="box">
                    <h3>Liên kết</h3>
                    <a href="#"> <i class="fas fa-arrow-right"></i> Liên kết </a>
                    <a href="#"> <i class="fas fa-arrow-right"></i> Liên kết </a>
                    <a href="#"> <i class="fas fa-arrow-right"></i> Liên kết </a>
                    <a href="#"> <i class="fas fa-arrow-right"></i> Liên kết </a>
                    <a href="#"> <i class="fas fa-arrow-right"></i> Liên kết </a>
                </div>

                <div class="box">
                    <h3>Tham khảo</h3>
                    <a href="#"> <i class="fas fa-arrow-right"></i> Tham khảo </a>
                    <a href="#"> <i class="fas fa-arrow-right"></i> Tham khảo </a>
                    <a href="#"> <i class="fas fa-arrow-right"></i> Tham khảo </a>
                    <a href="#"> <i class="fas fa-arrow-right"></i> Tham khảo </a>
                    <a href="#"> <i class="fas fa-arrow-right"></i> Tham khảo </a>
                </div>

                <div class="box">
                    <h3>Liên hệ</h3>
                    <a href="#"> <i class="fas fa-phone"></i> Phone Number </a>
                    <a href="#"> <i class="fas fa-phone"></i> Phone Number </a>
                    <a href="#"> <i class="fas fa-envelope"></i> Phone Number </a>
                    <img src="Images/carloader.gif" class="map" alt="">
                </div>

            </div>

            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
                <a href="#" class="fab fa-pinterest"></a>
            </div>

            <div class="credit"> Bãi đậu xe <span>Tiện lợi</span> | An toàn </div>

        </section>

        <!-- footer section ends -->
        <!-- loader  -->

        <div class="loader-container">
            <img src="Images/carloader2.gif" alt="" style="height: 1000px;width: 1000px">
        </div>

        <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
        <script src="script.js"></script>
</body>
</html>
