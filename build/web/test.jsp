<%@page import="java.util.Properties"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="h-full bg-gray-100">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editor Table | Support</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="h-full">
           <%
        Class.forName("com.mysql.cj.jdbc.Driver"); 
        Connection dbConnection = null; 
        try { 
            String url = "jdbc:mysql://localhost:3306/elet"; 
            Properties info = new Properties(); 
            info.put("user", "root"); 
            info.put("password", "n0m3l0"); 
            dbConnection = DriverManager.getConnection(url, info); 
            if (dbConnection != null) { 
                System.out.println("Successfully connected to MySQL database test"); 
            } 
        } 
        catch (SQLException ex) { 
            System.out.println("An error occurred while connecting MySQL databse"); 
            ex.printStackTrace(); 
        } 
     
        %>
    </body>
</html>