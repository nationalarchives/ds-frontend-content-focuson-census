<%
	Dim strAction
	
	strAction = Request.QueryString("text")
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Profession or Occupation </title>

<style type="text/css">
<!--
.text {  font-family: Arial, Helvetica, sans-serif; font-size: 11pt; font-style: normal; line-height: normal; font-weight: normal; font-variant: normal; color: #FFFFFF; text-align: justify; vertical-align: top}
-->
</style>
<script language="JavaScript">
<!--
function OpenPopup(s_url) {
	 win = window.open (s_url , "do", "toolbar=no,location=no,status=no,menubar=no,scrollbars=yes,resizable=no,width=780,height=580");

	}
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
//tmtC_Resize_Window
tmt_Resize_WindowX = 450;
tmt_Resize_WindowY = 450;
self.resizeTo(tmt_Resize_WindowX,tmt_Resize_WindowY);//tmtC_Resize_WindowEnd</script>
</head>

<body bgcolor="#006699" leftmargin="1" topmargin="1" marginwidth="0" marginheight="0" onLoad="MM_preloadImages('images/navi_clickhere2.gif','images/navi_problems2.gif')" text="#FFFFFF">
<table width="392" border="0" cellspacing="0" cellpadding="0" align="left">
<tr>
<td width="143" rowspan="3"><img src="../graphics/profession_cr.jpg" width="156" height="406" alt="Part of the Census the records the Profession or Occupation "></td>
<td width="249" height="291" class="text">
<%
	If strAction = "" Then
%>
<p>Recorded here are the professions (jobs) that people did. This is one of the most interesting parts of the Census as you can find out what kind of lives the people would have had. You can begin to tell if they were rich or poor by the type of job they had. </p>
<%
	ElseIf strAction = "names" Then
%>
<ul>
	<li>Morris, Richard    46</li>
	<li>Morris, Mary       48</li>
	<li>Morris, Eleanor    21</li>
	<li>Morris, Richard    17</li>
	<li>Morris, Ada         8</li>
	<li>Morris, Walt        6</li>
	<li>Morris, Ethel       4</li>
	<li>Parkin, George     23</li>
	<li>Caighill, Charles  49</li>
	<li>Caighill, Jane     43</li>
	<li>Caighill, Margaret 22</li>
	<li>Caighill, Charles  12</li>
	<li>Edward Bifield     54</li>
	<li>Hannah Bifield     48</li>
	<li>Walter Burton      40</li>
</ul>
<%
	ElseIf strAction = "problems" Then
%>
<p>     Using the occupation field of the Census can be very difficult and it is this area which poses most problems to historians. Many of the jobs are no longer in existence and it is not always easy to find out what these jobs involved. Some jobs were given different titles according to which area of the country the person was living in, whilst some jobs with the same description could involve work of a completely different nature according to the locality. 
 
 Perhaps more importantly for historians, the work of women and children was often un- or under-recorded. Domestic work was often not seen by the enumerators as a profession or occupation and was, therefore, not included. 
</p>
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
	<a href="javascript:OpenPopup('profession_game.asp')" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('click1','','images/navi_activtiy2.gif',1)"><img name="click1" border="0" src="images/navi_activity.gif" width="120" height="50" align="texttop" alt="click for game"></a>
<%
	Else
%>
	<a href="javascript:OpenPopup('profession_game.asp')" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('click','','images/navi_activity2.gif',1)"><img name="click" border="0" src="images/navi_activity.gif" width="120" height="50" align="texttop"></a>
<%
	End If
	If strAction = "problems" Then
%>
	<a href="profession.asp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('problems','','images/navi_problems2.gif',1)"><img name="problems" border="0" src="images/navi_problems.gif" width="120" height="50" align="texttop"></a></td>
<%
	Else
%>
	<a href="profession.asp?text=problems" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('problems','','images/navi_problems2.gif',1)"><img name="problems" border="0" src="images/navi_problems.gif" width="120" height="50" align="texttop"></a></td>
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
