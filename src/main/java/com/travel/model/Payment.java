package com.travel.model;

import java.sql.Date;

public class Payment {

    private int id;
    private int bookingId;
    private String cardName;
    private String cardNumber;
    private double amount;
    private Date paymentDate;

    public Payment() {
    }

    public Payment(int id, int bookingId, String cardName,
                   String cardNumber, double amount, Date paymentDate) {

        this.id = id;
        this.bookingId = bookingId;
        this.cardName = cardName;
        this.cardNumber = cardNumber;
        this.amount = amount;
        this.paymentDate = paymentDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getBookingId() {
        return bookingId;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
    }

    public String getCardName() {
        return cardName;
    }

    public void setCardName(String cardName) {
        this.cardName = cardName;
    }

    public String getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public Date getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(Date paymentDate) {
        this.paymentDate = paymentDate;
    }
}