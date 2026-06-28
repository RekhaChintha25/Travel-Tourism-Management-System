<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String bookingId=request.getParameter("bookingId");
String amount=request.getParameter("amount");

if(bookingId==null){
    bookingId="";
}

if(amount==null){
    amount="";
}
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Secure Payment</title>
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

    width:500px;

    background:rgba(255,255,255,.96);
    backdrop-filter:blur(12px);

border:2px solid rgba(255,255,255,.70);

    border-radius:24px;

    padding:45px;

    box-shadow:
0 30px 70px rgba(0,0,0,.35),
0 0 35px rgba(16,185,129,.25);

    animation:fadeIn .8s ease;

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

.payment-icon{

width:100px;
height:100px;

margin:auto;

display:flex;
justify-content:center;
align-items:center;

border-radius:50%;

background:linear-gradient(135deg,#10B981,#059669);
border:4px solid #FFFFFF;

box-shadow:
0 0 0 6px rgba(16,185,129,.20),
0 0 30px rgba(16,185,129,.35),
0 15px 35px rgba(0,0,0,.25);

font-size:46px;

color:white;

box-shadow:0 12px 30px rgba(16,185,129,.35);

margin-bottom:20px;

}
.payment-icon i{

    font-size:46px;

    color:white;

}

h2{

text-align:center;

font-size:42px;

font-weight:900;

color:#1D4ED8;

letter-spacing:1px;

margin-bottom:12px;

text-shadow:
2px 2px 0 #FFFFFF,
4px 4px 10px rgba(0,0,0,.60),
0 0 15px rgba(245,158,11,.45);

}
.subtitle{

text-align:center;

font-size:18px;

font-weight:600;

color:#2563EB;


letter-spacing:.5px;

margin-bottom:35px;

text-shadow:
1px 1px 3px rgba(255,255,255,.70),
2px 2px 6px rgba(0,0,0,.25);

}

label{

display:block;

font-weight:600;

color:#334155;

margin-top:18px;

margin-bottom:8px;

}

.input-box{

width:100%;

padding:15px;

border:2px solid #E2E8F0;

border-radius:12px;

font-size:16px;

outline:none;

transition:.3s;

}

.input-box:focus{

border-color:#10B981;

box-shadow:0 0 15px rgba(16,185,129,.25);

}
.pay-btn{

    width:100%;

    margin-top:30px;

    padding:15px;

    border:none;

    border-radius:12px;

    background:linear-gradient(135deg,#10B981,#059669);

    color:white;

    font-size:17px;

    font-weight:bold;

    cursor:pointer;

    transition:.35s;

}

.pay-btn:hover{

    transform:translateY(-3px);

    box-shadow:0 12px 30px rgba(16,185,129,.35);

}

.back{

    text-align:center;

    margin-top:25px;

}

.back a{

    text-decoration:none;

    color:#059669;

    font-weight:bold;

}

.back a:hover{

    text-decoration:underline;

}

</style>

</head>

<body>

<div class="container">

<div class="payment-icon">
    <i class="fa-solid fa-credit-card"></i>
</div>

<h2>Secure Payment</h2>

<div class="subtitle">
Complete your payment safely
</div>

<form action="PaymentServlet" method="post">

<input
type="hidden"
name="bookingId"
value="<%=bookingId%>">

<label>Card Holder Name</label>

<input
type="text"
name="cardName"
class="input-box"
placeholder="Enter card holder name"
required>

<label>Card Number</label>

<input
type="text"
name="cardNumber"
class="input-box"
placeholder="1234 5678 9012 3456"
maxlength="16"
required>

<label>Amount</label>

<input
type="text"
name="amount"
class="input-box"
value="<%=amount%>"
readonly>

<input
type="submit"
value="Pay Now"
class="pay-btn">

</form>

<div class="back">

<a href="bookingHistory.jsp">
⬅ Back
</a>

</div>

</div>

</body>
</html>