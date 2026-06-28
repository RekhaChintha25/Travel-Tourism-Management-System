<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%
if(session.getAttribute("adminId")==null){
    response.sendRedirect("adminLogin.jsp");
    return;
}
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Add Package</title>

<style>

*{

margin:0;
padding:0;1
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

width:550px;

background:white;

border-radius:24px;

padding:45px;

box-shadow:
0 20px 50px rgba(0,0,0,.28),
0 10px 25px rgba(20,184,166,.25);

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

.logo{

width:90px;
height:90px;

margin:auto;

display:flex;
justify-content:center;
align-items:center;

border-radius:50%;

background:linear-gradient(135deg,#14B8A6,#0F766E);

font-size:42px;

color:white;

box-shadow:0 12px 30px rgba(20,184,166,.35);

margin-bottom:20px;

}

.title{

text-align:center;

font-size:34px;

font-weight:800;

color:#0F766E;

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

margin-top:16px;

margin-bottom:8px;

color:#334155;

}

.input-box,
textarea{

width:100%;

padding:15px;

border:2px solid #E2E8F0;

border-radius:12px;

font-size:16px;

outline:none;

transition:.3s;

}

textarea{

height:120px;

resize:none;

}

.input-box:focus,
textarea:focus{

border-color:#14B8A6;

box-shadow:0 0 15px rgba(20,184,166,.25);

}
.add-btn{

width:100%;

margin-top:30px;

padding:15px;

border:none;

border-radius:12px;

background:linear-gradient(135deg,#14B8A6,#0F766E);

color:white;

font-size:17px;

font-weight:700;

cursor:pointer;

transition:.35s;

}

.add-btn:hover{

transform:translateY(-3px);

box-shadow:0 15px 30px rgba(20,184,166,.35);

}

.back{

text-align:center;

margin-top:25px;

}

.back a{

text-decoration:none;

font-weight:700;

color:#0F766E;

}

.back a:hover{

text-decoration:underline;

}

</style>

</head>

<body>

<div class="container">

<div class="logo">🌍</div>

<div class="title">
Add Travel Package
</div>

<div class="subtitle">
Create a new travel package for customers
</div>

<form action="AddPackageServlet" method="post">

<label>Package Name</label>

<input
type="text"
name="packageName"
class="input-box"
placeholder="Enter package name"
required>

<label>Location</label>

<input
type="text"
name="location"
class="input-box"
placeholder="Enter destination"
required>

<label>Price (₹)</label>

<input
type="number"
name="price"
class="input-box"
placeholder="Enter package price"
required>

<label>Number of Days</label>

<input
type="number"
name="days"
class="input-box"
placeholder="Enter trip duration"
required>

<label>Description</label>

<textarea
name="description"
placeholder="Write package description..."
required></textarea>

<input
type="submit"
value="➕ Add Package"
class="add-btn">

</form>

<div class="back">

<a href="adminDashboard.jsp">
⬅ Back to Dashboard
</a>

</div>

</div>

</body>
</html>