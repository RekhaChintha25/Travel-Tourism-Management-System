package com.travel.servlet;

import java.io.IOException;

import com.travel.dao.BookingDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteBookingServlet")
public class DeleteBookingServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int bookingId = Integer.parseInt(request.getParameter("id"));

        String page = request.getParameter("page");

        BookingDAO dao = new BookingDAO();

        boolean status = dao.deleteBooking(bookingId);

        if (status) {

            if ("admin".equals(page)) {
                response.sendRedirect("ViewBookingsServlet");
            } else {
                response.sendRedirect("bookingHistory.jsp");
            }

        } else {

            response.getWriter().println("<h2>Booking Cancel Failed!</h2>");
        }
    }
}