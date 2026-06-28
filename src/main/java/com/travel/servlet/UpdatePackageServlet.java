package com.travel.servlet;

import java.io.IOException;

import com.travel.dao.PackageDAO;
import com.travel.model.Package;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdatePackageServlet")
public class UpdatePackageServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String packageName = request.getParameter("packageName");
        String destination = request.getParameter("destination");
        double price = Double.parseDouble(request.getParameter("price"));
        int days = Integer.parseInt(request.getParameter("days"));
        String description = request.getParameter("description");

        Package p = new Package();

        p.setId(id);
        p.setPackageName(packageName);
        p.setDestination(destination);
        p.setPrice(price);
        p.setDays(days);
        p.setDescription(description);

        PackageDAO dao = new PackageDAO();

        boolean status = dao.updatePackage(p);

        if (status) {
            response.sendRedirect("adminPackages.jsp");
        } else {
            response.getWriter().println("<h2>Package Update Failed!</h2>");
        }
    }
}