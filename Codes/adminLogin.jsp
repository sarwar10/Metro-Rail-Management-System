<!DOCTYPE html>
 <html>
  <head> 
  <title>Admin Login</title> 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  </head> 
  <body> 
<div class="tableForm">
<form id="login"method="post"action="alogin.jsp">
<table >
<tr>
<th><h1>Login</h1><br><th>
</tr>
<tr><td><p><% //out.print(session.getAttribute("msg")); %></p><td></tr>
<tr>
<td height="35"align="left">

<p>Admin Name:</p>
</td>
<td align="left"style="padding-left:7px;">
<p><input class="form-control" type="text"name="user"id="user"size="30"/></p>
</td>
</tr>
<tr>
<td height="35"align="left">
<p>Password:</p>
</td>
<td align="left"style="padding-left:7px;">
<p><input class="form-control" type="text"name="password"id="password"size="30"/></p>
</td>
</tr>
<tr>
<td colspan="2" align="center">
<input class="btn btn-primary"type="submit"value="login"id="submit"/>
</td>
</tr>
</table>
</form>
</div>
</body>
</html>

  