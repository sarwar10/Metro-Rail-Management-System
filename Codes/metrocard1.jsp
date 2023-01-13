<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*" language="java" %>

<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>Metro Timing</title>
<link rel="stylesheet"type="text/css"href="css/recharge.css"/>
<script type="text/javascript"src="jquery/jquery-2.0.2.js"></script>
<script type="text/javascript">
$(document).ready(function(){
$('Form').submit(function(event){//prevent from refresh
event.preventDefault();
 });
 $('#metroCardApplicationForm').submit(function ()
 {
 $.ajax({
type: "post",
url: "metrocard.jsp",
data: $("#metroCardApplicationForm").serialize(),
success: function(msg){
alert(msg);
if(msg){
window.location='index.jsp'
}
 }
 });
 });
 });
</script>
</head>
<body>
<div class="">
<form id="metroCardApplicationForm"method="post"action="metrocard.jsp">
<table>
<tr>
<th height="35"align="left"colspan="2">
<h2>Application for Metro card</h2><br>
</th>
</tr>
<tr>
<td height="35"align="left">
<p>Name</p>
</td>
<td align="left"style="padding-left:7px;">
<p><input class=" form-control" type="text"required name="u_name"name="u_name"size="30"/></p>
</td>
</tr>
<tr>
<td height="35"align="left">
<p>Password</p>
</td>
<td align="left"style="padding-left:7px;">
<p><input class=" form-control" type="password"required name="password"name="password"size="30"/></p>
</td>
</tr>
<tr>
<td height="35"align="left">
<p>Age</p>
</td>
<td align="left"style="padding-left:7px;">
<p><input class=" form-control"type="number" required name="age"name="age"size="30"/></p>
</td>
</tr>
<tr>
<td height="35"align="left">
<p>Gender</p>
</td>
<td align="left"style="padding-left:7px;">
<p><input class=" form-control" type="text"required name="gender"name="gender"size="30"/>
</p>
</td>
</tr>
<tr>
<td height="35"align="left">
<p>Phone number</p>
</td>
<td align="left"style="padding-left:7px;">
<p><input class=" form-control" type="text"required name="phone_num"name="phone_num"size="30"/></p>
</td>
</tr>
<tr>
<td height="35"align="left">
<p>Email</p>
</td>
<td align="left"style="padding-left:7px;">
<p><input class=" form-control" type="text"required name="email"name="email"size="30"/></p>
</td>
</tr>
<tr>
<td height="35"align="left">
<p>Address</p>
</td>
<td align="left"style="padding-left:7px;">
<p><textarea class=" form-control" required id="address" name="addresss"style="width:400px; height: 50px;"> </textarea></p>
</td>
</tr>
<tr>
<td colspan=2 align="center">
<input class="btn btn-primary" type="submit"value="Submit"id="add"/>
</td>
</tr>
</table>
</form>
</div>
</body>
</html>