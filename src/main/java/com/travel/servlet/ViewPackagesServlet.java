package com.travel.servlet;

import java.io.IOException;
import java.util.ArrayList;

import com.travel.dao.PackageDAO;
import com.travel.model.Package;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ViewPackagesServlet")
public class ViewPackagesServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PackageDAO dao = new PackageDAO();

        ArrayList<Package> packageList = dao.getAllPackages();

        request.setAttribute("packageList", packageList);

        RequestDispatcher rd = request.getRequestDispatcher("packages.jsp");

        rd.forward(request, response);
    }
}