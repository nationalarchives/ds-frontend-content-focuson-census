<%
	Dim strAddress
	Dim strHTMLPage

	strAddress = Request.QueryString("address")
	strHTML = strAddress
	strHTML = Replace(strHTML, " ", "_") & "_cr.htm"
	strAddress = Server.URLEncode(strAddress)
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>The Census Investigation <% = strAddress %></title>
</head>

<frameset cols="535,224*" frameborder="NO" border="0" framespacing="0" rows="*"> 
<frame name="Census Return" scrolling="auto" src="<% = strHTML %>">
<frame name="Questions"  noresize src="address.asp?address=<% = strAddress %>"scrolling="no">
</frameset>
<noframes>
<body>
<!--#include virtual="/includes/menu/sdc.inc" -->
</body>
</noframes>
</html>