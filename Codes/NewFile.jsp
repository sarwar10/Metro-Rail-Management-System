<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
 <html>
  <head> 
  <meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1"> 
  <title>Insert title here</title> 
  <link rel="stylesheet"type="text/css"href="css/adminLogin.css"/> 
  </head> 
  <body> 
<div class="tableForm">
<form id="login"method="post"action="loginServlet">
<table >
<tr>
<td height="35"align="left">
<p>User name</p>
</td>
<td align="left"style="padding-left:7px;">
<p><input type="text"name="user"id="user"size="30"/></p>
</td>
</tr>
<tr>
<td height="35"align="left">
<p>Password</p>
</td>
<td align="left"style="padding-left:7px;">
<p><input type="text"name="password"id="password"size="30"/></p>
</td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit"value="login"id="submit"/>
</td>
</tr>
</table>
</form>
</div>
</body>
</html>

  