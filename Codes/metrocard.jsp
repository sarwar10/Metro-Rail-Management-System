<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*,java.util.*"%>

<%
String u_name=request.getParameter("u_name");
String u_address=request.getParameter("u_address");
String age=request.getParameter("age");
String gender=request.getParameter("gender");
String phone_num=request.getParameter("phone_num");
String email=request.getParameter("email");
String password=request.getParameter("password");



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/metror", "root", "root123");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into metrocard(u_name,u_address,age,gender,phone_num,email,card_status,password)values('"+u_name+"','"+u_address+"','"+age+"','"+gender+"','"+phone_num+"','"+email+"','0','"+password+"')");
out.println("Application Submitted Successfully");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
