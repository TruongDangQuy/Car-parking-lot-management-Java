<%-- 
    Document   : Signin
    Created on : Oct 6, 2021, 2:24:23 PM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Signin Form</title>
      <link rel="stylesheet" href="cssfile.css">
   </head>
   <body>
      <div class="wrapper">
         <div class="title">
            Signin Form
         </div>
         <form method="post" action="SignInServlet">
            <div class="field">
               <input type="text"  name="username" required>
               <label>UserName</label>
            </div>
             <div class="field">
               <input type="text"  name="gender" required>
               <label>Gender</label>
            </div>
            <div class="field">
               <input type="password" name="password" required>
               <label>Password</label>
            </div>
             <div class="field">
               <input type="text" name="id_account" required>
               <label>ID_Account</label>
            </div>
            <div class="content">
               <div class="checkbox">
                  <input type="checkbox" id="remember-me">
                  <label for="remember-me">Remember me</label>
               </div>
            </div>
            <div class="field">
               <input type="submit" value="Signin">
            </div>
            <div class="signup-link">
                <a href="Login.jsp">Đăng nhập ngay</a>
                <br><a href="index.jsp">Quay về trang chủ</a>
            </div>
         </form>
      </div>
                <center>

                <div>
                    <h4>Thong tin dang ky cua ban</h4>
                    <h5>${username}</h5>
                </div>
                </center>
   </body>
</html>
