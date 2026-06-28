package com.travel.servlet;

import java.io.IOException;

import com.travel.dao.PackageDAO;
import com.travel.model.Package;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AddPackageServlet")
public class AddPackageServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String packageName = request.getParameter("packageName");
        String location = request.getParameter("location");
        double price = Double.parseDouble(request.getParameter("price"));
        int days = Integer.parseInt(request.getParameter("days"));
        String description = request.getParameter("description");

        Package p = new Package();

        p.setPackageName(packageName);
        p.setDestination(location);
        p.setPrice(price);
        p.setDays(days);
        p.setDescription(description);

        PackageDAO dao = new PackageDAO();

        boolean status = dao.addPackage(p);

        if (status) {
            response.getWriter().println("<h1>Package Added Successfully</h1>");
        } else {
            response.getWriter().println("<h1>Failed to Add Package</h1>");
        }
    }
}