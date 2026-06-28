<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>User Registration</title>
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

.register-card{

width:500px;

background:rgba(255,255,255,.97);

border-radius:28px;

padding:45px;

border:1px solid rgba(255,255,255,.65);

box-shadow:

0 35px 80px rgba(0,0,0,.35),

0 15px 30px rgba(0,0,0,.18);

backdrop-filter:blur(8px);

animation:fadeIn .7s ease;

transition:.4s;

}
.register-card:hover{

transform:translateY(-5px);

box-shadow:

0 45px 90px rgba(0,0,0,.40),

0 18px 35px rgba(0,0,0,.20);

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

background:linear-gradient(135deg,#FFA726,#EF6C00);

border:4px solid #FFFFFF;

box-shadow:
0 0 0 6px rgba(255,167,38,.25),
0 0 25px rgba(255,167,38,.45),
0 15px 35px rgba(0,0,0,.30);

}
.logo i{

font-size:30px;
color:white;

}
.logo:hover{

transform:scale(1.08) rotate(8deg);

}

.title{

text-align:center;

font-size:48px;

font-weight:900;

color:#4682B4;

text-shadow:
0 2px 0 #FFF,
2px 2px 6px rgba(0,0,0,.20),
0 0 12px rgba(109,76,65,.25);
transition:.3s;



margin-bottom:10px;

letter-spacing:1px;




}

.subtitle{

text-align:center;

font-size:16px;

font-weight:600;

color:#778899;

margin-bottom:35px;

letter-spacing:.5px;

text-shadow:

1px 2px 6px rgba(255,255,255,.80);

}

label{

display:flex;

align-items:center;

gap:10px;

font-size:16px;

font-weight:700;

margin-bottom:10px;

color:#2F4F4F;

}

label i{

color:#10B981;

font-size:18px;

width:22px;

text-align:center;

}

.input-box{

width:100%;

padding:14px 16px;

border:2px solid #E2E8F0;

border-radius:10px;

font-size:15px;

margin-bottom:18px;

outline:none;

transition:.3s;

}
.input-box::placeholder{

    color:#94A3B8;

}

.input-box:focus{

border:3px solid #8B4513;

box-shadow:

0 0 20px rgba(139,69,19,.70),

0 0 35px rgba(160,82,45,.45);

}
.register-btn{

    width:100%;

    padding:15px;

    border:none;

    border-radius:10px;

    background:linear-gradient(135deg,#10B981,#22C55E);

    color:white;

    font-size:17px;

    font-weight:700;

    cursor:pointer;

    transition:.3s;

}

.register-btn:hover{

    transform:translateY(-2px);

    box-shadow:0 12px 25px rgba(16,185,129,.35);

}

.login{

    text-align:center;

    margin-top:25px;

    color:#64748B;

    font-size:15px;

}

.login a{

    color:#10B981;

    text-decoration:none;

    font-weight:700;

}

.login a:hover{

    text-decoration:underline;

}

</style>

</head>

<body>

<div class="register-card">

<div class="logo">
    <i class="fa-solid fa-user-plus"></i>
</div>

<div class="title">
Create Account
</div>

<div class="subtitle">
Start your next journey with us
</div>

<form action="register" method="post">

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
<i class="fa-solid fa-phone"></i>
Phone Number
</label>
<input
type="text"
name="phone"
class="input-box"
placeholder="Enter your phone number"
required>

<label>
<i class="fa-solid fa-lock"></i>
Password
</label>
<input
type="password"
name="password"
class="input-box"
placeholder="Create a password"
required>

<input
type="submit"
value="Create Account"
class="register-btn">

</form>

<div class="login">

Already have an account?
<a href="login.jsp">
Login
</a>

</div>

</div>

</body>
</html>