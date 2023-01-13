<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%

String t_name=request.getParameter("t_name");
String capacity=request.getParameter("capacity");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/metror", "root", "root123");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into trains(t_name,capacity)values('"+t_name+"','"+capacity+"')");
	out.println("Train Successfully Added");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>