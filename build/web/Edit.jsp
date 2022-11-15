<%-- 
    Document   : Edit
    Created on : May 13, 2022, 10:16:57 PM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Price List</title>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    
        <link rel="stylesheet" type="text/css" href="Bookcss.css" />
    </head>
    <body>
        <div class="container">
            <div class="book">
                <div class="description">
                    <h1><strong>EDIT</strong> LIST OF PRICE</h1>
                    <p>
                        Admin can be change here!
                    </p>
                    <div class="quote">
                        <p>
                            Admin can change the price list according to the requirements of the current market.
                        </p>
                    </div>
                    <ul>
                        <li>Service 24/7</li>
                        <li>customer care</li>
                        <li>GPS navigation and online support</li>
                        <li>Reliable</li>
                    </ul>
                    <button class="subt" type="button"><a href="Price.jsp">Back</a></button>
                </div>
                <div class="form">
                    <form action="EditPrice" method="post" enctype="multipart/form-data">
                        <div class="inpbox">
                            <li>ID PRICE</li>
                            <span class="flaticon-globe"></span>
                            <input value="${ups.idprice}" type="text" name="idprice" readonly>
                        </div>
                        <div class="inpbox">
                            <li>PRICE</li>
                            <span class="flaticon-globe"></span>
                            <input value="${ups.price}" type="text" name="price" placeholder='PRICE'>
                        </div>
                        <div class="inpbox">
                            <li>TIME</li>
                            <span class="flaticon-time"></span>
                            <input value="${ups.hour}" type="time" name="hour" placeholder='TIME'>
                        </div>
                        <div class="inpbox full">
                            <li>TYPE</li>
                            <span class="flaticon-taxi"></span>
                            <select id="cars" name="type">
                                <option value="Car" ${ups.type == "Car"?"selected":""}>Car</option>
                                <option value="Truck" ${ups.type == "Truck"?"selected":""}>Truck</option>
                                <option value="Motorbike" ${ups.type == "Motorbike"?"selected":""}>Motorbike</option>
                            </select>
                        </div>
                        <div class="inpbox">
                            <li>IMAGE</li>
                            <span class="flaticon-time"></span>
                            <img src="${ups.image}" style="height: 150px;width: 150px">
                        </div>
                        <div class="inpbox">
                            <li>CHANGE IMAGE</li>
                            <input value="" type="file" name="image" required>
                        </div>

                        <button class="subt" type="submit">Change</button>

                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
