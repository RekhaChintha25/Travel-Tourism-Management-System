<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList"%>
<%@ page import="com.travel.dao.BookingDAO"%>
<%@ page import="com.travel.model.Booking"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>

<%
HttpSession sessionObj = request.getSession(false);

if(sessionObj == null || sessionObj.getAttribute("userId") == null){
    response.sendRedirect("login.jsp");
    return;
}

int userId = (Integer) sessionObj.getAttribute("userId");

BookingDAO dao = new BookingDAO();

ArrayList<Booking> bookings = dao.getBookingsByUserId(userId);
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>My Booking History</title>
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

    background:
    linear-gradient(rgba(5,20,45,.35),rgba(5,20,45,.35)),
    url("images/common-bg.jpg");

    background-size:cover;

    background-position:center;

    background-repeat:no-repeat;

    background-attachment:fixed;

}

.container{

    max-width:1300px;

    margin:auto;

}

.header{

background:linear-gradient(135deg,#12243F,#1B3358);

backdrop-filter:blur(18px);

border:1px solid rgba(255,255,255,.15);

border-radius:28px;

padding:25px 30px;

display:flex;

flex-direction:column;

justify-content:center;

align-items:center;

text-align:center;

margin-bottom:35px;

box-shadow:
0 20px 50px rgba(0,0,0,.45);

}

.header h2{

    font-size:42px;

    font-weight:800;

    color:#FFFFFF;

    margin-bottom:12px;

    text-shadow:
    0 5px 18px rgba(59,130,246,.35);

}

.header p{

    color:#BFDBFE;

    font-size:17px;

    font-weight:600;

}
table{

width:100%;

border-collapse:collapse;

overflow:hidden;

border-radius:22px;

background:rgba(255,255,255,.95);

backdrop-filter:blur(18px);

box-shadow:
0 20px 50px rgba(0,0,0,.45);

}

th{

padding:20px;

background:linear-gradient(135deg,#2563EB,#1D4ED8);

color:white;

font-size:17px;

font-weight:700;

letter-spacing:.5px;

text-transform:uppercase;

}
td{

padding:18px;

font-size:16px;

font-weight:600;

color:#1E293B;

text-align:center;

border-bottom:1px solid rgba(255,255,255,.08);

}
tr{

transition:.35s;

}

tr:hover{

background:#FFC078;

transform:scale(1.01);

}
}

.cancelBtn{

color:#6B7280;

font-size:15px;

font-weight:700;

text-decoration:none;

transition:.3s;

}

.cancelBtn:hover{

color:#DC2626;

text-decoration:underline;

}
.back{

text-align:center;

margin-top:40px;

}

.back a{

display:inline-block;

padding:15px 34px;

border-radius:40px;

background:linear-gradient(135deg,#2563EB,#0EA5E9);

color:white;

font-weight:700;

text-decoration:none;

transition:.35s;

box-shadow:
0 15px 30px rgba(37,99,235,.35);

}

.back a:hover{

transform:translateY(-4px);

}
</style>

</head>

<body>

<div class="container">

<div class="header">

<h2>📖 My Booking History</h2>

<p>

🧳 View all your booked tours and manage your travel bookings easily.

</p>

</div>
<table>

<tr>

<th>Booking ID</th>
<th>Package Name</th>
<th>Destination</th>
<th>Booking Date</th>
<th>Persons</th>
<th>Action</th>

</tr>

<%
for(Booking b : bookings){
%>

<tr>

<td><%= b.getId() %></td>

<td>

🧳 <%= b.getPackageName() %>

</td>

<td>

📍 <%= b.getDestination() %>

</td>

<td>

📅 <%= b.getBookingDate() %>

</td>

<td>

👥 <%= b.getPersons() %>

</td>

<td>
<a class="cancelBtn"
href="DeleteBookingServlet?id=<%=b.getId()%>"
onclick="return confirm('Are you sure you want to cancel this booking?')">

<i class="fa-solid fa-trash"></i> Cancel

</a>

</td>

</tr>

<%
}
%>

</table>

<div class="back">

<a href="dashboard.jsp">
🏠 Back to Dashboard
</a>

</div>

</div>

</body>

</html>