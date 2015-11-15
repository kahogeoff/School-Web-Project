/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clickstuffexchange.module;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Geoffrey
 */
public class DatabaseAccess {
    static final String DB_URL = "localhost/test";
    static final String DB_USERNANME = "root";
    static final String DB_PASSWORD = "ya50090";
    static private Connection _connection = null;
    
    public DatabaseAccess () throws SQLException
    {
        _connection = getConnection(DB_URL, DB_USERNANME, DB_PASSWORD);
    }
    
    public DatabaseAccess (String url, String username, String password) throws SQLException
    {
        _connection = getConnection(url, username, password);
    }
    
    public static Connection getConnection(String url, String username, String password) throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://"+url, username, password);
            return con;
        } catch (Exception e) {

        }
        return null;
    }
    
    public ResultSet getResultSet(String sqlStatement) throws SQLException {
        try {
            Statement stmt = _connection.createStatement();
            ResultSet result =  stmt.executeQuery(sqlStatement);
            
            return result;
        } catch (Exception e) {

        }
        return null;
    }
    
}
