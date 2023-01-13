<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String user=request.getParameter("user");

String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/metror","root","root123");
Statement st= con.createStatement();

ResultSet rs=st.executeQuery("select * from admin where a_name='"+user+"' and password='"+password+"'");
if(rs.next()==false)
{  
	
     session.setAttribute("msg","Invalid password or username");
	
}
else
{
try{
if(rs.getString("password").equals(password)&&rs.getString("a_name").equals(user))
{
	
	session.setAttribute("user",user);
	response.sendRedirect("optionadmin.jsp");

}
else{
response.sendRedirect("index.jsp");


}
}
catch (Exception e) {
e.printStackTrace();
}
}


%>