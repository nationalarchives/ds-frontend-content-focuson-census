<%
	Dim strAction
	
	strAction = Request.QueryString("text")
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Name and Surname of each Person </title>

<style type="text/css">
<!--
.text {  font-family: Arial, Helvetica, sans-serif; font-size: 11pt; font-style: normal; line-height: normal; font-weight: normal; font-variant: normal; color: #FFFFFF; text-align: justify; vertical-align: top}
.do {  font-family: Arial, Helvetica, sans-serif; font-size: 11pt; font-style: italic; font-weight: normal; font-variant: normal; color: #000000}
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
<table width="392" border="0" cellspacing="0" cellpadding="0" align="left">
<tr>
<td width="143" rowspan="3"><img src="../graphics/names_cr.jpg" width="121" height="406" alt="Section of the Census return for Name and Surname of each person"></td>
<td width="249" height="291" class="text">
<%
	If strAction = "" Then
%>
<p>This is where the name of each person was recorded. This information is very important as it gives you name of the family and the number of people in the house and shows if they were part of the same family. When you see this <font color="#99CCFF" class="do">'do'</font> it means all the people with this mark have the same surname.</p>
<p>Have a look at this Census return, can you make out the names of all the people?</p>
<p>Click here to reveal the names of the people, did you get them all?</p>
<%
	ElseIf strAction = "names" Then
%>
<ul>
	<li>Morris, Richard</li>
	<li>Morris, Mary</li>
	<li>Morris, Eleanor</li>
	<li>Morris, Richard</li>
	<li>Morris, Ada</li>
	<li>Morris, Walt</li>
	<li>Morris, Ethel</li>
	<li>Parkin, George</li>
	<li>Caighill, Charles</li>
	<li>Caighill, Jane</li>
	<li>Caighill, Margaret</li>
	<li>Caighill, Charles</li>
	<li>Edward Bifield</li>
	<li>Hannah Bifield</li>
	<li>Walter Burton</li>
</ul>
<%
	ElseIf strAction = "problems" Then
%>
<p>  Even something as simple as recording a name could result in a mistake. This often happened when an enumerator misheard a name. For example,  William Price may have been heard as William Bryce. Mistakes could also be made when the enumerator was copying information from the original form to the official book.</p>
<%
	End If
%></td>
</tr>
<tr>
<td width="249">
<%
	If strAction = "names" Then
%>
	<a href="name.asp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('click','','images/navi_clickhere2.gif',1)"><img name="click" border="0" src="images/navi_clickhere.gif" width="120" height="50" align="texttop"></a>
<%
	Else
%>
	<a href="name.asp?text=names" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('click','','images/navi_clickhere2.gif',1)"><img name="click" border="0" src="images/navi_clickhere.gif" width="120" height="50" align="texttop"></a>
<%
	End If
	If strAction = "problems" Then
%>
	<a href="name.asp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('problems','','images/navi_problems2.gif',1)"><img name="problems" border="0" src="images/navi_problems.gif" width="120" height="50" align="texttop"></a></td>
<%
	Else
%>
	<a href="name.asp?text=problems" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('problems','','images/navi_problems2.gif',1)"><img name="problems" border="0" src="images/navi_problems.gif" width="120" height="50" align="texttop"></a></td>
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
