
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class NewMain { 
    public static void main(String[] args) { 
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
    } 
}

