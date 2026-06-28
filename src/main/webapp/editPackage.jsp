<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="com.travel.dao.PackageDAO"%>
<%@ page import="com.travel.model.Package"%>
<%
if(session.getAttribute("adminId")==null){
    response.sendRedirect("adminLogin.jsp");
    return;
}
%>

<%
int id = Integer.parseInt(request.getParameter("id"));

PackageDAO dao = new PackageDAO();

Package p = dao.getPackageById(id);
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Edit Package</title>

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

background:linear-gradient(135deg,#1E3A8A,#2563EB,#60A5FA);

padding:40px;

}

.container{

width:560px;

background:white;

border-radius:24px;

padding:45px;

box-shadow:
0 20px 50px rgba(0,0,0,.30),
0 10px 25px rgba(37,99,235,.25);

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

background:linear-gradient(135deg,#2563EB,#1D4ED8);

font-size:42px;

color:white;

margin-bottom:20px;

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

border-color:#2563EB;

box-shadow:0 0 15px rgba(37,99,235,.25);

}
.update-btn{

width:100%;

margin-top:30px;

padding:15px;

border:none;

border-radius:12px;

background:linear-gradient(135deg,#2563EB,#1D4ED8);

color:white;

font-size:17px;

font-weight:700;

cursor:pointer;

transition:.35s;

}

.update-btn:hover{

transform:translateY(-3px);

box-shadow:0 15px 30px rgba(37,99,235,.35);

}

.back{

text-align:center;

margin-top:25px;

}

.back a{

text-decoration:none;

font-weight:700;

color:#1E3A8A;

}

.back a:hover{

text-decoration:underline;

}

</style>

</head>

<body>

<div class="container">

<div class="logo">✏️</div>

<div class="title">
Update Package
</div>

<div class="subtitle">
Modify travel package details
</div>

<form action="UpdatePackageServlet" method="post">

<input
type="hidden"
name="id"
value="<%=p.getId()%>">

<label>Package Name</label>

<input
type="text"
name="packageName"
class="input-box"
value="<%=p.getPackageName()%>"
required>

<label>Destination</label>

<input
type="text"
name="destination"
class="input-box"
value="<%=p.getDestination()%>"
required>

<label>Price (₹)</label>

<input
type="number"
name="price"
class="input-box"
value="<%=p.getPrice()%>"
required>

<label>Number of Days</label>

<input
type="number"
name="days"
class="input-box"
value="<%=p.getDays()%>"
required>

<label>Description</label>

<textarea
name="description"
required><%=p.getDescription()%></textarea>

<input
type="submit"
value="💾 Update Package"
class="update-btn">

</form>

<div class="back">

<a href="adminPackages.jsp">
⬅ Back to Manage Packages
</a>

</div>

</div>

</body>
</html>