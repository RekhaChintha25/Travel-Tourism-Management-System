<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
if(session.getAttribute("userId")==null){
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Travel & Tourism</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

html{
scroll-behavior:smooth;
}

body{

background:
linear-gradient(rgba(8,20,40,.55),rgba(8,20,40,.55)),
url("images/common-bg.jpg");

background-size:cover;
background-position:center;
background-repeat:no-repeat;
background-attachment:fixed;

min-height:100vh;

display:flex;
flex-direction:column;

color:white;

}

/* ===========================
HEADER
=========================== */

header{

height:100px;



display:flex;
justify-content:space-between;
align-items:center;

padding:0 80px;

background:rgba(10,20,35,.85);

backdrop-filter:blur(18px);

border-bottom:1px solid rgba(255,255,255,.08);

position:sticky;

top:0;

z-index:1000;

}

/* LOGO */

.logo{

display:flex;

align-items:center;

gap:14px;

}

.logo i{

font-size:42px;

color:#FFA726;

}

.logo h2{

font-size:38px;

font-weight:800;

letter-spacing:1px;

}

/* NAVIGATION */

nav{

display:flex;

align-items:center;

gap:35px;

}

nav a{

text-decoration:none;

color:white;

font-size:18px;

font-weight:600;

transition:.35s;

position:relative;
padding:12px 18px;
border-radius:30px;

}

nav a:hover{

color:#FFA726;
background:rgba(255,167,38,.12);

}

/* Active Home Menu */

/* Active Menu */

nav a.active{

    color:#FFA726;
    background:rgba(255,167,38,.12);

}


/* USER DROPDOWN */

.user-menu{

position:relative;

}

.user-btn{

display:flex;

align-items:center;

gap:10px;

padding:15px 28px;

border-radius:40px;

background:rgba(255,255,255,.08);

cursor:pointer;

transition:.3s;

}

.user-btn:hover{

background:rgba(255,255,255,.15);

}

.user-btn i{

font-size:18px;

}

.user-btn span{

font-size:17px;
font-weight:700;

}

.dropdown{

position:absolute;

top:70px;

right:0;

width:219px;

background:#16263F;

border-radius:15px;

overflow:hidden;

box-shadow:0 20px 40px rgba(0,0,0,.45);

opacity:0;

visibility:hidden;

transform:translateY(10px);

transition:all .3s ease;

}
#arrow{

transition:.3s;

}

#arrow.rotate{

transform:rotate(180deg);

}

.dropdown.active{

opacity:1;

visibility:visible;

transform:translateY(0);

}
.dropdown a{

display:flex;
align-items:center;
gap:12px;
padding:15px 20px;
text-decoration:none;
color:white;
font-size:16px;
font-weight:500;
transition:.3s;

}

.dropdown a:hover{

background:#203A5D;

color:#FFA726;

}



/* ===========================
HERO
=========================== */

.hero{

  height:400px;

display:flex;

flex-direction:column;

padding:40px 20px 0;
justify-content:flex-start;

align-items:center;

text-align:center;



}

.hero h1{

font-size:60px;

font-weight:800;

letter-spacing:1px;

text-shadow:0 8px 30px rgba(0,0,0,.45);

}

.hero p{

margin-top:18px;

margin-top:12px;
 font-size:18px;

font-weight:300;

max-width:700px;

line-height:34px;

color:#ECEFF1;

}

.hero-btn{

margin-top:25px;

padding:16px 40px;

background:linear-gradient(135deg,#FFA726,#FB8C00);

color:white;

text-decoration:none;

border-radius:40px;

font-weight:600;

font-size:17px;

transition:.35s;

}

.hero-btn:hover{

transform:translateY(-5px);

box-shadow:0 15px 35px rgba(255,167,38,.45);

}
/* ===========================
MAIN OPTIONS
=========================== */

.options{

display:flex;

justify-content:center;

align-items:center;

gap:35px;

flex-wrap:wrap;

padding:0 40px 60px;
margin-top:-40px;

}

.option-card{

width:370px;

background:rgba(255,255,255,.08);

backdrop-filter:blur(18px);

border:1px solid rgba(255,255,255,.10);

border-radius:22px;

padding:40px;

text-align:center;

cursor:pointer;

transition:.35s;

box-shadow:
0 20px 45px rgba(0,0,0,.25);

}

.option-card:hover{

transform:translateY(-10px);

background:rgba(255,255,255,.14);

box-shadow:
0 30px 60px rgba(0,0,0,.35);

}

.option-card i{

font-size:55px;

color:#FFA726;

margin-bottom:22px;

}

.option-card h3{

font-size:28px;

font-weight:700;

margin-bottom:14px;

}

.option-card p{

font-size:16px;

line-height:30px;

color:#ECEFF1;

}

/* ===========================
FOOTER
=========================== */

/* ==========================
FOOTER
========================== */

footer{

background:#0B1628;

padding:18px 0;

text-align:center;

border-top:1px solid rgba(255,255,255,.08);

margin-top:30px;

}

footer p{

font-size:15px;

font-weight:500;

color:#DCE3EA;

letter-spacing:.5px;

}
</style>

</head>

<body>
<!-- ===========================
HEADER
=========================== -->

<header>

    <div class="logo">
        <i class="fa-solid fa-earth-asia"></i>
        <h2>Travel & Tourism</h2>
    </div>

    <nav>

    <a href="dashboard.jsp" class="active">Home</a>

    <a href="ViewPackagesServlet">Explore Tours</a>

    <a href="bookingHistory.jsp">My Trips</a>

</nav>

    <div class="user-menu">

        <div class="user-btn" id="userBtn">

            <i class="fa-solid fa-circle-user"></i>

            <span>My Account</span>

        <i class="fa-solid fa-angle-down" id="arrow"></i>

        </div>

     <div class="dropdown" id="dropdownMenu">

            <a href="profile.jsp">
                <i class="fa-solid fa-user"></i>
                My Profile
            </a>

            <a href="changePassword.jsp">
                <i class="fa-solid fa-lock"></i>
                Change Password
            </a>

            <a href="LogoutServlet">
                <i class="fa-solid fa-right-from-bracket"></i>
                Logout
            </a>

        </div>

    </div>

</header>

<!-- ===========================
HERO
=========================== -->

<section class="hero">

    <h1>Explore Incredible Destinations</h1>

    <p>
        Discover beautiful places, book premium travel packages and create unforgettable memories with your family and friends.
    </p>

    <a href="ViewPackagesServlet" class="hero-btn">
        <i class="fa-solid fa-paper-plane"></i>
        Explore Tours
    </a>

</section>

<!-- ===========================
MAIN OPTIONS
=========================== -->

<section class="options">

    <div class="option-card"
         onclick="location.href='ViewPackagesServlet'">

        <i class="fa-solid fa-map-location-dot"></i>

        <h3>Explore Tours</h3>

        <p>
            Browse exciting destinations and travel packages.
        </p>

    </div>

    <div class="option-card"
         onclick="location.href='bookingHistory.jsp'">

        <i class="fa-solid fa-suitcase-rolling"></i>

        <h3>My Trips</h3>

        <p>
            View your booking history and upcoming journeys.
        </p>

    </div>

</section>
<!-- FOOTER -->
<footer>

<p>
© 2026 Travel & Tourism Management System | All Rights Reserved
</p>

</footer>
<script>

const userBtn = document.getElementById("userBtn");
const dropdown = document.getElementById("dropdownMenu");
const arrow = document.getElementById("arrow");

userBtn.addEventListener("click", function(e){

    e.stopPropagation();

    dropdown.classList.toggle("active");
    arrow.classList.toggle("rotate");

});

document.addEventListener("click", function(){

    dropdown.classList.remove("active");
    arrow.classList.remove("rotate");

});

</script>

</body>
</html>