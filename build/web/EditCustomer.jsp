<%-- 
    Document   : EditCustomer
    Created on : May 27, 2022, 8:00:31 PM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EDIT CUSTOMER</title>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    
        <link rel="stylesheet" type="text/css" href="Bookcss.css" />
    </head>
    <body>
        <div class="container">
            <div class="book">
                <div class="description">
                    <h1><strong>EDIT</strong> LIST OF CUSTOMER</h1>
                    <p>
                        Admin can be change here!
                    </p>
                    <div class="quote">
                        <p>
                            Admin can change the customer list according to the requirements of the customer.
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
        <form action="EditCustomer" method="post" enctype="multipart/form-data">
        
                <div class="inpbox">
                        <li>ID NAME</li>
                        <span class="flaticon-globe"></span>
                        <input value="${uc.idname}" type="text" name="idname" readonly>
                </div>
                <div class="inpbox">
                        <li>NAME</li>
                        <span class="flaticon-globe"></span>
                        <input value="${uc.name}" type="text" name="name">
                </div>
                <div class="inpbox">
                        <li>EMAIL</li>
                        <span class="flaticon-globe"></span>
                        <input value="${uc.email}" type="text" name="email">
                </div>
                <div class="inpbox">
                        <li>PHONE</li>
                        <span class="flaticon-globe"></span>
                        <input value="${uc.phone}" type="text" name="phone">
                </div>
                <div class="inpbox">
                        <li>BIRTH</li>
                        <span class="flaticon-globe"></span>
                        <input value="${uc.birth}" type="date" name="birth">
                </div>
                <div class="inpbox">
                        <li>IMAGE</li>
                        <span class="flaticon-globe"></span>>
                        <img src="${uc.image}" style="height: 50px;width: 50px">
                </div>
                <div class="inpbox">
                        <li>CHANGE IMAGE</li>
                        <span class="flaticon-globe"></span>
                        <input value="" type="file" name="image">
                </div>
                
                    <button class="subt" type="submit">CHANGE</button>
                
            
            </form>
                </div>
            </div>
        </div>
    </body>
</html>
