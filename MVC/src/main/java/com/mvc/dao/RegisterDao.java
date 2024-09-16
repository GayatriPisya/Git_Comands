package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.mvc.bean.RegisterBean;
import com.mvc.util.DBConnection;

public class RegisterDao {

    public String registerUser(RegisterBean registerBean) {
        Connection con = null;
        PreparedStatement preparedStatement = null;

        try {
            con = DBConnection.createConnection();
            String query = "INSERT INTO users (userName, password, email) VALUES (?, ?, ?)";
            preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, registerBean.getUserName());
            preparedStatement.setString(2, registerBean.getPassword());
            preparedStatement.setString(3, registerBean.getEmail());

            int i = preparedStatement.executeUpdate();

            if (i > 0) {
                return "SUCCESS";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (preparedStatement != null) preparedStatement.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return "Oops.. Something went wrong there..!";
    }

    public RegisterBean validateUser(RegisterBean registerBean) {
        Connection con = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            con = DBConnection.createConnection();
            String query = "SELECT * FROM users WHERE userName = ? AND password = ?";
            preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, registerBean.getUserName());
            preparedStatement.setString(2, registerBean.getPassword());
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                registerBean.setUserName(resultSet.getString("userName"));
                registerBean.setPassword(resultSet.getString("password"));
                registerBean.setEmail(resultSet.getString("email"));
            } else {
                registerBean = null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (resultSet != null) resultSet.close();
                if (preparedStatement != null) preparedStatement.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return registerBean;
    }

    public String updatePassword(String username, String newPassword) {
        Connection con = null;
        PreparedStatement preparedStatement = null;

        try {
            con = DBConnection.createConnection();
            String query = "UPDATE users SET password = ? WHERE userName = ?";
            preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, newPassword);
            preparedStatement.setString(2, username);

            int i = preparedStatement.executeUpdate();

            if (i > 0) {
                return "SUCCESS";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (preparedStatement != null) preparedStatement.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return "Oops.. Something went wrong there..!";
    }
}
