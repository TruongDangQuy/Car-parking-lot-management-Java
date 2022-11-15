<%-- 
    Document   : EditBook
    Created on : May 25, 2022, 5:09:31 PM
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
                    <h1><strong>EDIT</strong> LIST OF BOOKING</h1>
                    <p>
                        Admin can be change here!
                    </p>
                    <div class="quote">
                        <p>
                            Admin can change the booking list according to the requirements of the customer.
                        </p>
                    </div>
                    <ul>
                        <li>Service 24/7</li>
                        <li>customer care</li>
                        <li>GPS navigation and online support</li>
                        <li>Reliable</li>
                    </ul>
                    <button class="subt" type="button"><a href="Search.jsp">Back</a></button>
                </div>
                <div class="form">
        <form action="EditBook" method="post">
                <div class="inpbox">
                        <li>ID BOOK</li>
                        <span class="flaticon-globe"></span>
                        <input value="${upb.idbook}" type="text" name="idbook" readonly>
                </div>
                <div class="inpbox">
                        <li>ID NAME</li>
                        <span class="flaticon-globe"></span>
                        <input value="${upb.idname}" type="text" name="idname" readonly>
                </div>
                <div class="inpbox">
                        <li>NAME</li>
                        <span class="flaticon-globe"></span>
                        <input value="${upb.name}" type="text" name="name">
                </div>
                <div class="inpbox">
                        <li>EMAIL</li>
                        <span class="flaticon-globe"></span>
                        <input value="${upb.email}" type="text" name="email">
                </div>
                <div class="inpbox">
                        <li>DATE</li>
                        <span class="flaticon-globe"></span>
                        <input type="date" name="date" value="${upb.date}">
                </div>
                <div class="inpbox">
                        <li>TIME</li>
                        <span class="flaticon-globe"></span>
                        <input type="time" name="hour" value="${upb.hour}">
                </div>
                <div class="inpbox full">
                            <li>SLOT</li>
                            <span class="flaticon-taxi"></span>
                            <select id="cars" name="slot">
                                <option value="A1" ${upb.slot == "A1"?"selected":""}>A1</option>
                                <option value="A2" ${upb.slot == "A2"?"selected":""}>A2</option>
                                <option value="A3" ${upb.slot == "A3"?"selected":""}>A3</option>
                                <option value="A4" ${upb.slot == "A4"?"selected":""}>A4</option>
                                <option value="A5" ${upb.slot == "A5"?"selected":""}>A5</option>
                                <option value="B1" ${upb.slot == "B1"?"selected":""}>B1</option>
                                <option value="B2" ${upb.slot == "B2"?"selected":""}>B2</option>
                                <option value="B3" ${upb.slot == "B3"?"selected":""}>B3</option>
                                <option value="B4" ${upb.slot == "B4"?"selected":""}>B4</option>
                                <option value="B5" ${upb.slot == "B5"?"selected":""}>B5</option>
                                <option value="C1" ${upb.slot == "C1"?"selected":""}>C1</option>
                                <option value="C2" ${upb.slot == "C2"?"selected":""}>C2</option>
                                <option value="C3" ${upb.slot == "C3"?"selected":""}>C3</option>
                                <option value="C4" ${upb.slot == "C4"?"selected":""}>C4</option>
                                <option value="C5" ${upb.slot == "C5"?"selected":""}>C5</option>
                        </select>
                </div>
                <div class="inpbox full">
                            <span class="flaticon-taxi"></span>
                            <select id="cars" name="type">
                                <option value="Car" ${upb.type == "Car"?"selected":""}>Car</option>
                                <option value="Motorbike" ${upb.type == "Motorbike"?"selected":""}>Motorbike</option>
                                <option value="Truck" ${upb.type == "Truck"?"selected":""}>Truck</option>
                            </select>
                </div>
                
                            <button class="subt" type="submit">CHANGE BOOKING</button>
                
            </form>
                </div>
            </div>
        </div>
    </body>
</html>
