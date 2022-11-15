<%-- 
    Document   : Price
    Created on : May 9, 2022, 3:18:35 PM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>A Price</title>
        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <!--File CSS-->
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        
        <section>
            <form action="SearchPriceServlet" method="GET">
            <input type="search" placeholder="Search..." name="tab">
            <td colspan="2"><button class="favorite styled" type="submit">Tìm kiếm</button><button class="favorite styled" type="reset">Đặt lại</button></td>
        </form>
        <h1>Giá cả</h1>
        <p style="color: red;">${errorString}</p>
        <div class="tbl-header">
      <table cellpadding="6" cellspacing="6" border="5">
            <thead>
                <tr>
                    <th>Mã đơn giá</th>
                    <th>Giá</th>
                    <th>Giờ</th>
                    <th>Loại xe</th>
                    <th>Hình ảnh</th>
                    <th>Tùy chỉnh sửa đổi</th>
                    <th>Tùy chỉnh xóa bỏ</th>
                </tr>
            </thead>
            </table>
            </div>
        <div class="tbl-content">
      <table cellpadding="0" cellspacing="0" border="0">
            <tbody>
                <c:forEach items="${priceList}" var="userprice"> 
                <tr>
                    <td>${userprice.idprice}</td>
                    <td>${userprice.price}</td>
                    <td>${userprice.hour}</td>
                    <td>${userprice.type}</td>
                    <td><img src="${userprice.image}" style="height: 150px;width: 150px"></td>
                    
                    <td>
                        <c:if test="${sessionScope.acc.id_account==1}">
                            <a href="EditPrice?code=${userprice.idprice}"><button class="favorite styled" type="button">Sửa đổi</button></a>
                       </c:if>
                    </td>
                    <td>
                        <c:if test="${sessionScope.acc.id_account==1}">
                            <a href="DeletePrice?code=${userprice.idprice}" onclick="showMess(${userprice.idprice})"><button class="favorite styled" type="button">Xóa bỏ</button></a>
                        </c:if>
                    </td>
                </tr>
                </c:forEach>
            </tbody>
            </table>
            </div>
        
        
        
        </section>
        <a href="Home.jsp"><button class="favorite styled" type="button">Back To Home</button></a>
        <c:if test="${sessionScope.acc.id_account==1}">
            <a href="AddPrice.jsp"><button class="favorite styled" type="button">Tạo thêm dữ liệu</button></a>
        </c:if>
        
        
        
                
    </body>
    <script>
        function showMess(idprice){
            var option = confirm('Are you want to delete?');
            if (option ===true){
                window.location.href= 'DeletePrice?code='+idprice;
            }
        }
    </script>
    <script src="scripts.js"></script>
</html>
