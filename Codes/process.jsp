<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<body>
<h1>Retrieve data from database in jsp</h1>

<%
String b_stn=request.getParameter("s_station");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/metror", "root", "root123");
Statement st=conn.createStatement();

ResultSet rs=st.executeQuery("select arrival_time,departure_time from tripdtls where station_id=(select station_id from stations where s_name='"+b_stn+"')");
out.println("timing");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>