<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Payment Successful</title>
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
linear-gradient(rgba(5,20,45,.35),rgba(5,20,45,.35)),
url("images/common-bg.jpg");

background-size:cover;
background-position:center;
background-repeat:no-repeat;
background-attachment:fixed;

padding:40px;

}

.container{

width:520px;

background:rgba(255,255,255,.96);

backdrop-filter:blur(12px);
border:2px solid rgba(255,255,255,.75);

border-radius:28px;

padding:50px;

text-align:center;

box-shadow:
0 35px 80px rgba(0,0,0,.35),
0 0 35px rgba(16,185,129,.25);,129,.25);

animation:pop .8s ease;

}

@keyframes pop{

from{

opacity:0;
transform:scale(.85);

}

to{

opacity:1;
transform:scale(1);

}

}

.success{

width:120px;
height:120px;

margin:auto;

border-radius:50%;
border:4px solid #FFFFFF;

display:flex;
justify-content:center;
align-items:center;

background:linear-gradient(135deg,#10B981,#22C55E);

font-size:55px;

color:white;

box-shadow:
0 0 0 6px rgba(16,185,129,.20),
0 0 30px rgba(16,185,129,.35),
0 15px 35px rgba(0,0,0,.25);

margin-bottom:30px;

}

h1{

text-align:center;

font-size:39px;

font-weight:900;

color:#F59E0B;

letter-spacing:1px;

margin-bottom:18px;

text-shadow:
2px 2px 0 #FFFFFF,
5px 5px 10px rgba(0,0,0,.35),
0 0 18px rgba(245,158,11,.35);

}
.message{

text-align:center;

font-size:15px;

font-weight:600;

line-height:34px;

color:#2563EB;

letter-spacing:.5px;

margin-bottom:40px;

text-shadow:
1px 1px 4px rgba(255,255,255,.70),
2px 2px 6px rgba(0,0,0,.20);

}
.success-btn{

display:block;

width:80%;

margin:15px auto;

padding:18px;

border-radius:16px;

text-decoration:none;

font-size:18px;

font-weight:800;

color:white;

text-align:center;

transition:.35s;
display:flex;
justify-content:center;
align-items:center;
gap:10px;

}
.booking-btn{

background:linear-gradient(135deg,#16A34A,#22C55E);

box-shadow:
0 12px 28px rgba(22,163,74,.35),
0 0 20px rgba(34,197,94,.25);

}

.booking-btn:hover{

transform:translateY(-4px) scale(1.02);

box-shadow:
0 20px 40px rgba(22,163,74,.45),
0 0 25px rgba(34,197,94,.35);

}

.dashboard-btn{

background:linear-gradient(135deg,#2563EB,#1D4ED8);

box-shadow:
0 12px 28px rgba(37,99,235,.35),
0 0 20px rgba(37,99,235,.25);

}

.dashboard-btn:hover{

transform:translateY(-4px) scale(1.02);

box-shadow:
0 20px 40px rgba(37,99,235,.45),
0 0 25px rgba(37,99,235,.35);

}

.footer{

    margin-top:35px;

    color:#64748B;

    font-size:15px;

}

</style>

</head>

<body>

<div class="container">

<div class="success">
✅
</div>

<h1>Payment Successful!</h1>

<div class="message">

Your payment has been processed successfully.<br>
Your travel booking is now confirmed. 🎉

</div>

<a href="bookingHistory.jsp" class="success-btn booking-btn">
<i class="fa-solid fa-book-open"></i>
&nbsp; View My Bookings
</a>

<a href="dashboard.jsp" class="success-btn dashboard-btn">
<i class="fa-solid fa-house"></i>
&nbsp; Back to Dashboard
</a>

<div class="footer">

Thank you for choosing our Travel & Tourism Management System.<br>
We wish you a safe and happy journey! ✈️

</div>

</div>

</body>
</html>
