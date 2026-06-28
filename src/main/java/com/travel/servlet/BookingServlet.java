package com.travel.servlet;

import java.io.IOException;

import com.travel.dao.BookingDAO;
import com.travel.dao.PackageDAO;
import com.travel.model.Package;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {

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

        int packageId = Integer.parseInt(request.getParameter("packageId"));
        int persons = Integer.parseInt(request.getParameter("persons"));

        BookingDAO bookingDAO = new BookingDAO();

        // Booking save chesi bookingId tiskuntam
        int bookingId = bookingDAO.addBooking(userId, packageId, persons);

        if (bookingId > 0) {

            // Package amount retrieve chestam
            PackageDAO packageDAO = new PackageDAO();
            Package p = packageDAO.getPackageById(packageId);

            double amount = p.getPrice() * persons;

            response.sendRedirect(
                "payment.jsp?bookingId=" + bookingId + "&amount=" + amount
            );

        } else {

            response.getWriter().println("<h2>Booking Failed!</h2>");
        }
    }
}