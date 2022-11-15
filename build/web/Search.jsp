<%-- 
    Document   : Search
    Created on : May 17, 2022, 11:40:40 AM
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
        <form action="SearchBookServlet" method="get">
            <input type="search" placeholder="Search..." name="tab">
            <td colspan="2"><button class="favorite styled" type="submit">Tìm kiếm</button><button class="favorite styled" type="reset">Đặt lại</button></td>
        </form>
        <h1>Thông Tin Booking</h1>
        <p style="color: red;">${errorString}</p>
        <div class="tbl-header">
            <table border="1"  cellpadding="5" cellspacing="1">
                <thead>
                <tr>
                    <th>Mã booking</th>
                    <th>Mã khách hàng</th>
                    <th>Họ tên</th>
                    <th>Email</th>
                    <th>Ngày</th>
                    <th>Giờ</th>
                    <th>Vị trí</th>
                    <th>Loại xe</th>
                    <th>Tùy chỉnh sửa đổi</th>
                    <th>Tùy chỉnh xóa bỏ</th>
                </tr>
                </thead>
                </table>
               </div>
        <div class="tbl-content">
      <table cellpadding="0" cellspacing="0" border="0">
            <tbody>
                <c:forEach items="${searchList}" var="userbook"> 
                <tr>
                    <td>${userbook.idbook}</td>
                    <td>${userbook.idname}</td>
                    <td>${userbook.name}</td>
                    <td>${userbook.email}</td>
                    <td>${userbook.date}</td>
                    <td>${userbook.hour}</td>
                    <td>${userbook.slot}</td>
                    <td>${userbook.type}</td>
                    
                    <td>
                        <c:if test="${sessionScope.acc.id_account==1}">
                       <a href="EditBook?code=${userbook.idbook}"><button class="favorite styled" type="button">Sửa đổi</button></a>
                       </c:if>
                    </td>
                    <td>
                        <c:if test="${sessionScope.acc.id_account==1}">
                        <a href="DeleteBook?code=${userbook.idbook}" onclick="showMess(${userbook.idbook})"><button class="favorite styled" type="button">Xóa bỏ</button></a>
                        </c:if>
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
