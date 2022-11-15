<%-- 
    Document   : Parking
    Created on : May 27, 2022, 12:16:05 AM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <!--File CSS-->
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <section>
        <form action="SearchParkingServlet" method="get">
            <input type="search" placeholder="Search..." name="tab">
            <td colspan="2"><button class="favorite styled" type="submit">Tìm kiếm</button><button class="favorite styled" type="reset">Đặt lại</button></td>
        </form>
        <h1>Thông Tin Xe Trong Bãi Đậu</h1>
        <p style="color: red;">${errorString}</p>
            <div class="tbl-header">
      <table cellpadding="6" cellspacing="6" border="5">
            <thead>
                <tr>
                    <th>Mã xe đậu</th>
                    <th>Mã khách hàng</th>
                    <th>Biển số</th>
                    <th>Loại xe</th>
                    <th>Thời gian vào</th>
                    <th>Thời gian ra</th>
                    <th>Bãi đậu</th>
                    <th>Tùy chỉnh xóa bỏ</th>
                </tr>
            </thead>
      </table>
                </div>
            <div class="tbl-content">
      <table cellpadding="0" cellspacing="0" border="0">
            <tbody>
                <c:forEach items="${parkingList}" var="userparking"> 
                <tr>
                    <td>${userparking.idxe}</td>
                    <td>${userparking.idname}</td>
                    <td>${userparking.bienso}</td>
                    <td>${userparking.loaixe}</td>
                    <td>${userparking.thoigianvao}</td>
                    <td>${userparking.thoigianra}</td>
                    <td>${userparking.baidau}</td>
                    
                    
                    <td>
                        <a href="DeleteParking?code=${userparking.idxe}" onclick="showMess(${userbook.idxe})"><button class="favorite styled" type="button">Xóa bỏ</button></a>
                    </td>
                </tr>
                </c:forEach>
            </tbody>
            </table>
            </div>
        </section>
            <a href="Home.jsp"><button class="favorite styled" type="button">Back To Home</button></a>
    </body>
</html>
