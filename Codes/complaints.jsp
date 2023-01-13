<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPEhtml>
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>Submit a complaint
</title>
<link rel="stylesheet"type="text/css"href="css/complaints.css"/>
<script type="text/javascript"src="jquery/jquery-2.0.2.js"></script>
<script src="jquery/jquery.h5validate.js"></script>
<script type="text/javascript">
$(document).ready(function(){
$('Form').submit(function(event){//prevent from refresh
event.preventDefault();
 });
 $('#complaintForm').submit(function ()
 {
 $.ajax({
type: "post",
url: "comp.jsp",
data: $("#complaintForm").serialize(),
success: function(msg){
alert(msg);
document.getElementById("user").value="";
document.getElementById("age").value="";
document.getElementById("email").value="";
document.getElementById("phone").value="";
document.getElementById("address").value="";
document.getElementById("c_msg").value="";
 }
 });
 });
 });
</script>
</head>
<body>
<div class="complaintTable">
<form id="complaintForm"name="complaintForm"class="complaintForm"method="post"action="comp.jsp">
<table >
<tr>
<th height="35"align="left">
<h2><b>Submit a Complaint</b></h2><br>
</th>
</tr>
<tr>
<td height="35"align="left">
<p>Name</p>
</td>
<td align="left"style="padding-left:7px;">
<p><input class="form-control" type="text"name="user"id="user"size="30"required/><br></p>
</td>
</tr>
<tr>
<td height="35"align="left">
<p>Age</p>
</td>
<td align="left"style="padding-left:7px;">
<input  class="form-control" type="number"min="10"max="100"step="1"pattern="[1-9][0-9]"placeholder="00"required name="age"id="age"size="30">
<br>
</td>
</tr>
<tr>
<td height="35"align="left">
<p>Email</p>
</td>
<td align="left"style="padding-left:7px;">
<input  class="form-control" class="form-control" type="email"placeholder="Enter your
email"id="email"name="email"size="30"required/><br>
</td>
</tr>
<tr>
<td height="35"align="left">
<p>Phone number</p>
</td>
<td align="left"style="padding-left:7px;">
<input  class="form-control" type="tel"name="phone"id="phone"size="30"placeholder="eg:9496826455"pattern="[789][0-9]{9}"size="30"required/>
<br></td>
</tr>
<tr>
<td height="35"align="left">
<p>Address</p>
</td>
<td align="left"style="padding-left:7px;">
<p><textarea  class="form-control" name="address"id="address"style="width: 400px;height: 100px;" required></textarea> <br></p>
</td>
</tr>
<tr>
<td height="35"align="left">
<p>Message</p>
</td>
<td align="left"style="padding-left:7px;">
<p><textarea  class="form-control"  name="message" id="c_msg"style="width: 400px; height:100px;" required> </textarea><br></p>
</td>
</tr>
<tr>
<td colspan=2 align="center">
<input  class="btn btn-primary"type="submit"value="Submit"id="submit"/>
</td>
</tr>
</table>
</form>
</div>
</body>
</html>