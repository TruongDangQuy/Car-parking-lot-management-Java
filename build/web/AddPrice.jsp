<%-- 
    Document   : AddPrice
    Created on : May 12, 2022, 11:54:36 PM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Price List</title>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    
        <link rel="stylesheet" type="text/css" href="Bookcss.css" />
    </head>
    <body>
        <div class="container">
            <div class="book">
                <div class="description">
                    <h1><strong>ADD</strong> LIST OF PRICE</h1>
                    <p>
                        Admin can be add here!
                    </p>
                    <div class="quote">
                        <p>
                            Admin can add the price list according to the requirements of the current market.
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
                    <form action="AddPriceServlet" method="post" enctype="multipart/form-data">
                        <div class="inpbox">
                            <li>ID PRICE</li>
                            <span class="flaticon-globe"></span>
                            <input type="text" name="idprice">
                        </div>
                        <div class="inpbox">
                            <li>PRICE</li>
                            <span class="flaticon-globe"></span>
                            <input type="text" name="price">
                        </div>
                        <div class="inpbox">
                            <li>TIME</li>
                            <span class="flaticon-time"></span>
                            <input type="time" name="hour">
                        </div>
                        <div class="inpbox full">
                            <li>TYPE</li>
                            <span class="flaticon-taxi"></span>
                            <select id="cars" name="type">
                                <option value="">Select vehicle</option>
                                <option value="Car">Car</option>
                                <option value="Truck">Truck</option>
                                <option value="Motorbike">Motorbike</option>
                            </select>
                        </div>
                        <div class="inpbox">
                            <li>IMAGE</li>
                            <input value="" type="file" name="image">
                        </div>

                        <button class="subt" type="submit">Add</button>

                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
