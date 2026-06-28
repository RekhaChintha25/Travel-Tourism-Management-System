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

<title>Admin Dashboard</title>

<style>

*{

margin:0;
padding:0;
box-sizing:border-box;
font-family:'Segoe UI',sans-serif;

}

body{

    min-height:100vh;

    background:
    linear-gradient(rgba(5,20,45,.35),rgba(5,20,45,.35)),
    url("images/common-bg.jpg");

    background-size:cover;
    background-position:center;
    background-repeat:no-repeat;
    background-attachment:fixed;

}

.container{

max-width:1400px;

margin:auto;

}

.header{

background:white;

padding:30px;

border-radius:22px;

text-align:center;

box-shadow:0 20px 40px rgba(0,0,0,.25);

margin-bottom:40px;

}

.header h1{

font-size:42px;

color:#1E3A8A;

margin-bottom:10px;

}

.header p{

font-size:18px;

color:#64748B;

}

.cards{

display:grid;

grid-template-columns:repeat(auto-fit,minmax(260px,1fr));

gap:30px;

}

.card{

background:white;

border-radius:20px;

padding:35px;

text-align:center;

text-decoration:none;

color:#1E293B;

transition:.35s;

box-shadow:0 15px 35px rgba(0,0,0,.18);

}

.card:hover{

transform:translateY(-10px);

box-shadow:0 25px 45px rgba(0,0,0,.30);

}

.icon{

font-size:60px;

margin-bottom:20px;

}

.card h2{

font-size:30px;

margin-bottom:12px;

}

.card p{

color:#64748B;

line-height:28px;

}
.logout{

display:inline-block;

margin-top:35px;

padding:14px 28px;

background:#EF4444;

color:white;

text-decoration:none;

font-weight:700;

border-radius:12px;

transition:.35s;

}

.logout:hover{

background:#DC2626;

transform:translateY(-3px);

}

</style>

</head>

<body>

<div class="container">

<div class="header">

<h1>🛠️ Admin Dashboard</h1>

<p>

Manage travel packages, bookings and users from one place.

</p>

</div>

<div class="cards">

<a href="addPackage.jsp" class="card">

<div class="icon">➕</div>

<h2>Add Package</h2>

<p>

Create and publish new travel packages.

</p>

</a>

<a href="adminPackages.jsp" class="card">

<div class="icon">🌍</div>

<h2>Manage Packages</h2>

<p>

View, edit and delete travel packages.

</p>

</a>

<a href="ViewBookingsServlet" class="card">

<div class="icon">📖</div>

<h2>Bookings</h2>

<p>

View all customer bookings and details.

</p>

</a>
<a href="AdminUsersServlet" class="card">

<div class="icon">👥</div>

<h2>Manage Users</h2>

<p>

View all registered users and manage accounts.

</p>

</a>

</div>

<div style="text-align:center;">

<a href="AdminLogoutServlet" class="logout">

🚪 Logout

</a>

</div>

</div>

</body>

</html>