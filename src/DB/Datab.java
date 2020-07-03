package DB;
import java.sql.*;

public class Datab {
    public Datab() {
    }
    public static void main(String[] args) throws SQLException {
        getcon();

    }
    public static Connection getcon() {
        Connection conn = null;
        ;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/userdb?useSSL=false&user=scott&password=1234";
            conn = DriverManager.getConnection(url);System.out.print("连接成功");
        } catch (Exception e) {
            System.out.print("连接失败");
        }
        return conn;
    }

    public String delete(String x) {
        return x;
    }

    public boolean read(String x) throws SQLException {
        return false;
    }

    public String add(Object x) {
        return null;
    }

    public String update(Object x) {
        return null;
    }

    //娴嬭瘯

}
