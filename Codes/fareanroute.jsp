<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	</head>
	<body>
	<div class="fareTable">
	<form id="fareTableForm"method="post"action="fare.jsp">
	<table>
<tr>
<th height="35"align="center"colspan="2">
<h2>Find fare between two stations.
</h2><br>
</th>
</tr>
<tr>
<td height="35"align="left">
<p>Source </p>
</td>
<td align="left">
<p><select class="form-control"name="s_station"id="s_station">
<option> nagasandra</option>
<option> dasra</option>
<option> jala</option>
<option> peenya</option>
<option> Yesvant</option>
</select></p>
</td>
</tr>
<tr>
<td height="35"align="left">
<p>Destination</p>
</td>
<td width="50%"align="left">
<p><select class="form-control"name="d_station"id="d_station">
<option> nagasandra</option>
<option> dasra</option>
<option> jala</option>
<option> peenya</option>
<option> Yesvant</option>
</select></p>
</td>
</tr>
</table><br>
<input class="btn btn-primary"type="submit"value="submit">
</form>
<div id="map"style="width: 500px; height: 400px;"></div>
</div>
</body>
</html>
