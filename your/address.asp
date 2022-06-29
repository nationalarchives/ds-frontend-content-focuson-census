<%
	Dim strAddress
	Dim aryAddress
	Dim strStreetMapLink

	Dim aryFamilies
	Dim aryRooms
	Dim aryServants
	Dim aryJob
	Dim aryIncome
	Dim aryAnswers

	strAddress = Request.QueryString("address")

	Set dicAddress = CreateObject("Scripting.Dictionary")
	
	' create a dictionary to store addresses and associated jobs and incomes
	dicAddress.Add "32 Milman Street", "2--2--0--Farrier,Dressmaker--Poor"
	dicAddress.Add "34 Milman Street", "4--2,1--0--Plasterer,General Dealer,Cab Driver,House Painter--Poor"
	dicAddress.Add "36 Milman Street", "1--2--0--Bricklayer--Poor"
	dicAddress.Add "40 Cadogan Square", "Absent--5--4--Not Given--Rich"
	dicAddress.Add "42 Cadogan Square", "1--5--6--Living on own means--Rich"
	dicAddress.Add "44 Cadogan Square", "1--5--6--Merchant--Rich"
	dicAddress.Add "46 Cadogan Square", "1--5--9--Not Given--Rich"
	dicAddress.Add "48 Cadogan Square", "1--5--7--MP,Barrister--Rich"
	dicAddress.Add "9 Upper Cheyne Row", "1--5--2--Journalist,MP--Comfortable"
	dicAddress.Add "10 Upper Cheyne Row", "1--5--3--Portait Painter--Comfortable"
	dicAddress.Add "11 Upper Cheyne Row", "1--5--1--Freeman builder--Comfortable"
	
	' split the item returned by the dictionary for this address on the "--" delimeter
	aryAnswers = Split(dicAddress.Item(strAddress), "--")
	
	aryFamilies = Split(aryAnswers(0), ",")
	aryRooms = Split(aryAnswers(1), ",")
	aryServants = Split(aryAnswers(2), ",")
	aryJob = Split(aryAnswers(3), ",")
	aryIncome = Split(aryAnswers(4), ",")
	
	aryAddress = Split(strAddress, " ")
	For intCount = 1 To UBound(aryAddress)
		If intCOunt <> 1 Then
			strStreetMapLink = strStreetMapLink & "_"
		End If
		strStreetMapLink = strStreetMapLink & LCase(aryAddress(intCount))
	Next
	strStreetMapLink = strStreetMapLink & ".htm"
	
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<SCRIPT LANGUAGE="JavaScript">
	<!--
	var img_happy = new Image();
	img_happy.src = "happy1.gif";
	var img_sad = new Image();
	img_sad.src = "sad.gif";
	var img_blank = new Image();
	img_blank.src = "shim.gif";

	function ValidateForm() {
		var all_correct = 0;
<%
	intCount = 0
	strOutput = vbTab & vbTab & "if("
	For Each strFamily In aryFamilies
		If intCount > 0 Then
			strOutput = strOutput & " || "
		End If
		strOutput = strOutput & "document.frm.families.value == """ & strFamily & """"
		intCount = intCount + 1
	Next
	strOutput = strOutput & ") {"
%>
<% = strOutput %>
			all_correct++;
			document.images.img_families.src = img_happy.src;
		}
		else if(document.frm.families.value == "") {
			document.images.img_families.src = img_blank.src;
		}
		else {
			document.images.img_families.src = img_sad.src;
		}
<%
	intCount = 0
	strOutput = vbTab & vbTab & "if("
	For Each strRooms In aryRooms
		If intCount > 0 Then
			strOutput = strOutput & " || "
		End If
		strOutput = strOutput & "document.frm.rooms.value == """ & strRooms & """"
		intCount = intCount + 1
	Next
	strOutput = strOutput & ") {"
%>
<% = strOutput %>
			all_correct++;
			document.images.img_rooms.src = img_happy.src;
		}
		else if(document.frm.rooms.value == "") {
			document.images.img_rooms.src = img_blank.src;
		}
		else {
			document.images.img_rooms.src = img_sad.src;
		}	
<%
	intCount = 0
	strOutput = vbTab & vbTab & "if("
	For Each strServants In aryServants
		If intCount > 0 Then
			strOutput = strOutput & " || "
		End If
		strOutput = strOutput & "document.frm.servants.value == """ & strServants & """"
		intCount = intCount + 1
	Next
	strOutput = strOutput & ") {"
%>
<% = strOutput %>
			all_correct++;
			document.images.img_servants.src = img_happy.src;
		}
		else if(document.frm.servants.value == "") {
			document.images.img_servants.src = img_blank.src;
		}
		else {
			document.images.img_servants.src = img_sad.src;
		}	
<%
	intCount = 0
	strOutput = vbTab & vbTab & "if("
	For Each strJob In aryJob
		If intCount > 0 Then
			strOutput = strOutput & " || "
		End If
		strOutput = strOutput & "document.frm.job.value == """ & strJob & """"
		intCount = intCount + 1
	Next
	strOutput = strOutput & ") {"
%>
<% = strOutput %>
			all_correct++;
			document.images.img_job.src = img_happy.src;
		}
		else if(document.frm.job.value == "") {
			document.images.img_job.src = img_blank.src;
		}
		else {
			document.images.img_job.src = img_sad.src;
		}
	
		if(all_correct == 4) {
			OpenPopup("address_answers.asp?income=<%= aryIncome(0) %>", 350, 400);
		}
	}	
		
	
	function OpenPopup(s_url, s_width, s_height) {
		var h_window = window.open(s_url, "Popup", "width=" + s_width + ",height=" + s_height + ",scrollbars=1,resizable=1");

		if((document.window != null) && (!h_window.opener)) {
			h_window.opener = document.window;
		}
		h_window.focus();
	}
	

	function ResetForm() {
		document.frm.families.options[0].selected = true;
		document.frm.rooms.options[0].selected = true;
		document.frm.servants.options[0].selected = true;
		document.frm.job.options[0].selected = true;
		document.frm.submit();
	}
	
	
	function BackToStreet() {
		
	}
	//-->
</SCRIPT>

<title>Learning Curve - Focus On... The Census - Activity</title>

<script language="JavaScript">
<!--
function MM_goToURL() { //v3.0
  var i, args=MM_goToURL.arguments; document.MM_returnValue = false;
  for (i=0; i<(args.length-1); i+=2) eval(args[i]+".location='"+args[i+1]+"'");
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
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

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
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

function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}

function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}

function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}

function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}
//-->
</script>
<style type="text/css">
<!--
.blue {  font-family: Arial, Helvetica, sans-serif; font-size: 9pt; font-style: normal; font-weight: bold; color: #99CCFF}
.white {  font-family: Arial, Helvetica, sans-serif; font-size: 9pt; font-style: normal; font-weight: bold; color: #FFFFFF}
-->
</style>
</head>
<body  bgcolor="#006699" leftmargin="5" topmargin="5" marginwidth = "0" marginheight = "0" onLoad="MM_preloadImages('navi_tostreet2.gif','navi_backtomap2.gif','navi_tryagain2.gif','navi_home2.gif','navi_conclusion2.gif')">
<form name="frm">

<table width="30%" border="0" cellspacing="1" cellpadding="1" bordercolordark="#000000" bordercolorlight="#ffffff" bordercolor="#99ccff" align="left" height="266" >
    
<tr class="white"> 
      
<td width="56%" height="21" class="white"><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif" color="#ffffff">
            <% = strAddress %>
		
<input type="hidden" name="address" value="<% = strAddress %>">
        </font></b></td>
</tr>
<tr>
<td width="56%" class="white" ><font size="1"><b><font face="Verdana, Arial, Helvetica, sans-serif" color="#99ccff" class="blue">How many families live there?</font></b></font></td>
</tr>
    
<tr> 
      
<td width="56%" class="white" >

<font size="1"><b>
<select name="families" size="1" onChange="ValidateForm()">
		
<option value="" selected>Please choose one
		
<option value="1">1
		
<option value="2">2
		
<option value="3">3
		
<option value="4">4

<option value="Absent">Family Absent
	
</select>
<img src="shim.gif" name="img_families" width="80" height="20" alt="*"></b></font></td>
</tr>
    
<tr> 
      
<td width="56%" class="white" ><font size="1"><b><font face="Verdana, Arial, Helvetica, sans-serif" color="#ffffff" class="white">How many rooms does the famliy live in?</font></b></font></td>
</tr>
<tr>
<td width="56%" height="13" class="white" >

<font size="1"><b><font face="Verdana, Arial, Helvetica, sans-serif" color="#ffffff">
<select name="rooms" onChange="ValidateForm()">
		
<option value="" selected>Please choose one
		
<option value="5">More than 5
		
<option value="4">4
		
<option value="3">3
		
<option value="2">2
		
<option value="1">1
	
</select>
<img src="shim.gif" name="img_rooms" width="80" height="20" alt="*"></font></b></font></td>
</tr>
    
<tr> 
      
<td width="56%" height="13" class="white" ><font size="1"><b><font face="Verdana, Arial, Helvetica, sans-serif" color="#99ccff" class="blue">How many servants does the famliy have?</font></b></font></td>
</tr>
<tr>
<td width="56%" class="white" >

<font size="1"><b><font face="Verdana, Arial, Helvetica, sans-serif" color="#ffffff">
<select name="servants" onChange="ValidateForm()">
		
<option value="" selected>Please choose one
<option value="0">0
<option value="1">1
		
<option value="2">2
		
<option value="3">3
		
<option value="4">4
		
<option value="5">5
		
<option value="6">6
		
<option value="7">7
		
<option value="8">8
		
<option value="9">9
		
<option value="10">10
		
<option value="11">10+
	
</select>
<img src="shim.gif" name="img_servants" width="80" height="20" alt="*"></font></b></font></td>
</tr>
    
<tr> 
      
<td width="56%" class="white" ><font size="1"><b><font face="Verdana, Arial, Helvetica, sans-serif" color="#ffffff" class="white">What job does the head of the famliy do?</font></b></font></td>
</tr>
<tr> 
	
<td width="56%" class="white" >

<font size="1"><b><font face="Verdana, Arial, Helvetica, sans-serif" color="#ffffff">
<select name="job" onChange="ValidateForm()">
		
<option value="" selected>Please choose one
		
<option value="MP">MP
		
<option value="Portait Painter">Portait Painter
		
<option value="House Painter">House Painter
		
<option value="Freeman builder">Freeman builder
		
<option value="Bricklayer">Bricklayer
		
<option value="Cab Driver">Cab Driver
		
<option value="Plasterer">Plasterer
		
<option value="Journalist">Journalist
		
<option value="General Dealer">General Dealer
		
<option value="Supported by daughter">Supported by daughter
		
<option value="Dress Maker">Dress Maker
		
<option value="Living on own means">Living on own means
		
<option value="Merchant">Merchant
		
<option value="Barrister">Barrister
		
<option value="Farrier">Farrier
		
<option value="Not Given">Not Given
	
</select>
<img src="shim.gif" name="img_job" width="80" height="20" alt="*"></font></b></font> 
 
	</td>
</tr>
<tr>
<td width="56%" height="30" class="white" ><a href="map.htm" target="_parent" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('map','','navi_backtomap2.gif',1)"><img name="map" border="0" src="navi_backtomap.gif" width="120" height="37" alt="Back to map"></a><a href="<% = strStreetMapLink %>" target="_parent" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('street','','navi_tostreet2.gif',1)"><img name="street" border="0" src="navi_tostreet.gif" width="120" height="37" alt="Back to street"></a></td>
</tr>
<tr>
<td width="56%" class="white" ><a href="JavaScript:ResetForm()" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('try','','navi_tryagain2.gif',1)"><img name="try" border="0" src="navi_tryagain1.gif" width="120" height="37" alt="Try again"></a><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('conclusion','','navi_conclusion2.gif',1)" onClick="MM_openBrWindow('conclusion.asp','','scrollbars=yes,resizable=yes,width=500,height=400')"><img name="conclusion" border="0" src="navi_conclusion.gif" width="120" height="37" alt="Conclusion"></a></td>
</tr>


  
</table>
<p>&nbsp;
</p>
</form>
<!--#include virtual="/includes/menu/sdc.inc" -->
</body>
</html>
