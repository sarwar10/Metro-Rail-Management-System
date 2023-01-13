<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complaints Received</title>
</head>
<body>
<h1>Metro Card Request Received</h1>
<table class="table table-striped table-dark table-bordered">
<thead class="bg bg-primary">
<tr >
<td>Applicant Name</td>
<td>Age</td>
<td>Phone Number</td>
<td>Email</td>
<td>Password</td>
<td>Status</td>
</tr>
</thead>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/metror", "root", "root123");
Statement st=conn.createStatement();

String sql ="select u_name,phone_num,age,email,password from metrocard where card_status=0";
ResultSet rs= st.executeQuery(sql);
while(rs.next()){
%>
<tr>
<td><%=rs.getString("u_name") %></td>
<td><%=rs.getString("age") %></td>
<td><%=rs.getString("phone_num") %></td>
<td><%=rs.getString("email") %></td>
<td><%=rs.getString("password") %></td>
<td><button class="btn btn-primary"type="button">Issue</button></td>
</tr>
<%
}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</table>
</body>
</html>