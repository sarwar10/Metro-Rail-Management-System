package jdbcdemo;
import javafx.application.Application;
import javafx.stage.Stage;

import java.sql.*;

public class MysqCon extends Application{
		static Connection con=null;
		static Statement stmt = null;
		static ResultSet rs = null;
	
		
		public static Connection getConnection() {
		try {
		Class.forName("com.mysql.jdbc.Driver");
		con =DriverManager.getConnection("jdbc:mysql://localhost:3306/metror","root", "root123");
		 } 
		catch (Exception e) {
		System.out.println("Exception" + e);
		 }
		return con;
		 }
		public static boolean executeUpdate(String query) {
		  boolean f = false;
		  try {
		  con = getConnection();
		  stmt = con.createStatement();
		   int b = stmt.executeUpdate(query);
		  if (b > 0) {
		 f = true;
		 } else {
		 f = false;
		 }
		 } catch (Exception e) {
		System.out.println("Exception" + e);
		 }
		return f;
		 }
		public static ResultSet executeQuery(String sql) {
		try {
			con = getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			return rs;
			 } catch (Exception e) {
			System.out.println("Exception" + e);
			return null;
			 }
			 }
			public static void close() {
			try {
			con.close();
			stmt.close();
			rs.close();
			 } catch (Exception e) {
			System.out.println("Exception" + e);
			 }
			
				
			}
			@Override
			public void start(Stage arg0) throws Exception {
				// TODO Auto-generated method stub
				
			}
			
				
			}
		
