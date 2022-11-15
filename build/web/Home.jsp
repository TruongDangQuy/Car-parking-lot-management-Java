<%-- 
    Document   : Home
    Created on : May 9, 2022, 1:32:52 PM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Các tính năng đặc trưng của bãi đỗ xe</title>
        
        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <!--File CSS-->
        <link rel="stylesheet" href="cssfile.css">
    </head>
    <body>

        <header class="header">
            <div class="header-1">
                <a href="#" class="logo"><i class="fas fa-car"></i>Chức năng bãi đỗ xe</a>
                
                <form action="SearchBookServlet" method="get" class="search-form">
                    <input type="search" name="tab" placeholder="Thông tin Booking..." id="search-box">
                    <label for="search-box" class="fas fa-search"></label>
                </form>
                <div class="icons">
                    
                    <div id="search-btn" class="fas fa-search"></div>
                    
                </div>
            </div>


            <div class="header-2">
                <nav class="navbar">
                    <a>${username}</a>                   
                    <a href="PriceServlet">Bảng giá</a>
                    <c:if test="${sessionScope.acc.id_account==1}">
                    <a href="ParkingServlet">Bãi đậu</a>
                    </c:if>
                    <c:if test="${sessionScope.acc.id_account==0}">
                    <a href="Book.jsp">Booking</a>
                    </c:if>
                    <a href="SearchServlet">Thông tin Booking</a>
                    <c:if test="${sessionScope.acc.id_account==1}">
                    <a href="CustomerSevlet">Khách hàng</a>
                    </c:if>
                    <c:if test="${sessionScope.acc!=null}">                       
                            <a href="LogOutServlet">Đăng xuất</a>  
                    </c:if>
                </nav>
            </div>
        </header>
                    
                        <section class="deal">

                            <div class="content">
                                
                                <h3>Chỗ đậu xe lý tưởng</h3>
                                <h1>Giảm giá 30%</h1>
                                <p>Booking ngay kẻo lỡ!</p>
                                <c:if test="${sessionScope.acc.id_account==0}">
                                <a href="Book.jsp" class="btn">Book ngay</a>
                                </c:if>
                            </div>

                            <div class="image">
                                <img src="Images/BMW.png" alt="">
                            </div>

                        </section>
                    <section class="newsletter">                                             
                        <form action="SearchPriceServlet" method="GET">                           
                            <h3>Xem giá tốt</h3>
                            <input type="text" name="tab" placeholder="Nhập giá" id="" class="box">
                            <input type="submit" value="Xem giá" class="btn">
                        </form>
                        <a href="https://www.animatedimages.org/cat-motorbike-73.htm"><img src="https://www.animatedimages.org/data/media/73/animated-motorbike-image-0084.gif" border="0" alt="animated-motorbike-image-0084" /></a>
                    </section>
                    
        
                        
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="script.js"></script>
    </body>
</html>
