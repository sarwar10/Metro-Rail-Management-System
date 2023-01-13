<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" language="java" %>

<!DOCTYPE html >
<%
String currentTab = "home";
String adminFlag="true";
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

margin-left:10px;


padding: 30px;


}

      body {
      
        font-family: 'Tangerine', serif;
        font-size: 48px;
       ;
        
        
        
        
      }
      
      .backg{
      background:#581845;
      }

</style>
<head>
<title>Metro Rail</title>

<meta http-equiv="Content-Type" content="text/html; charset=us-ascii" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body>

<div class="content">

<div class="row"  >
<div class="col-lg-3 backg" style="height:100vh;">
<br><br>
<% if(adminFlag=="true") {%>
<div class="adminLogin" style="text-align:center;"><a href="index.jsp"class="login"onClick="redirectToTab('adminLogin')">Logout</a>
</div>
<%}
else{%>
<div class="adminLogin">
<% String user=(String)session.getAttribute("user");%>
<p> <% out.print("Welcome"+user);%></p>
<a href="#" class="login"onClick="logout()">Logout</a>
</div>
<%} %>
<br><br>

<ul class="list-unstyled">
<li><a href="#" class="link1" onClick="redirectToTab('home')">Home</a></li>
<li><a href="#" class="link2" onClick="redirectToTab('addstation')">Add Station</a></li>
<li><a href="#" class="link3" onClick="redirectToTab('addroute')">Add Route</a></li>
<li><a href="#" class="link4" onClick="redirectToTab('addtrain')">Add Train</a></li>
<li><a href="#" class="link5" onClick="redirectToTab('faredtls')">Fare Details</a></li>
<li><a href="#" class="link3" onClick="redirectToTab('addtrip')">Add Trip</a></li>
<li><a href="#" class="link4" onClick="redirectToTab('complaintsr')">Complaints</a></li>
<li><a href="#" class="link5" onClick="redirectToTab('requestforcard')">Metro Card</a></li>

</ul>
</div>
<div class="col-lg-9" >
<%
if(currentTab.compareToIgnoreCase("home")==0)
{
%>

<div id="homeContainer" class="tabset_content float-left" >
<jsp:include page="home.jsp">
<jsp:param name="PRJID" value="<%=currentTab %>"/>
</jsp:include>
</div>
<%}

if(currentTab.compareToIgnoreCase("addstation")==0)
{
%>

<div id="complaintsContainer" class="tabset_content" >
<jsp:include page="addstation.jsp">
<jsp:param name="PRJID" value="<%=
currentTab %>"/>
</jsp:include>
</div>
<%}
if(currentTab.compareToIgnoreCase("addroute")==0)
{
%>
<div id="complaintsContainer" class="tabset_content" >
<jsp:include page="addroute.jsp">
<jsp:param name="PRJID" value="<%=currentTab %>"/>
</jsp:include>
</div>
<%}
if(currentTab.compareToIgnoreCase("addtrain")==0)
{
%>
<div id="complaintsContainer" class="tabset_content" >
<jsp:include page="addtrain.html">
<jsp:param name="PRJID" value="<%=currentTab %>"/>
</jsp:include>
</div>
<%}
if(currentTab.compareToIgnoreCase("faredtls")==0)
{
%>
<div id="complaintsContainer" class="tabset_content" >
<jsp:include page="faredtls.jsp">
<jsp:param name="PRJID" value="<%=
currentTab %>"/>
</jsp:include>
</div>
<%}
if(currentTab.compareToIgnoreCase("addtrip.jsp")==0)
{
%><div id="complaintsContainer" class="tabset_content" >
<jsp:include page="metrocard1.jsp">
<jsp:param name="PRJID" value="<%=currentTab %>"/>
</jsp:include>
</div>
<%}
if(currentTab.compareToIgnoreCase("complaintsr")==0)
{
%>
<div id="adminContainer" class="tabset_content" >
<jsp:include page="complaintsr.jsp">
<jsp:param name="PRJID" value="<%=currentTab %>"/>
</jsp:include>
</div>
<% }
if(currentTab.compareToIgnoreCase("requestforcard")==0)
{
%>
<div id="adminContainer" class="tabset_content" >
<jsp:include page="requestmcard.jsp">
<jsp:param name="PRJID" value="<%=currentTab %>"/>
</jsp:include>
</div>
<% }
if(currentTab.compareToIgnoreCase("index")==0)
{
%>
<div id="adminContainer" class="tabset_content" >
<jsp:include page="index.jsp">
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
</div>
</body>
</html>