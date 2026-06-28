package com.travel.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    private static Connection connection;

    public static Connection getConnection() {

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/travel_tourism_db",
                    "root",
                    "rekha@2005");

        } catch (Exception e) {
            e.printStackTrace();
        }

        return connection;
    }
}