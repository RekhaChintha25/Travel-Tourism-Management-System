package com.travel.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.travel.model.Booking;
import com.travel.util.DBConnection;

public class BookingDAO {

    // Add Booking and Return Booking ID
    public int addBooking(int userId, int packageId, int persons) {

        int bookingId = 0;

        try {

            Connection con = DBConnection.getConnection();

            String query = "INSERT INTO bookings(user_id, package_id, booking_date, persons) VALUES(?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);

            ps.setInt(1, userId);
            ps.setInt(2, packageId);
            ps.setDate(3, new Date(System.currentTimeMillis()));
            ps.setInt(4, persons);

            int rows = ps.executeUpdate();

            if (rows > 0) {

                ResultSet rs = ps.getGeneratedKeys();

                if (rs.next()) {
                    bookingId = rs.getInt(1);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return bookingId;
    }

    // Get All Bookings (Admin)
    public ArrayList<Booking> getAllBookings() {

        ArrayList<Booking> bookings = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            String query =
                    "SELECT b.*, p.package_name, p.destination " +
                    "FROM bookings b " +
                    "JOIN packages p ON b.package_id = p.id";

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Booking booking = new Booking();

                booking.setId(rs.getInt("id"));
                booking.setUserId(rs.getInt("user_id"));
                booking.setPackageId(rs.getInt("package_id"));
                booking.setBookingDate(rs.getDate("booking_date"));
                booking.setPersons(rs.getInt("persons"));

                booking.setPackageName(rs.getString("package_name"));
                booking.setDestination(rs.getString("destination"));

                bookings.add(booking);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return bookings;
    }

    // Get Bookings By User
    public ArrayList<Booking> getBookingsByUserId(int userId) {

        ArrayList<Booking> bookings = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            String query =
                    "SELECT b.*, p.package_name, p.destination " +
                    "FROM bookings b " +
                    "JOIN packages p ON b.package_id = p.id " +
                    "WHERE b.user_id=?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, userId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Booking booking = new Booking();

                booking.setId(rs.getInt("id"));
                booking.setUserId(rs.getInt("user_id"));
                booking.setPackageId(rs.getInt("package_id"));
                booking.setBookingDate(rs.getDate("booking_date"));
                booking.setPersons(rs.getInt("persons"));

                booking.setPackageName(rs.getString("package_name"));
                booking.setDestination(rs.getString("destination"));

                bookings.add(booking);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return bookings;
    }

    // Delete Booking
   
    public boolean deleteBooking(int bookingId) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            // Step 1: Delete payment
            String paymentQuery = "DELETE FROM payments WHERE booking_id=?";

            PreparedStatement ps1 = con.prepareStatement(paymentQuery);

            ps1.setInt(1, bookingId);

            ps1.executeUpdate();

            // Step 2: Delete booking
            String bookingQuery = "DELETE FROM bookings WHERE id=?";

            PreparedStatement ps2 = con.prepareStatement(bookingQuery);

            ps2.setInt(1, bookingId);

            int rows = ps2.executeUpdate();

            if(rows > 0){
                status = true;
            }

        } catch(Exception e) {
            e.printStackTrace();
        }

        return status;
    }}