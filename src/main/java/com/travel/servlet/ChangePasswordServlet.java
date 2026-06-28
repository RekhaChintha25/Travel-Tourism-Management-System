package com.travel.servlet;

import java.io.IOException;

import com.travel.dao.UserDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ChangePasswordServlet")
public class ChangePasswordServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("userId") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        int userId = (Integer) session.getAttribute("userId");

        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        if (!newPassword.equals(confirmPassword)) {

            response.getWriter().println("<h2>New Password and Confirm Password do not match!</h2>");
            return;
        }

        UserDAO dao = new UserDAO();

        boolean status = dao.changePassword(userId, oldPassword, newPassword);

        if (status) {

            System.out.println("Password Changed Successfully");
            response.sendRedirect("dashboard.jsp");

        } else {

            response.getWriter().println("<h2>Old Password is Incorrect!</h2>");
        }
    }
}