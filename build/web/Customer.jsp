<%-- 
    Document   : Customer
    Created on : May 27, 2022, 2:54:51 PM
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
            <form action="SearchCustomerServlet" method="GET">
            <input type="search" placeholder="Search..." name="tab">
            <td colspan="2"><button class="favorite styled" type="submit">Tìm kiếm</button><button class="favorite styled" type="reset">Đặt lại</button></td>
        </form>
        <h1>Thông tin khách hàng</h1>
        <p style="color: red;">${errorString}</p>
        <div class="tbl-header">
      <table cellpadding="6" cellspacing="6" border="5">
          <thead>
                <tr>
                    <th>Mã khách hàng</th>
                    <th>Tên khách hàng</th>
                    <th>Email</th>
                    <th>Số điện thoại</th>
                    <th>Năm Sinh</th>
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
                <c:forEach items="${customerList}" var="usercustomer"> 
                <tr>
                    <td>${usercustomer.idname}</td>
                    <td>${usercustomer.name}</td>
                    <td>${usercustomer.email}</td>
                    <td>${usercustomer.phone}</td>
                    <td>${usercustomer.birth}</td>
                    <td><img src="${usercustomer.image}" style="height: 150px;width: 150px"></td>
                    
                    <td>
                       <a href="EditCustomer?code=${usercustomer.idname}"><button class="favorite styled" type="button">Sửa đổi</button></a>
                    </td>
                    <td>
                        <a href="DeleteCustomer?code=${usercustomer.idname}" onclick="showMess(${usercustomer.idname})"><button class="favorite styled" type="button">Xóa bỏ</button></a>
                    </td>
                </tr>
                </c:forEach>
            </tbody>
            </table>
        </div>
        </section>
        <a href="Home.jsp"><button class="favorite styled" type="button">Back To Home</button></a>
        <a href="AddCustomer.jsp"><button class="favorite styled" type="button">Tạo thêm dữ liệu</button></a>
    </body>
</html>
