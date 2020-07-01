package DB;
import java.sql.*;
import java.io.*;
import java.util.*;
public class Datab {

    private static Connection conn;
    public static Connection getcon() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/userdb?useSSL=false&user=scott&password=1234";
            conn = DriverManager.getConnection(url);}catch(Exception e){ System.out.print("连接失败"); }
        return conn;
    }

//娴嬭瘯
}
