<%-- 
    Document   : Book
    Created on : May 5, 2022, 4:30:33 PM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book page</title>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    
        <link rel="stylesheet" type="text/css" href="Bookcss.css" />
    </head>
    <body>
        <div class="container">
            <div class="book">
                <div class="description">
                    <h1><strong>BOOK</strong> YOUR PARKING HERE!</h1>
                    <p>
                        Booking.com là một trang web trực tuyến cho đặt chỗ, được thành lập vào năm 1996. Công ty được vận hành bởi Booking Holdings, có có trụ sở tại Hoa Kỳ, và là nguồn lợi nhuận chính của tập đoàn này. Booking.com có trụ sở tại Amsterdam, Hà Lan.
                    </p>
                    <div class="quote">
                        <p>
                            Trang web có 28 triệu danh sách gồm 148.000 điểm đến tại 228 quốc gia và vùng lãnh thổ trên toàn thế giới. Mỗi ngày, hơn 1.550.000 đêm phòng được đặt trước trên trang web.Trang web có sẵn trong 43 ngôn ngữ.
                        </p>
                    </div>
                    <ul>
                        <li>Dịch vụ tiện lợi 24/7</li>
                        <li>Chăm sóc khách hàng</li>
                        <li>Định vị GPS và hỗ trợ</li>
                        <li>Rộng rãi, thoáng mát</li>
                    </ul>
                    <div>
                            <h1><strong>BOOK</strong> INFORMATION</h1>
                            <li>${idbook}</li>
                            <li>${idname}</li>
                            <li>${name}</li>
                            <li>${email}</li>
                            <li>${date}</li>
                            <li>${hour}</li>
                            <li>${slot}</li>
                            <li>${type}</li>
                            <button class="subt" type="button"><a href="Home.jsp">Back</a></button>
                    </div>
                </div>
                <div class="form">
                    <form method="POST" action="BookServlet">


                        <div class="inpbox">
                            <span class="flaticon-globe"></span>    
                            <input type="text" placeholder="ID BOOKING" name="idbook">
                        </div>
                        <div class="inpbox">
                            <span class="flaticon-user"></span>    
                            <input type="text" placeholder="ID NAME" name="idname">
                        </div>
                        <div class="inpbox">
                            <span class="flaticon-user"></span>    
                            <input type="text" placeholder="NAME" name="name">
                        </div>
                        <div class="inpbox">
                            <span class="flaticon-email"></span>    
                            <input type="text" placeholder="Email@gmail.com" name="email">
                        </div>
                        <div class="inpbox">
                            <span class="flaticon-calendar"></span>
                            <input type="date" placeholder="DATE" name="date">
                        </div>
                        <div class="inpbox">
                            <span class="flaticon-time"></span>
                            <input type="time" placehoder="TIME" name="hour">
                        </div>
                        <div class="inpbox full">
                            <span class="flaticon-taxi"></span>
                            <select id="cars" name="slot">
                                <option value="">SELECT SLOT</option>
                                <option value="A1">A1</option>
                                <option value="A2">A2</option>
                                <option value="A3">A3</option>
                                <option value="A4">A4</option>
                                <option value="A5">A5</option>
                                <option value="B1">B1</option>
                                <option value="B2">B2</option>
                                <option value="B3">B3</option>
                                <option value="B4">B4</option>
                                <option value="B5">B5</option>
                                <option value="C1">C1</option>
                                <option value="C2">C2</option>
                                <option value="C3">C3</option>
                                <option value="C4">C4</option>
                                <option value="C5">C5</option>
                            </select>
                        </div>
                        <div class="inpbox full">
                            <span class="flaticon-taxi"></span>
                            <select id="cars" name="type">
                                <option value="">SELECT VEHICLE</option>
                                <option value="Car">Car</option>
                                <option value="Motorbike">Motorbike</option>
                                <option value="Truck">Truck</option>
                            </select>
                        </div>
                        <div class="inpbox full">
                            <div class="inrbox">
                                <span class="flaticon-taxi"> Regular</span>
                                <input name="plan">
                                <h2>$50</h2>
                                <span>Position A</span>
                            </div>
                            <div class="inrbox">
                                <span class="flaticon-taxi"> Pro</span>
                                <input name="plan">
                                <h2>$120</h2>
                                <span>Position B</span>
                            </div>
                            <div class="inrbox">
                                <span class="flaticon-taxi"> Advance</span>
                                <input name="plan">
                                <h2>$180</h2>
                                <span>Position C</span>
                            </div>
                        </div>
                        <button class="subt">BOOK</button>
                        <button class="rst" type="reset">Reset</button>
                        

                        
                    </form>
                </div>
            </div>
        </div>      
    </body>
</html>
