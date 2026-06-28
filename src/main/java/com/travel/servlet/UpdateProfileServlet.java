package com.travel.servlet;

import java.io.IOException;

import com.travel.dao.UserDAO;
import com.travel.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        User user = new User();

        user.setId(id);
        user.setName(name);
        user.setEmail(email);
        user.setPhone(phone);

        UserDAO dao = new UserDAO();

        boolean status = dao.updateUser(user);

        if (status) {
            response.sendRedirect("profile.jsp");
        } else {
            response.getWriter().println("<h2>Profile Update Failed!</h2>");
        }
    }
}