package com.example.jasper.db;

import lombok.Getter;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
    private static DbConnection INSTANCE;
    @Getter
    private Connection connection;

    private DbConnection() throws SQLException {
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Thogakade","root","1234");
    }

    public static DbConnection getInstance() throws SQLException {
        return INSTANCE == null ? INSTANCE = new DbConnection() : INSTANCE;
    }
}
