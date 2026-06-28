<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList"%>
<%@ page import="com.travel.model.Package"%>

<%
ArrayList<Package> packageList =
(ArrayList<Package>)request.getAttribute("packageList");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Travel Packages</title>

<style>


*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{

    background:
    linear-gradient(rgba(5,20,45,.45), rgba(5,20,45,.45)),
    url("images/pak1.jpg");

    background-size:cover;
    background-position:center;
    background-repeat:no-repeat;
    background-attachment:fixed;

    min-height:100vh;
    padding:40px;

    position:relative;

}

.container{

    max-width:1400px;
    margin:auto;

}

h1{

    font-size:60px;

    font-weight:900;

    text-align:center;

    color:#FFFFFF;

    margin-bottom:60px;

    letter-spacing:1px;

    text-shadow:
    0 3px 0 #2563EB,
    0 8px 25px rgba(0,0,0,.60),
    0 0 18px rgba(37,99,235,.45);

}
.sub-heading{

text-align:center;

color:#E2E8F0;

font-size:25px;

margin-top:-30px;

margin-bottom:45px;

}

.package-container{

    display:grid;

    grid-template-columns:
    repeat(auto-fit,minmax(400px,1fr));

    gap:40px;

}

.card{

    background:rgba(255,255,255,.95);

    border-radius:24px;

    overflow:hidden;

    position:relative;

    backdrop-filter:blur(10px);

    border:1px solid rgba(255,255,255,.35);

    box-shadow:

0 25px 60px rgba(0,0,0,.28);
    

    transition:.45s ease;

}

.card::before{

    content:"";

    position:absolute;

    top:0;
    left:0;

    width:100%;
    height:3px;

    background:
    linear-gradient(90deg,
    #2563EB,
    #06B6D4,
    #14B8A6);

}

.card:hover{

    transform:
    translateY(-14px)
    scale(1.02);

    box-shadow:
  0 40px 80px rgba(14,165,233,.45);

}

.package-img{

    width:100%;

   height:230px;

    object-fit:cover;

    display:block;

    transition:.6s;
    border-bottom:5px solid #38BDF8;

}


.card:hover .package-img{

    
    transform:scale(1.10);



}

.card-body{

    padding:28px;

    text-align:center;

}

.card-body h2{

    font-size:32px;

    font-weight:800;

    color:#2563EB;

    margin-bottom:15px;

    transition:.35s;

}

.card-body h2::after{

    content:"";

    display:block;

    width:70px;

    height:4px;

    margin:12px auto;

    border-radius:20px;

    background:
    linear-gradient(90deg,#2563EB,#06B6D4);

}

.card:hover h2{

    color:#0891B2;

}

.card-body p{

    font-size:17px;

    color:#475569;

    margin:12px 0;

}

.destination{

    color:#475569;

   font-size:19px;

margin-bottom:12px;
    

}

.destination b{

    color:#2563EB;

}
.price-row{

display:flex;

justify-content:space-between;

align-items:center;

margin:22px 0;

}

.price{

display:inline-block;

padding:12px 22px;

background:linear-gradient(135deg,#2563EB,#06B6D4);

color:#fff;

font-size:24px;

font-weight:700;

border-radius:40px;

box-shadow:0 10px 25px rgba(37,99,235,.35);

}


.days{

padding:12px 22px;

background:#FFF7ED;

color:#8B4513;

font-weight:700;

border-radius:30px;

border:2px solid #F4A460;

box-shadow:0 8px 18px rgba(139,69,19,.18);

}

.description{

margin-top:18px;

line-height:1.8;

font-size:17px;

font-weight:500;

text-align:center;

ccolor:#5B3A29;

min-height:70px;

padding:14px 16px;

background:linear-gradient(135deg,#FFF7E6,#FFE8C7);

border-radius:14px;

border:1px solid #FFD08A;

box-shadow:0 10px 22px rgba(255,166,77,.25);

transition:.35s;

}
.card:hover .description{

background:linear-gradient(135deg,#FFFDF8,#FFEFD5);

box-shadow:0 14px 30px rgba(255,166,77,.35);

transform:translateY(-2px);

}

.book-btn{

display:block;

width:230px;

margin:28px auto 0;

padding:16px;

text-align:center;

text-decoration:none;

color:#fff;

font-size:17px;

font-weight:700;

border-radius:40px;

background:linear-gradient(135deg,#FFB347,#FF8C42);

transition:.35s;

box-shadow:0 15px 35px rgba(37,99,235,.35);

}

.book-btn:hover{

transform:translateY(-4px);

background:linear-gradient(135deg,#FF9A3C,#FF7A18);

box-shadow:0 20px 45px rgba(255,122,24,.45);

}

.back{

text-align:center;

margin-top:60px;

}

.back a{

display:inline-block;

padding:15px 36px;

text-decoration:none;

color:white;

font-weight:700;

border-radius:40px;

background:linear-gradient(135deg,#10B981,#059669);

box-shadow:0 15px 35px rgba(16,185,129,.35);

transition:.35s;

}

.back a:hover{

transform:translateY(-4px);

}

@media(max-width:768px){

.price-row{

flex-direction:column;

gap:15px;

}

.book-btn{

width:100%;

}

}
</style>

</head>

<body>

<div class="container">

<h1>Explore Amazing Travel Packages</h1>
<p class="sub-heading">
Discover breathtaking destinations and book your dream vacation.
</p>


<div class="package-container">
<%
if(packageList != null){

    for(Package p : packageList){
%>

<div class="card">

    <img src="images/<%=p.getImage()%>"
         class="package-img"
         alt="<%=p.getPackageName()%>">

    <div class="card-body">

        <h2><%=p.getPackageName()%></h2>

        <p class="destination">
            📍 <b>Destination :</b> <%=p.getDestination()%>
        </p>

        <div class="price-row">

            <div class="price">
                ₹ <%=p.getPrice()%>
            </div>

            <div class="days">
                🗓 <%=p.getDays()%> Days
            </div>

        </div>

        <p class="description">
            <%=p.getDescription()%>
        </p>

        <%
if(session.getAttribute("userId")==null){
%>

<a href="login.jsp" class="book-btn">
    🔒 Login to Book
</a>

<%
}else{
%>

<a href="booking.jsp?id=<%=p.getId()%>" class="book-btn">
    🌍 Book Now
</a>

<%
}
%>

    </div>

</div>
<%
    }
}
%>

</div>

<div class="back">

    <a href="dashboard.jsp">
        ← Back to Dashboard
    </a>

</div>

</div>

</body>
</html>