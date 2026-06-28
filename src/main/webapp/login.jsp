<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>
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
.login-card{

width:450px;

padding:45px;

background:rgba(255,255,255,.97);

border-radius:28px;

border:1px solid rgba(255,255,255,.75);

box-shadow:

0 35px 80px rgba(0,0,0,.35),

0 15px 35px rgba(0,0,0,.15),

0 0 45px rgba(59,130,246,.18);

transition:.4s;

animation:fadeIn .8s;

}
.login-card:hover{

transform:translateY(-6px);

box-shadow:

0 45px 90px rgba(0,0,0,.38),

0 20px 40px rgba(0,0,0,.18),

0 0 55px rgba(59,130,246,.22);

}
@keyframes fadeIn{

from{

opacity:0;
transform:translateY(30px);

}

to{

opacity:1;
transform:translateY(0);

}

}

.logo{

width:95px;
height:95px;

margin:0 auto 22px;

border-radius:50%;

display:flex;
justify-content:center;
align-items:center;

background:linear-gradient(135deg,#22C55E,#16A34A);

border:4px solid #FFFFFF;

box-shadow:

0 0 0 6px rgba(59,130,246,.25),

0 0 25px rgba(59,130,246,.45),

0 15px 35px rgba(0,0,0,.30);

}
.title{

text-align:center;

font-size:43px;

font-weight:800;

color:#1E40AF;

margin-bottom:15px;

letter-spacing:1px;

text-shadow:

0 3px 0 #FFFFFF,

3px 3px 8px rgba(0,0,0,.28),

0 0 18px rgba(59,130,246,.40);

}
.subtitle{

text-align:center;

font-size:18px;

font-weight:500;

color:#F4A460;

margin-bottom:32px;

text-shadow:

2px 2px 6px rgba(0,0,0,.15),

0 0 12px rgba(124,58,237,.35);

}

label{

display:flex;

align-items:center;

gap:10px;

font-size:15px;

font-weight:700;

color:#334155;

margin-bottom:8px;

}

label i{

color:#2563EB;

font-size:16px;

width:20px;

}

.input-box{

width:100%;

padding:16px;

border:3px solid #D1FAE5;

border-radius:14px;

background:#F8FAFC;

font-size:16px;

margin-bottom:22px;

box-shadow:

0 8px 20px rgba(59,130,246,.10);

transition:.35s;

outline:none;

}
.register{

margin-top:30px;

text-align:center;

}

.register hr{

border:none;

height:1px;

background:#E5E7EB;

margin-bottom:20px;

}

.register p{

font-size:17px;

color:#64748B;

}

.input-box:focus{

background:#FFFFFF;

border:3px solid #22C55E;

box-shadow:

0 0 0 5px rgba(34,197,94,.20),

0 0 20px rgba(34,197,94,.35),

0 10px 25px rgba(34,197,94,.18);

transform:translateY(-2px);

outline:none;

}

.input-box::placeholder{

    color:#94A3B8;

}

.login-btn{

width:100%;

padding:14px;
font-size:18px;

border:none;

border-radius:14px;

background:linear-gradient(135deg,#22C55E,#16A34A);

box-shadow:
0 12px 28px rgba(34,197,94,.35);

color:white;



font-weight:700;

cursor:pointer;

transition:.35s;



}
.login-btn:hover{

transform:translateY(-4px);

box-shadow:
0 20px 35px rgba(34,197,94,.45);

}
.logo i{

font-size:42px;

color: #FFF8E1;

}


.divider{

display:flex;

align-items:center;

justify-content:center;

gap:12px;

margin-bottom:30px;

}

.divider span{

width:90px;

height:2px;

background:#D6E4FF;

}

.divider i{

color:#2563EB;

font-size:12px;

}

.register{

    text-align:center;

    margin-top:25px;

    color:#64748B;

    font-size:15px;

}

.register a{

    color:#2563EB;

    text-decoration:none;

    font-weight:bold;

}

.register a:hover{

    text-decoration:underline;

    color:#1D4ED8;

}

</style>

</head>

<body>

<div class="login-card">

<div class="logo">
<i class="fa-solid fa-plane-departure"></i>
</div>

<div class="title">
Welcome Back
</div>

<div class="subtitle">
Login to continue your journey
</div>
<div class="divider">
<span></span>
<i class="fa-solid fa-diamond"></i>
<span></span>
</div>

<form action="LoginServlet" method="post">

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
<i class="fa-solid fa-lock"></i>
Password
</label>

<input
type="password"
name="password"
class="input-box"
placeholder="Enter your password"
required>

<button type="submit" class="login-btn">
<i class="fa-solid fa-right-to-bracket"></i>
&nbsp; Login
</button>

</form>

<div class="register">

<hr>

<p>New User?
<a href="register.jsp">
Create Account
</a>
</p>

</div>

</div>


</body>
</html>