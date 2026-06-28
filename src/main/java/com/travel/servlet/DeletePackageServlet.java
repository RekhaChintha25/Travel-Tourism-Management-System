package com.travel.servlet;

import java.io.IOException;

import com.travel.dao.PackageDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeletePackageServlet")
public class DeletePackageServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        PackageDAO dao = new PackageDAO();

        boolean status = dao.deletePackage(id);

        if (status) {
            response.sendRedirect("adminPackages.jsp");
        } else {
            response.getWriter().println("<h2>Failed to Delete Package</h2>");
        }
    }
}