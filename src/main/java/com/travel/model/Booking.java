package com.travel.model;

import java.sql.Date;

public class Booking {

    private int id;
    private int userId;
    private int packageId;
    private Date bookingDate;
    private int persons;

    // Display purpose
    private String packageName;
    private String destination;

    public Booking() {
    }

    public Booking(int id, int userId, int packageId,
                   Date bookingDate, int persons) {
        this.id = id;
        this.userId = userId;
        this.packageId = packageId;
        this.bookingDate = bookingDate;
        this.persons = persons;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getPackageId() {
        return packageId;
    }

    public void setPackageId(int packageId) {
        this.packageId = packageId;
    }

    public Date getBookingDate() {
        return bookingDate;
    }

    public void setBookingDate(Date bookingDate) {
        this.bookingDate = bookingDate;
    }

    public int getPersons() {
        return persons;
    }

    public void setPersons(int persons) {
        this.persons = persons;
    }

    public String getPackageName() {
        return packageName;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }
}