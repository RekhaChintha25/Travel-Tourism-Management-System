<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Travel & Tourism Management System</title>

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
linear-gradient(rgba(5,10,20,.50),rgba(5,10,20,.50)),
url("images/road.jpg");

background-size:cover;
background-position:center;
background-repeat:no-repeat;
background-attachment:fixed;
overflow-x:hidden;
}

.hero{

    width:900px;

    padding:65px 60px;

    text-align:center;

    border-radius:30px;

    background:rgba(18,28,45,.40);

    backdrop-filter:blur(20px);
    -webkit-backdrop-filter:blur(20px);

    border:1px solid rgba(255,255,255,.15);

    box-shadow:
0 25px 60px rgba(0,0,0,.45);

}

.hero:hover{

transform:translateY(-8px) scale(1.01);
box-shadow:
0 35px 80px rgba(0,0,0,.55);

}

.logo{

display:flex;

justify-content:center;

align-items:center;

gap:15px;

margin-bottom:18px;

position:relative;

}
.globe{

font-size:105px;

filter:

drop-shadow(0 10px 18px rgba(0,0,0,.40))

drop-shadow(0 0 15px rgba(34,197,94,.30));

animation:rotateGlobe 8s linear infinite;

}

.plane{

font-size:70px;

margin-top:-35px;

margin-left:-22px;

position:relative;

animation:flyPlane 5s linear infinite;

filter:drop-shadow(0 6px 12px rgba(0,0,0,.35));

}
@keyframes rotateGlobe{

from{

transform:rotate(0deg);

}

to{

transform:rotate(360deg);

}

}

.hero h1{

font-size:72px;

font-weight:900;

color:#FFFFFF;

line-height:78px;

margin-bottom:18px;

letter-spacing:1px;

text-shadow:

4px 4px 12px rgba(0,0,0,.60),

0 0 20px rgba(255,255,255,.20);

}

.hero p{

width:82%;

margin:auto;

font-size:22px;

font-weight:700;

color:#E2E8F0;

line-height:38px;

margin-bottom:45px;

letter-spacing:.5px;

text-shadow:

3px 3px 8px rgba(0,0,0,.70),

0 0 15px rgba(125,211,252,.30);

}
.buttons{

    display:flex;

    justify-content:center;

    gap:25px;

    flex-wrap:wrap;

}

.btn{

width:220px;

height:60px;

display:flex;

justify-content:center;

align-items:center;

text-decoration:none;

color:white;

font-size:19px;

font-weight:800;

border-radius:18px;

transition:.35s;

letter-spacing:.5px;

box-shadow:
0 10px 25px rgba(0,0,0,.30);

}

.login{

    background:linear-gradient(135deg,#3B82F6,#1D4ED8);

}

.register{

    background:linear-gradient(135deg,#22C55E,#16A34A);

}

.explore{

    background:linear-gradient(135deg,#F97316,#EA580C);

}

.btn:hover{

transform:translateY(-6px) scale(1.05);

box-shadow:

0 18px 40px rgba(0,0,0,.40);

}
.badge{

display:inline-flex;

align-items:center;

justify-content:center;

gap:10px;

margin-bottom:30px;

padding:14px 32px;

background:linear-gradient(135deg,#7C3F00,#B45309,#F59E0B);

color:#F0FFFF;

font-size:22px;

font-weight:900;

letter-spacing:1.5px;

border-radius:40px;

border:3px solid #FFD700;

box-shadow:

0 0 15px rgba(255,215,0,.70),

0 0 30px rgba(255,215,0,.45),

0 12px 25px rgba(139,69,19,.45);

text-shadow:

2px 2px 5px rgba(0,0,0,.60);

transition:.35s;

}

@media(max-width:950px){

.hero{

    width:90%;

    padding:45px 30px;

}

.hero h1{

font-size:66px;

font-weight:900;

line-height:78px;

margin-bottom:22px;

letter-spacing:1px;

color:#FFFFFF;

text-shadow:

4px 4px 12px rgba(0,0,0,.55),

0 0 20px rgba(255,255,255,.20);

}

.hero p{

    width:100%;

    font-size:18px;

}

.logo{

    font-size:65px;

}

.buttons{

    flex-direction:column;

}

.btn{

    width:100%;

}


}
@keyframes flyPlane{

0%{
transform:translateX(0px) translateY(0px) rotate(-10deg);
}

25%{
transform:translateX(20px) translateY(-10px) rotate(-5deg);
}

50%{
transform:translateX(40px) translateY(-20px) rotate(0deg);
}

75%{
transform:translateX(60px) translateY(-30px) rotate(5deg);
}

100%{
transform:translateX(80px) translateY(-40px) rotate(10deg);
}

}
</style>

</head>

<body>

<div class="hero">

<div class="logo">

<div class="globe">
🌍
</div>

<div class="plane">
✈️
</div>

</div>

<div class="badge">
🌍 EXPLORE INDIA
</div>

<h1>Travel & Tourism Management System</h1>

<p>

Explore breathtaking destinations, book amazing travel packages,
and create unforgettable memories with ease.

</p>

<div class="buttons">
<a href="login.jsp" class="btn login">
🔐 Login
</a>

<a href="register.jsp" class="btn register">
📝 Register
</a>

<a href="ViewPackagesServlet" class="btn explore">
🌍 Explore Packages
</a>

</div>

</div>

</body>
</html>