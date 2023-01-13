<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<body>


<h1> Train Timing</h1>
<table border="1">
<tr>
<td>Train</td>
<td>Arrival time</td>
<td>Departure time</td>
</tr>

<%
try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/metror", "root", "root123");
	Statement st=conn.createStatement();
String sql ="select t_name,arrival_time,departure_time from trains t,trip tp ,tripdtls td where tp.trip_id=td.trip_num and tp.train_id=t.train_id and stations_id=(select stations_id from stations where s_name='"+request.getParameter("station")+"')";
ResultSet rs= st.executeQuery(sql);

while(rs.next()){
%>
<tr>
<td><%=rs.getString("t_name") %></td>
<td><%=rs.getString("arrival_time") %></td>
<td><%=rs.getString("departure_time") %></td>

</tr>
<%
}
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>