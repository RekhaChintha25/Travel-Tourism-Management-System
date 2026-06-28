package com.travel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.travel.model.Package;
import com.travel.util.DBConnection;

public class PackageDAO {

    // Add Package
    public boolean addPackage(Package p) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String query = "INSERT INTO packages(package_name, destination, price, days, description, image) VALUES(?,?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, p.getPackageName());
            ps.setString(2, p.getDestination());
            ps.setDouble(3, p.getPrice());
            ps.setInt(4, p.getDays());
            ps.setString(5, p.getDescription());
            ps.setString(6, p.getImage());

            int rows = ps.executeUpdate();

            if (rows > 0) {
                status = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    // Get Package By Id
    public Package getPackageById(int id) {

        Package p = null;

        try {

            Connection con = DBConnection.getConnection();

            String query = "SELECT * FROM packages WHERE id=?";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                p = new Package();

                p.setId(rs.getInt("id"));
                p.setPackageName(rs.getString("package_name"));
                p.setDestination(rs.getString("destination"));
                p.setPrice(rs.getDouble("price"));
                p.setDays(rs.getInt("days"));
                p.setDescription(rs.getString("description"));
                p.setImage(rs.getString("image"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return p;
    }

    // Get All Packages
    public ArrayList<Package> getAllPackages() {

        ArrayList<Package> list = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            String query = "SELECT * FROM packages";

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Package p = new Package();

                p.setId(rs.getInt("id"));
                p.setPackageName(rs.getString("package_name"));
                p.setDestination(rs.getString("destination"));
                p.setPrice(rs.getDouble("price"));
                p.setDays(rs.getInt("days"));
                p.setDescription(rs.getString("description"));
                p.setImage(rs.getString("image"));

                list.add(p);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // Update Package
    public boolean updatePackage(Package p) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String query = "UPDATE packages SET package_name=?, destination=?, price=?, days=?, description=?, image=? WHERE id=?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, p.getPackageName());
            ps.setString(2, p.getDestination());
            ps.setDouble(3, p.getPrice());
            ps.setInt(4, p.getDays());
            ps.setString(5, p.getDescription());
            ps.setString(6, p.getImage());
            ps.setInt(7, p.getId());

            int rows = ps.executeUpdate();

            if (rows > 0) {
                status = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    // Delete Package
    public boolean deletePackage(int id) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String query = "DELETE FROM packages WHERE id=?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, id);

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