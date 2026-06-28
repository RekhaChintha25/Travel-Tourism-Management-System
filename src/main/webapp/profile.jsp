<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.travel.dao.UserDAO"%>
<%@ page import="com.travel.model.User"%>

<%
if(session.getAttribute("userId")==null){
    response.sendRedirect("login.jsp");
    return;
}

int userId=(Integer)session.getAttribute("userId");

UserDAO dao=new UserDAO();

User user=dao.getUserById(userId);
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>My Profile</title>
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

border-radius:28px;

padding:45px;

box-shadow:
0 25px 60px rgba(0,0,0,.45);

animation:fadeIn .8s ease;
transition:.4s;

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

.profile-icon{

width:110px;

height:110px;

margin:auto;

border-radius:50%;

display:flex;

justify-content:center;

align-items:center;

font-size:50px;

background:linear-gradient(135deg,#2563EB,#06B6D4);

color:white;

box-shadow:
0 15px 35px rgba(37,99,235,.45);

margin-bottom:25px;

transition:.35s;

}
.profile-icon i{

font-size:52px;

color:white;

}
.profile-icon:hover{

transform:scale(1.08) rotate(8deg);

}

h2{

text-align:center;

font-size:38px;

font-weight:800;

color:white;

margin-bottom:10px;
text-shadow:0 0 18px rgba(56,189,248,.35);

}
.subtitle{

text-align:center;

font-size:16px;

font-weight:600;

color:#7DD3FC;

margin-bottom:35px;

letter-spacing:.5px;


}
label{

display:flex;

align-items:center;

gap:10px;

font-weight:700;

font-size:17px;

color:#F8FAFC;

margin-bottom:10px;

margin-top:20px;

letter-spacing:.5px;

text-shadow:0 0 8px rgba(56,189,248,.25);

}
label i{

color:#38BDF8;

font-size:18px;

width:22px;

text-align:center;

}


.input-box{

width:100%;

padding:16px 18px;

border:1px solid rgba(255,255,255,.18);

border-radius:14px;

font-size:16px;

font-weight:600;

color:white;

background:rgba(255,255,255,.08);

outline:none;

transition:.35s;

}

.input-box:focus{

border:1px solid #38BDF8;

background:rgba(56,189,248,.12);

box-shadow:0 0 15px rgba(56,189,248,.45);

color:white;

}
.input-box::placeholder{

color:#CBD5E1;

}

.update-btn{

width:100%;

margin-top:32px;

padding:16px;

border:none;

border-radius:14px;

font-size:18px;

font-weight:700;

cursor:pointer;

color:white;

background:linear-gradient(135deg,#2563EB,#0EA5E9);

transition:.35s;

box-shadow:
0 12px 28px rgba(37,99,235,.35);

}

.update-btn:hover{

transform:translateY(-4px);

background:linear-gradient(135deg,#1D4ED8,#0284C7);

box-shadow:
0 18px 35px rgba(37,99,235,.45);

}
.update-btn i{

margin-right:8px;

}

.back{

text-align:center;

margin-top:25px;

}

.back a{

display:inline-block;

margin-top:5px;

padding:12px 22px;

border-radius:12px;

text-decoration:none;

font-weight:700;

font-size:15px;

color:#7DD3FC;

border:1px solid rgba(125,211,252,.35);

background:rgba(255,255,255,.05);

transition:.35s;

}

.back a:hover{

background:#0EA5E9;

color:white;

border-color:#0EA5E9;

transform:translateY(-3px);

box-shadow:
0 10px 25px rgba(14,165,233,.35);

text-decoration:none;

}

</style>

</head>

<body>

<div class="container">

<div class="profile-icon">
<i class="fa-solid fa-user"></i>
</div>

<h2>My Profile</h2>

<div class="subtitle">
Manage your personal information
</div>

<form action="UpdateProfileServlet" method="post">

<input
type="hidden"
name="id"
value="<%=user.getId()%>">

<label>
<i class="fa-solid fa-user"></i>
Full Name
</label>

<input
type="text"
name="name"
value="<%=user.getName()%>"
class="input-box"
required>

<label>
<i class="fa-solid fa-envelope"></i>
Email Address
</label>

<input
type="email"
name="email"
value="<%=user.getEmail()%>"
class="input-box"
required>

<label>
<i class="fa-solid fa-phone"></i>
Phone Number
</label>

<input
type="text"
name="phone"
value="<%=user.getPhone()%>"
class="input-box"
required>

<button type="submit" class="update-btn">

<i class="fa-solid fa-floppy-disk"></i>

Update Profile

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