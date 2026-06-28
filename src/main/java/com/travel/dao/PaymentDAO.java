package com.travel.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

import com.travel.model.Payment;
import com.travel.util.DBConnection;

public class PaymentDAO {

    public boolean makePayment(Payment payment) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String query = "INSERT INTO payments(booking_id, card_name, card_number, amount, payment_date) VALUES(?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, payment.getBookingId());
            ps.setString(2, payment.getCardName());
            ps.setString(3, payment.getCardNumber());
            ps.setDouble(4, payment.getAmount());
            ps.setDate(5, new Date(System.currentTimeMillis()));

            int rows = ps.executeUpdate();

            if (rows > 0) {
                status = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

}