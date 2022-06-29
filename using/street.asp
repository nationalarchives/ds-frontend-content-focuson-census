<%
	Dim strAction
	
	strAction = Request.QueryString("text")
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Road, Street, and No. or Name of House</title>

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
<table width="392" border="0" cellspacing="0" cellpadding="0" align="left">
<tr>
<td width="143" rowspan="3"><img src="../graphics/streets_cr.jpg" width="121" height="406" alt="This section is for the 'Road, Street, and No. or Name of House'"></td>
<td width="249" height="291" class="text">
<%
	If strAction = "" Then
%>
<p>This is where the name of the house and street was recorded. This information is very important as it gives you the location you are looking for. 
</p>
<p>Have a look at this Census return, can you make out the names of the houses?</p>
<p>Click here to reveal the names of the houses, did you get them all?</p>
<%
	ElseIf strAction = "names" Then
%>
<ul>
	<li>34 Milman Street</li>
</ul>
<%
	ElseIf strAction = "problems" Then
%>
<p>  A problem you might have is that the street name has changed or the houses have been destroyed or replaced. This often happens where housing was destroyed during the Second World War. Also a lot of very poor housing (slums) was replaced after the war.</p>
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
	<a href="street.asp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('click','','images/navi_clickhere2.gif',1)"><img name="click" border="0" src="images/navi_clickhere.gif" width="120" height="50" align="texttop"></a>
<%
	Else
%>
	<a href="street.asp?text=names" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('click','','images/navi_clickhere2.gif',1)"><img name="click" border="0" src="images/navi_clickhere.gif" width="120" height="50" align="texttop"></a>
<%
	End If
	If strAction = "problems" Then
%>
	<a href="street.asp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('problems','','images/navi_problems2.gif',1)"><img name="problems" border="0" src="images/navi_problems.gif" width="120" height="50" align="texttop"></a></td>
<%
	Else
%>
	<a href="street.asp?text=problems" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('problems','','images/navi_problems2.gif',1)"><img name="problems" border="0" src="images/navi_problems.gif" width="120" height="50" align="texttop"></a></td>
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
