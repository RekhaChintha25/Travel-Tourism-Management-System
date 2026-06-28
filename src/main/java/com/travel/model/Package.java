package com.travel.model;

public class Package {

    private int id;
    private String packageName;
    private String destination;
    private double price;
    private int days;
    private String description;
    private String image;

    public Package() {
    }

    public Package(int id, String packageName, String destination,
                   double price, int days, String description, String image) {

        this.id = id;
        this.packageName = packageName;
        this.destination = destination;
        this.price = price;
        this.days = days;
        this.description = description;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getDays() {
        return days;
    }

    public void setDays(int days) {
        this.days = days;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}