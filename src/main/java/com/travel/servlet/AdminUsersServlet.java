package com.travel.servlet;

import java.io.IOException;
import java.util.ArrayList;

import com.travel.dao.UserDAO;
import com.travel.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AdminUsersServlet")
public class AdminUsersServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        UserDAO dao = new UserDAO();

        ArrayList<User> users = dao.getAllUsers();

        request.setAttribute("users", users);

        request.getRequestDispatcher("adminUsers.jsp")
               .forward(request, response);
    }
}