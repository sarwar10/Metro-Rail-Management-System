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
<h1>Complaints Received</h1>
<table class="table table-striped table-dark table-bordered">
<thead class="bg bg-primary">
<tr >
<td>Complain Id</td>
<td>User Name</td>
<td>Email</td>
<td>Message</td>
<td>Status</td>
</tr>
</thead>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/metror", "root", "root123");
Statement st=conn.createStatement();

String sql ="select c_id, u_name,email,c_msg from complaints where status is null";
ResultSet rs= st.executeQuery(sql);
while(rs.next()){
%>
<tr>
<td><%=rs.getString("c_id") %></td>
<td><%=rs.getString("u_name") %></td>
<td><%=rs.getString("email") %></td>
<td><%=rs.getString("c_msg") %></td>
<td><button class="btn btn-primary" type="button">Reply Now</button> </td>
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