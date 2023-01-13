<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"type="text/css"href="css/admin.css"/>
<script type="text/javascript"src="jquery/jquery-2.0.2.js"></script>
<script type="text/javascript">
var count=1;
$(document).ready(function(){
$("#popup_block").hide();
loadComplaintsDiv();
});
function submitReplyForm()
{
$("#popup_block").show();
 $.ajax({
type: "post",
url: "admin/submitReplyAjax.jsp", //this is my servlet
data: $("#complaintForm").serialize(),
success: function(msg){
alert(msg);
 $("#popup_block").hide();
hideReplyDiv();
 }
 });
}
functionloadComplaintsDiv()
{
$.ajax({
type: "post",
url: "admin/getAllComplaintsAjax.jsp", //this is my servlet
data: "",
success: function(msg){
// alert(msg);
document.getElementById("allComplaintsDiv").innerHTML = "";
 $("#allComplaintsDiv").append(msg);
 }
 });
}
function sloadReplyDiv(selectedId)
{
varcid=selectedId.id;
 $.ajax({
type: "post",
url: "admin/getComplaintByIdAjax.jsp", //this is my servlet
data: "cid="+cid,
success: function(msg){
//alert(msg);
$("#allComplaintsDiv").hide();
document.getElementById("replyDiv").innerHTML = "";
 $("#replyDiv").append(msg);
 $("#replyDiv").show();
 }
 });
}
function Reply()
{
alert("hai");
}
functionhideReplyDiv()
{
$("#replyDiv").hide();
loadComplaintsDiv();
$("#allComplaintsDiv").show();
}
</script>
</head>
<body>
<div id="allComplaintsDiv">
</div>
<div id="replyDiv"style="padding-left:100px;padding-top:40px; "></div>
<div id="popup_block"class="popup_block"style="hieght:200px;width:100px;f
loat:left;position:fixed;top:50%;left:50%;z-index: 999999;">
<img alt=""src="img/ajax-loader.gif">
</div>
</body>
</html>