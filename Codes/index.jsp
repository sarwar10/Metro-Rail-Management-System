<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" language="java" %>

<!DOCTYPE html >
<%
String currentTab = "home";
String adminFlag="false";
if(session.getAttribute("adminVar")!= null)
{
adminFlag=session.getAttribute("adminVar").toString();
System.out.println("session:"+adminFlag);
}
try
{
if(!(request.getParameter("currentTab").isEmpty()))
currentTab = request.getParameter("currentTab");
else
currentTab = "home";
}
catch(Exception e)
{
System.out.print(e);
}
%>
<html>

<style>
li{
margin-left:20px;
margin-right:20px;

height:40px;
text-align:center;
padding:10px;
}
li a{
text-decoration:none;
color:white;
}
li:hover{
background:orange;
text-color:white;
text-align:center;
}
.tabset_content{
margin-top:50px;
margin-left:400px;


}

      body {
        font-family: 'Tangerine', serif;
        font-size: 48px;
        
      }
.backg{
background:#581845;
}
</style>
<head>
<title>Metro Rail</title>
<meta http-equiv="Content-Type" content="text/html; charset=us-ascii" />
<link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Tangerine">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
function redirectToTab(tab)
{
document.getElementById("currentTab").value = tab;
document.forms["homejspform"].submit();
}
function logout()
{
//alert("logout");
window.location.href = "logout.jsp";
}
</script>
</head>
<body >
<div class="content" >

<div class="row"  >
<div class="col-lg-3 backg" style="height:100vh;">
<br>
<br>
<% if(adminFlag=="false") {%>
<div class="adminLogin" style="text-align:center;"><a href="#"class="login"onClick="redirectToTab('adminLogin')">Admin Login</a>
</div>
<%}
else{%>
<div class="adminLogin"><a href="#" class="login"onClick="logout()">Logout</a>
</div>
<%} %>



<br>
<br>

<ul class="list-unstyled">
<li><a href="#" class="link1" onClick="redirectToTab('home')">Home</a></li><br>
<li><a href="#" class="link2" onClick="redirectToTab('complaints')">Complaints</a></li><br>
<li><a href="#" class="link3" onClick="redirectToTab('timing')">Timing</a></li><br>
<li><a href="#" class="link4" onClick="redirectToTab('fareanroute')">Check Fare </a></li><br>
<li><a href="#" class="link5" onClick="redirectToTab('metrocard')">Metro card</a></li><br>
<% if(adminFlag=="true") {%>
<li><a href="#" class="link6" onClick="redirectToTab('admin')">Admin</a></li><br>
<%}%>
</ul>
</div>


<%
if(currentTab.compareToIgnoreCase("home")==0)
{
%>
<div class="col-lg-9" >
<div id="homeContainer" class="tabset_content float-left" >
<jsp:include page="home.jsp">
<jsp:param name="PRJID" value="<%=currentTab %>"/>
</jsp:include>
</div>
<%}
if(currentTab.compareToIgnoreCase("complaints")==0)
{
%>
<div id="complaintsContainer" class="tabset_content" >
<jsp:include page="complaints.jsp">
<jsp:param name="PRJID" value="<%=
currentTab %>"/>
</jsp:include>
</div>
<%}
if(currentTab.compareToIgnoreCase("adminLogin")==0)
{
%>
<div id="complaintsContainer" class="tabset_content" >
<jsp:include page="adminLogin.jsp">
<jsp:param name="PRJID" value="<%=
currentTab %>"/>
</jsp:include>
</div>
<%}
if(currentTab.compareToIgnoreCase("fareanroute")==0)
{
%>
<div id="complaintsContainer" class="tabset_content" >
<jsp:include page="fareanroute.jsp">
<jsp:param name="PRJID" value="<%=currentTab %>"/>
</jsp:include>
</div>
<%}
if(currentTab.compareToIgnoreCase("timing")==0)
{
%>
<div id="complaintsContainer" class="tabset_content" >
<jsp:include page="timing.html">
<jsp:param name="PRJID" value="<%=
currentTab %>"/>
</jsp:include>
</div>
<%}
if(currentTab.compareToIgnoreCase("metrocard")==0)
{
%>
<div id="complaintsContainer" class="tabset_content" >
<jsp:include page="metrocard1.jsp">
<jsp:param name="PRJID" value="<%=
currentTab %>"/>
</jsp:include>
</div>
<%}
if(currentTab.compareToIgnoreCase("admin")==0)
{
%>
<div id="adminContainer" class="tabset_content" >
<jsp:include page="admin.jsp">
<jsp:param name="PRJID" value="<%=currentTab %>"/>
</jsp:include>
</div>
<% } %>

<form name="homejspform" id="homejspform" method="post">
<input type="hidden" name="currentTab" id="currentTab" value="<%=currentTab %>"/>
</form>
</div>
</div>
</div>
</body>
</html>