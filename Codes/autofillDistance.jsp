<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*"%>
<%
int boxid1=Integer.parseInt(request.getParameter("boxid1"));
int boxid2=Integer.parseInt(request.getParameter("boxid2"));
ResultSet rs1 = null;
ResultSet rs2 = null;
int cnt=0;
int cnt2;//first station's position in route
int cnt3;//second station's position in route
boolean flag=false;
float length1=0;
float length2=0;
float distance=0;
try
{
 rs1=metror.executeQuery("select r_id from route_details where s_id="+boxid1);
while(rs1.next())
 {
 cnt2=0;
 cnt3=0;
int r_id=rs1.getInt("r_id");
 rs2=metror.executeQuery("select s_id,length_from_start,s_order_num from route_details where r_id="+r_id+" order by s_order_num ");
while(rs2.next())
 {
cnt2++;
int s_id=rs2.getInt("s_id");
if(boxid1==s_id)
 {
 length1=rs2.getFloat("length_from_start");
break;
 }
 }
 cnt3=cnt2;
while(rs2.next())
 {
cnt3++;
int s_id=rs2.getInt("s_id");
if(boxid2==s_id)
 {
flag=true;
 length2=rs2.getFloat("length_from_start");
break;
 }
}
if(flag==true)
 {
System.out.println("ids1:"+length1); 
System.out.println("ids1:"+length2);
distance=length2-length1;
System.out.println("ds:"+distance);
%><%=distance%>
<%
break;
 }//if true
 }// while rid
if(flag==false)
 {
%>1000<%
 }
}//try
catch(Exception e)
{
System.out.println(e);
}
%>