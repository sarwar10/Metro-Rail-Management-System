<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Station</title>
</head>
<body>
<div class="col-lg-6 ">
<h1>Add Station</h1>
<form action="" method="post">
Station Name<br>
<input class="form-control" type="text"name="s_name"><br>
Longitude<br>
<input class="form-control" type="text"name="longitude"><br>
Latitude<br>
<input class="form-control"type="text"name="latitude"><br>
<input class="btn btn-primary" type="submit" value="submit">
</form>
</div>
</body>
</html>
<%
String s_name=request.getParameter("s_name");
String longitude=request.getParameter("longitude");
String latitude=request.getParameter("latitude");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/metror", "root", "root123");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into stations(s_name,longitude,latitude)values('"+s_name+"','"+longitude+"','"+latitude+"')");
out.println("Station Added");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>