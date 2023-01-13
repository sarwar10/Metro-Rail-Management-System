<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*,java.math.*,java.lang.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>The fare between</title>
</head>
<body>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/metror", "root", "root123");
Statement st=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
	    ResultSet.CONCUR_READ_ONLY);

String sql ="(select length_from_start from stations,routedtls where s_id=stations_id and s_name='"+request.getParameter("d_station")+"')union " 
+"(select length_from_start from stations ,routedtls where s_id=stations_id and s_name='"+request.getParameter("s_station")+"')";
ResultSet rs= st.executeQuery(sql);
rs.next();
int a=rs.getInt(1);
rs.last();
int b=rs.getInt(1);
int c=2*(a-b);
out.println("The fare is: "+c);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</body>
</html>