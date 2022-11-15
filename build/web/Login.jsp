<%-- 
    Document   : Login
    Created on : Oct 15, 2021, 9:15:29 PM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Login Form</title>
      <link rel="stylesheet" href="cssfile.css">
   </head>
   <body>
   <center>
      <div class="wrapper">
         <div class="title">
            Login Form
         </div>
         <form method="post" action="LogInServlet">
            <div class="field">
               <input type="text"  name="username" required>
               <label>UserName</label>
            </div>
            <div class="field">
               <input type="password" name="password" required>
               <label>Password</label>
            </div>
            <div class="content">
               <div class="checkbox">
                  <input type="checkbox" id="remember-me">
                  <label for="remember-me">Remember me</label>
               </div>
               <div class="pass-link">
                  <a href="#">Forgot password?</a>
               </div>
            </div>
            <div class="field">
               <input type="submit" value="Login">
            </div>
            <div class="signup-link">
               Chưa có tài khoản? <a href="Signin.jsp">Đăng ký ngay</a>
               <br><a href="index.jsp">Quay về trang chủ</a>
            </div>
         </form>
      </div>
       </center>
   </body>
</html>
