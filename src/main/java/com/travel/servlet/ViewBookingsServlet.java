package com.travel.servlet;

import java.io.IOException;
import java.util.ArrayList;

import com.travel.dao.BookingDAO;
import com.travel.model.Booking;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ViewBookingsServlet")
public class ViewBookingsServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        BookingDAO dao = new BookingDAO();

        ArrayList<Booking> bookingList = dao.getAllBookings();

        request.setAttribute("bookingList", bookingList);

        request.getRequestDispatcher("adminBookings.jsp")
               .forward(request, response);
    }
}