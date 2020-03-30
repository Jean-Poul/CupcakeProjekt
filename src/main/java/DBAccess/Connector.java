package DBAccess;

import FunctionLayer.LoginSampleException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 @author Mark, Nicolas, Henrik, Jean-Poul
 */
public class Connector {

    private static String URL;
    private static String USERNAME;
    private static String PASSWORD;

    private static Connection singleton = null;

    public static void setConnection( Connection con ) {
        singleton = con;
    }

    public static Connection connection() throws ClassNotFoundException, SQLException, LoginSampleException {
       try {
           if (singleton == null || singleton.isClosed()) {
               setDBCredentials();
               Class.forName("com.mysql.cj.jdbc.Driver");
               singleton = DriverManager.getConnection(URL, USERNAME, PASSWORD);
           }
       } catch (ClassNotFoundException | SQLException e) {
           String msg = "Kunne ikke oprette forbindelse til databasen.";
            throw new LoginSampleException(msg);
       }
        return singleton;
    }

    public static void setDBCredentials() {
        String deployed = System.getenv("DEPLOYED");

        if( deployed != null) {
            // Prod: getting variables from setenv.sh
            URL = System.getenv("JDBC_CONNECTION_STRING");
            USERNAME = System.getenv( "JDBC_USER");
            PASSWORD = System.getenv("JDBC_PASSWORD");

        } else {
            // Localhost connection to database
            URL = "jdbc:mysql://localhost:3306/cupcakedb";
            USERNAME = "root";
            PASSWORD = "DatamatikerJP0110";
        }

    }

}

