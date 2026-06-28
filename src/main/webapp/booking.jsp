<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
int packageId = Integer.parseInt(request.getParameter("id"));
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Book Package</title>
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{

    min-height:100vh;

    display:flex;
    justify-content:center;
    align-items:center;

    background:
    linear-gradient(rgba(15,23,42,.65),rgba(15,23,42,.65)),
    url("images/common-bg.jpg");

    background-size:cover;
    background-position:center;
    background-repeat:no-repeat;
    background-attachment:fixed;

    padding:40px;
}

.container{

    width:480px;

    background:rgba(255,255,255,.95);

    border-radius:24px;

    padding:45px;
     animation:fadeIn .8s ease;

box-shadow:

0 35px 80px rgba(0,0,0,.35),

0 0 35px rgba(59,130,246,.30),

0 0 60px rgba(59,130,246,.15);
}

@keyframes fadeIn{

from{

opacity:0;
transform:translateY(35px);

}

to{

opacity:1;
transform:translateY(0);

}

}
.container:hover{

    transform:translateY(-8px);

    box-shadow:
    0 40px 90px rgba(0,0,0,.45),
    0 0 50px rgba(124,58,237,.25);

}

.booking-icon{

width:110px;

height:110px;

margin:auto;

display:flex;

justify-content:center;

align-items:center;

border-radius:50%;

background:linear-gradient(135deg,#10B981,#059669);

border:5px solid white;

box-shadow:

0 0 0 7px rgba(59,130,246,.25),

0 0 28px rgba(59,130,246,.55),

0 20px 40px rgba(0,0,0,.30);

margin-bottom:28px;

}

.booking-icon i{

font-size:52px;

color:white;

}

h2{

    text-align:center;
    font-size:45px;
    font-weight:800;

       color:#3B82F6;

    text-shadow:
    0 2px 0 #FFFFFF,
    3px 4px 10px rgba(0,0,0,.35),
    0 0 18px rgba(59,130,246,.45);
    

}
.subtitle{

    text-align:center;

    font-size:18px;

    font-weight:600;

    color:#9ACD32;

    margin-bottom:25px;

}

label{

display:flex;

align-items:center;

gap:10px;

font-size:16px;

font-weight:700;

color:#1E293B;

margin-bottom:10px;

margin-top:18px;

}

label i{

color:#2563EB;

font-size:18px;

width:20px;

}

.input-box{

width:100%;

padding:18px;

border:2px solid #D6E4FF;

border-radius:15px;

font-size:17px;

background:#FFFFFF;

transition:.35s;

}

.input-box:focus{

border-color:#3B82F6;

box-shadow:

0 0 0 5px rgba(59,130,246,.18),

0 0 20px rgba(59,130,246,.25);

}
.booking-btn{

    width:100%;
    margin-top:30px;
    padding:15px;
    border:none;
    border-radius:12px;

    background:linear-gradient(135deg,#7C3AED,#9333EA);

    color:#FFFFFF;
    font-size:18px;
    font-weight:700;
    cursor:pointer;
    transition:.35s;

    display:flex;
    justify-content:center;
    align-items:center;
    gap:12px;

    box-shadow:
    0 10px 25px rgba(124,58,237,.35),
    0 0 18px rgba(147,51,234,.25);
}
.booking-btn:hover{

    transform:translateY(-4px) scale(1.02);

    background:linear-gradient(135deg,#6D28D9,#8B5CF6);

    box-shadow:
    0 18px 35px rgba(124,58,237,.45),
    0 0 25px rgba(147,51,234,.35);

}
.booking-btn i{

font-size:18px;

}



.back{

    text-align:center;

    margin-top:25px;

}

.back a{

    text-decoration:none;

    color:#2563EB;

    font-weight:bold;

}

.back a:hover{

    text-decoration:underline;

}

</style>

</head>

<body>

<div class="container">

<div class="booking-icon">
<i class="fa-solid fa-suitcase-rolling"></i>
</div>

<h2>Book Your Trip</h2>

<div class="subtitle">
Complete your booking details
</div>

<form action="BookingServlet" method="post">

<input
type="hidden"
name="packageId"
value="<%=packageId%>">

<label>
<i class="fa-solid fa-user"></i>
Full Name
</label>

<input
type="text"
name="name"
class="input-box"
placeholder="Enter your full name"
required>

<label>
<i class="fa-solid fa-envelope"></i>
Email Address
</label>

<input
type="email"
name="email"
class="input-box"
placeholder="Enter your email"
required>

<label>
<i class="fa-solid fa-users"></i>
Number of Persons
</label>

<input
type="number"
name="persons"
class="input-box"
placeholder="Enter number of persons"
min="1"
required>

<button type="submit" class="booking-btn">
<i class="fa-solid fa-plane-departure"></i>
Confirm Booking
</button>
</form>

<div class="back">

<a href="ViewPackagesServlet">
<i class="fa-solid fa-arrow-left"></i>
Back to Packages
</a>

</div>

</div>

</body>
</html>