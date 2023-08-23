package com.DAO;

import com.entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAOImpl implements UserDAO {

    private Connection conn;

    public UserDAOImpl(Connection conn) {
        this.conn = conn;
    }

    @Override
    public boolean userRegister(User user) {
        boolean success = false;
        try {
            String sql = "INSERT INTO user (name, email, password) VALUES (?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());

            int rowsAffected = ps.executeUpdate();
            if (rowsAffected == 1) {
                success = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("SQL Exception occurred: " + e.getMessage());
        }

        return success;
    }

    @Override
    public User login(String username, String password) {
        User user = null;

        try {
            String sql = "SELECT * FROM user WHERE username=? AND password=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                // Create a new User object using the retrieved data
                user = new User();
                user.setId(rs.getInt(1));
                user.setName(rs.getString(2));
                user.setEmail(rs.getString(3));
                user.setPassword(rs.getString(4));
                user.setPhno(rs.getString(5));
                user.setAddress(rs.getString(6));
                user.setCity(rs.getString(7));
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("SQL Exception occurred: " + e.getMessage());
        }

        return user;
    }
}
