<%
	Dim strAction
	
	strAction = Request.QueryString("text")
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Where Born </title>

<style type="text/css">
<!--
.text {  font-family: Arial, Helvetica, sans-serif; font-size: 11pt; font-style: normal; line-height: normal; font-weight: normal; font-variant: normal; color: #FFFFFF; text-align: justify; vertical-align: top}
-->
</style>
<script language="JavaScript">
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v3.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
</head>

<body bgcolor="#006699" leftmargin="1" topmargin="1" marginwidth="0" marginheight="0" onLoad="MM_preloadImages('images/navi_clickhere2.gif','images/navi_problems2.gif')">
<table width="410" border="0" cellspacing="0" cellpadding="0" align="left">
<tr>
<td width="143" rowspan="3"><img src="../graphics/where_born_cr.jpg" width="186" height="413" alt="Section of the Census showing 'Where born'"></td>
<td width="270" height="291" class="text">
<%
	If strAction = "" Then
%>
<p>Recorded here is where people said that they were born. This is very good information as you can find out about the movement of people in 1891. Now it is very common for people to live in different areas and move when they get older. Was it the same in the Victorian age?</p>
<p>Have a look at this Census return, can you make out the places where the people were born?</p>
<p>Click here to reveal all the places people were born, did you get them all?</p>
<%
	ElseIf strAction = "names" Then
%>
<ul>
	<li>Morris, Richard. Brompton, London</li>
	<li>Morris, Mary. Brompton, London</li>
	<li>Morris, Eleanor. Brompton, London</li>
	<li>Morris, Richard. Brompton, London</li>
	<li>Morris, Ada. Cheslea, London</li>
	<li>Morris, Walt. Cheslea, London</li>
	<li>Morris, Ethel. Fulham, London</li>
	<li>Parkin, George. City Road, London</li>
	<li>Caighill, Charles. Scotland</li>
	<li>Caighill, Jane. Scotland</li>
	<li>Caighill, Margaret. Scotland</li>
	<li>Caighill, Charles. Scotland</li>
	<li>Edward Bifield.Battersea, Surry</li>
	<li>Hannah Bifield. Chelsea, London</li>
	<li>Walter Burton. Westminster </li>
</ul>
<%
	ElseIf strAction = "problems" Then
%>
<p>   The place of birth column is very important to historians who study migration patterns (population movements) and to family historians but the information is not always accurate. A lack of geographical knowledge could prevent people from recording the correct answer and some people simply entered the first place they could remember living, rather than where they were born. Poor spelling of place names can also mislead historians.</p>
<%
	End If
%>
</td>
</tr>
<tr>
<td width="249">
<%
	If strAction = "names" Then
%>
	<a href="whereborn.asp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('click','','images/navi_clickhere2.gif',1)"><img name="click" border="0" src="images/navi_clickhere.gif" width="120" height="50" align="texttop"></a>
<%
	Else
%>
	<a href="whereborn.asp?text=names" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('click','','images/navi_clickhere2.gif',1)"><img name="click" border="0" src="images/navi_clickhere.gif" width="120" height="50" align="texttop"></a>
<%
	End If
	If strAction = "problems" Then
%>
	<a href="whereborn.asp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('problems','','images/navi_problems2.gif',1)"><img name="problems" border="0" src="images/navi_problems.gif" width="120" height="50" align="texttop"></a></td>
<%
	Else
%>
	<a href="whereborn.asp?text=problems" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('problems','','images/navi_problems2.gif',1)"><img name="problems" border="0" src="images/navi_problems.gif" width="120" height="50" align="texttop"></a></td>
<%
	End If
%>
</tr>
<tr>
<td width="249">&nbsp;</td>
</tr>
</table>
<!--#include virtual="/includes/menu/sdc.inc" -->
</body>
</html>
