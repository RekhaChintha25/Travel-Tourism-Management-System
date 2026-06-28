package com.travel.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (email.equals("admin@gmail.com") && password.equals("admin123")) {

            HttpSession session = request.getSession();

            session.setAttribute("adminId", 1);
            session.setAttribute("adminName", "Admin");

            response.sendRedirect("adminDashboard.jsp");

        } else {

            response.getWriter().println("<h2>Invalid Admin Credentials</h2>");

        }
    }
}