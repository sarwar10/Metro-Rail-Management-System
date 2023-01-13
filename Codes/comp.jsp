<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String user=request.getParameter("user");
String age=request.getParameter("age");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String address=request.getParameter("address");
String message=request.getParameter("message");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/metror", "root", "root123");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into complaints(u_name,u_address,phone_num,c_msg,email,age)values('"+user+"','"+address+"','"+phone+"','"+message+"','"+email+"','"+age+"')");
out.println("Complaint Submitted Successfully");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>