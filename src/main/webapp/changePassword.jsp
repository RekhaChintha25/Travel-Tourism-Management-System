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

<title>Change Password</title>
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

    background:rgba(15,23,42,.82);

backdrop-filter:blur(20px);

border:1px solid rgba(255,255,255,.15);

    border-radius:24px;

    padding:45px;

    box-shadow:
    0 20px 50px rgba(0,0,0,.30),
    0 8px 25px rgba(109,40,217,.25);

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

.lock-icon{

width:110px;

height:110px;

margin:auto;

display:flex;

justify-content:center;

align-items:center;

border-radius:50%;

font-size:50px;

background:linear-gradient(135deg,#8B5CF6,#6D28D9);

color:white;

box-shadow:
0 15px 35px rgba(139,92,246,.45);

margin-bottom:25px;

transition:.35s;

}
.lock-icon:hover{

transform:scale(1.08) rotate(8deg);

}

h2{

text-align:center;

font-size:38px;

font-weight:800;

color:white;

margin-bottom:10px;

text-shadow:0 0 18px rgba(168,85,247,.35);

}
.subtitle{

text-align:center;

font-size:16px;

font-weight:600;

color:#C4B5FD;

margin-bottom:35px;

}

label{

display:flex;

align-items:center;

gap:10px;

font-size:17px;

font-weight:700;

color:#F8FAFC;

margin-top:20px;

margin-bottom:10px;

}
label i{

color:#A78BFA;

font-size:18px;

width:22px;

text-align:center;

}

.input-box{

width:100%;

padding:16px;

background:rgba(255,255,255,.08);

border:1px solid rgba(255,255,255,.18);

border-radius:14px;

font-size:16px;

font-weight:600;

color:white;

outline:none;

transition:.35s;

}

.input-box:focus{

background:rgba(168,85,247,.12);

border:1px solid #A855F7;

box-shadow:0 0 18px rgba(168,85,247,.35);

}

.change-btn{

width:100%;

margin-top:30px;

padding:16px;

border:none;

border-radius:14px;

background:linear-gradient(135deg,#8B5CF6,#6D28D9);

color:white;

font-size:18px;

font-weight:700;

cursor:pointer;

transition:.35s;

box-shadow:0 12px 28px rgba(139,92,246,.35);

}

.change-btn:hover{

transform:translateY(-4px);

background:linear-gradient(135deg,#7C3AED,#5B21B6);

box-shadow:0 18px 35px rgba(139,92,246,.45);

}
.change-btn i{

margin-right:8px;

}

.back i{

margin-right:8px;

}

.back a{

display:inline-block;

margin-top:10px;

padding:12px 22px;

border-radius:12px;

text-decoration:none;

font-weight:700;

color:white;

background:linear-gradient(135deg,#FFB347,#FF8C42);

border:1px solid rgba(255,255,255,.15);

transition:.35s;

}

.back a{

text-decoration:none;

font-weight:bold;

color:#7C3AED;

}

.back a:hover{

background:linear-gradient(135deg,#FF9A3C,#FF7A18);

color:white;

transform:translateY(-3px);

box-shadow:0 10px 25px rgba(255,122,24,.40);

}

</style>

</head>

<body>

<div class="container">

<div class="lock-icon">
<i class="fa-solid fa-lock"></i>
</div>>

<h2>Change Password</h2>

<div class="subtitle">
Keep your account secure
</div>
<form action="ChangePasswordServlet" method="post">

<label>
<i class="fa-solid fa-lock"></i>
Old Password
</label>
<input
type="password"
name="oldPassword"
class="input-box"
placeholder="Enter your current password"
required>

<label>
<i class="fa-solid fa-key"></i>
New Password
</label>
<input
type="password"
name="newPassword"
class="input-box"
placeholder="Enter your new password"
required>

<label>
<i class="fa-solid fa-circle-check"></i>
Confirm Password
</label>
<input
type="password"
name="confirmPassword"
class="input-box"
placeholder="Confirm your new password"
required>

<button type="submit" class="change-btn">

<i class="fa-solid fa-rotate"></i>

Change Password

</button>

</form>

<div class="back">

<a href="dashboard.jsp">

<i class="fa-solid fa-arrow-left"></i>

Back to Dashboard

</a>
</div>

</div>

</body>
</html>