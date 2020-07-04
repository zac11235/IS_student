package lib;

import java.sql.*;

public class DbConnect {
	Connection conn;
	//PreparedStatement pr;
	public DbConnect(){
		try{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			String url="jdbc:mysql://localhost:3306/userdb?useSSL=false&user=scott&password=1234";
			Connection conn=DriverManager.getConnection(url);// 连接数据库
			  if (conn == null) {
				  System.out.println("数据库连接失败");
			  } else {
				  System.out.println("数据库连接成功");
			  }
			  
		    } catch(SQLException sqlException){
		    	sqlException.printStackTrace();
		    }catch(ClassNotFoundException classNotFound){
		    	classNotFound.printStackTrace();
		    	System.out.print("加载数据库驱动失败");
		    }catch(Exception e){
		       e.printStackTrace();
		       System.out.println("连接数据库失败");
		    }
	}
//	public ResultSet execute(String sql) throws Exception{
//		statement=conn.createStatement(); //建立SQL语句对象
//	    return statement.executeQuery(sql);//执行查询
//	}
}		

