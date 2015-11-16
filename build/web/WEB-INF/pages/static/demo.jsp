<%-- 
    Document   : demo
    Created on : 2015年11月16日, 下午07:41:07
    Author     : Geoffrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ResultSet rs = (ResultSet)request.getAttribute("resultSet"); 
            
            while(rs.next())
            {
        %>
        <p><b>ID:</b> <%= rs.getInt("ID") %> | <b>Name:</b> <%= rs.getString("File_Name") %></p>
        <% 
            }
        %>
    </body>
</html>
