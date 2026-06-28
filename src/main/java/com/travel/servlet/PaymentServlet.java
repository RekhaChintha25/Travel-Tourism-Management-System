package com.travel.servlet;

import java.io.IOException;

import com.travel.dao.PaymentDAO;
import com.travel.model.Payment;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int bookingId = Integer.parseInt(request.getParameter("bookingId"));
        String cardName = request.getParameter("cardName");
        String cardNumber = request.getParameter("cardNumber");
        double amount = Double.parseDouble(request.getParameter("amount"));

        Payment payment = new Payment();

        payment.setBookingId(bookingId);
        payment.setCardName(cardName);
        payment.setCardNumber(cardNumber);
        payment.setAmount(amount);

        PaymentDAO dao = new PaymentDAO();

        boolean status = dao.makePayment(payment);

        if (status) {

            response.sendRedirect("paymentSuccess.jsp");

        } else {

            response.getWriter().println("<h2>Payment Failed!</h2>");
        }
    }
}