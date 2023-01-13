<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h1> Add Route</h1>
<table class="table table-striped table-dark table-bordered">
<thead class="bg bg-primary">
<tr>
<td>Route Id</td>
<td>Stations Id</td>
<td>Station Name</td>
<td>Length from start</td>
<td>Status</td>
</tr>
</thead>

  <%
try
{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/metror","root","root123");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from v1"); // v1 is a view
while(rs.next()){
%>
<tr>
<td><%=rs.getString("route_id") %></td>
<td><%=rs.getString("stations_id") %></td>
<td><%=rs.getString("s_name") %></td>
<td><input type="text"name="lfs"></td>
<td><button class="btn btn-primary"type="button"name="add">Add</button> </td>

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