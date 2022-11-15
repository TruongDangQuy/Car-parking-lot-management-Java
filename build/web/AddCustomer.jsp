<%-- 
    Document   : AddCustomer
    Created on : May 27, 2022, 10:01:20 PM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    
        <link rel="stylesheet" type="text/css" href="Bookcss.css" />
    </head>
    <body>
        <div class="container">
            <div class="book">
                <div class="description">
                    <h1><strong>ADD</strong> LIST OF CUSTOMER</h1>
                    <p>
                        Admin can be add here!
                    </p>
                    <div class="quote">
                        <p>
                            Admin can add the customer list.
                        </p>
                    </div>
                    <ul>
                        <li>Service 24/7</li>
                        <li>customer care</li>
                        <li>GPS navigation and online support</li>
                        <li>Reliable</li>
                    </ul>
                    <button class="subt" type="button"><a href="Customer.jsp">Back</a></button>
                </div>
                <div class="form">
                    <form action="AddCustomerServlet" method="post" enctype="multipart/form-data">
                        <div class="inpbox">
                            <li>ID Name</li>
                            <span class="flaticon-globe"></span>
                            <input type="text" name="idname">
                        </div>
                        <div class="inpbox">
                            <li>NAME</li>
                            <span class="flaticon-globe"></span>
                            <input type="text" name="name">
                        </div>
                        <div class="inpbox">
                            <li>EMAIL</li>
                            <span class="flaticon-globe"></span>
                            <input type="text" name="email">
                        </div>
                        <div class="inpbox">
                            <li>PHONE</li>
                            <span class="flaticon-globe"></span>
                            <input type="text" name="phone">
                        </div>
                        <div class="inpbox">
                            <li>BIRTH</li>
                            <span class="flaticon-globe"></span>
                            <input type="date" name="birth">
                        </div>
                        <div class="inpbox">
                            <li>IMAGE</li>
                            <span class="flaticon-globe"></span>
                            <input type="file" name="image">
                        </div>

                        <button class="subt" type="submit">Add</button>

                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
