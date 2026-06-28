<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Admin Login</title>

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

width:430px;

background:white;

padding:45px;

border-radius:24px;

box-shadow:
0 20px 50px rgba(0,0,0,.35),
0 10px 25px rgba(59,130,246,.25);

animation:fadeIn .8s ease;

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

width:90px;
height:90px;

margin:auto;

display:flex;
justify-content:center;
align-items:center;

border-radius:50%;

background:linear-gradient(135deg,#2563EB,#1D4ED8);

font-size:42px;

color:white;

box-shadow:0 12px 30px rgba(37,99,235,.35);

margin-bottom:22px;

}

.title{

text-align:center;

font-size:34px;

font-weight:800;

color:#1E3A8A;

margin-bottom:10px;

}

.subtitle{

text-align:center;

font-size:17px;

color:#64748B;

margin-bottom:30px;

}

label{

display:block;

font-weight:600;

color:#334155;

margin-bottom:8px;

margin-top:16px;

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

border-color:#2563EB;

box-shadow:0 0 15px rgba(37,99,235,.25);

}
.login-btn{

width:100%;

margin-top:28px;

padding:15px;

border:none;

border-radius:12px;

background:linear-gradient(135deg,#2563EB,#0EA5E9);

color:white;

font-size:17px;

font-weight:700;

cursor:pointer;

transition:.35s;

}

.login-btn:hover{

transform:translateY(-3px);

box-shadow:0 15px 30px rgba(37,99,235,.35);

}

.footer{

text-align:center;

margin-top:22px;

font-size:14px;

color:#64748B;

}

.footer a{

color:#2563EB;

text-decoration:none;

font-weight:600;

}

.footer a:hover{

text-decoration:underline;

}

</style>

</head>

<body>

<div class="login-card">

<div class="logo">🔒</div>

<div class="title">
Admin Login
</div>

<div class="subtitle">
Sign in to manage the Travel & Tourism System
</div>

<form action="AdminLoginServlet" method="post">

<label>Email Address</label>

<input
type="email"
name="email"
class="input-box"
placeholder="Enter admin email"
required>

<label>Password</label>

<input
type="password"
name="password"
class="input-box"
placeholder="Enter password"
required>

<button type="submit" class="login-btn">
🔐 Login
</button>

</form>

<div class="footer">

Back to
<a href="index.jsp">Home</a>

</div>

</div>

</body>

</html>