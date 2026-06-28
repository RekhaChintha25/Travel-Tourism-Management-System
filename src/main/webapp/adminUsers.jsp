<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList"%>
<%@ page import="com.travel.model.User"%>

<%
if(session.getAttribute("adminId")==null){
    response.sendRedirect("adminLogin.jsp");
    return;
}
%>
<%
ArrayList<User> users =
(ArrayList<User>)request.getAttribute("users");
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Manage Users</title>

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

margin-bottom:30px;

box-shadow:0 15px 40px rgba(0,0,0,.25);

}

.header h2{

font-size:36px;

color:#1E3A8A;

margin-bottom:10px;

}

.header p{

font-size:17px;

color:#64748B;

}

table{

width:100%;

border-collapse:collapse;

background:white;

border-radius:20px;

overflow:hidden;

box-shadow:0 15px 40px rgba(0,0,0,.20);

}

th{

background:#1E3A8A;

color:white;

padding:18px;

}

td{

padding:16px;

text-align:center;

border-bottom:1px solid #E2E8F0;

}

tr:hover{

background:#EFF6FF;

}

.deleteBtn{

display:inline-block;

padding:10px 18px;

background:#EF4444;

color:white;

text-decoration:none;

border-radius:10px;

font-weight:bold;

}

.deleteBtn:hover{

background:#DC2626;

}

.back{

text-align:center;

margin-top:30px;

}

.back a{

display:inline-block;

padding:14px 28px;

background:#2563EB;

color:white;

text-decoration:none;

border-radius:12px;

font-weight:700;

}

.back a:hover{

background:#1D4ED8;

}
</style>

</head>

<body>

<div class="container">

<div class="header">

<h2>👥 Manage Users</h2>

<p>

View all registered users.

</p>

</div>

<table>

<tr>

<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Phone</th>

</tr>

<%

if(users != null){

for(User user : users){

%>

<tr>

<td><%=user.getId()%></td>

<td><%=user.getName()%></td>

<td><%=user.getEmail()%></td>

<td><%=user.getPhone()%></td>

</tr>

<%

}

}

%>

</table>

<div class="back">

<a href="adminDashboard.jsp">

⬅ Back to Dashboard

</a>

</div>

</div>

</body>

</html>
