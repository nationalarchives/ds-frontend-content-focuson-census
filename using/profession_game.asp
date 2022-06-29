<%
	Option Explicit

	Dim aryOptions(3)
	Dim aryKeys
	Dim strKey
	Dim intCount
	Dim dicQuestions
	
	aryOptions(0) = "Poorly paid" 
	aryOptions(1) = "Comfortable"
	aryOptions(2) = "Well paid"
	aryOptions(3) = "In education"

	Set dicQuestions = CreateObject("Scripting.Dictionary")
	
	dicQuestions.Add "Brick_Layer", "Poorly paid"
	dicQuestions.Add "Scholar", "In education"
	dicQuestions.Add "Kitchen_Maid", "Poorly paid"
	dicQuestions.Add "Page", "Poorly paid"
	dicQuestions.Add "Governess", "Comfortable"
	dicQuestions.Add "Merchant", "Well paid"
	dicQuestions.Add "Plasterer", "Poorly paid"
	dicQuestions.Add "Butler", "Comfortable"
	dicQuestions.Add "Farrier_(Smith)", "Poorly paid"
	dicQuestions.Add "Journalist", "Comfortable"
	dicQuestions.Add "General_Dealer", "Poorly paid"
	dicQuestions.Add "Portrait_Painter", "Comfortable"
	dicQuestions.Add "Porter", "Poorly paid"
	dicQuestions.Add "Cook", "Comfortable"
	dicQuestions.Add "Living_on_own_means", "Well paid"
	dicQuestions.Add "Gardener", "Poorly paid"
	dicQuestions.Add "General_Servant", "Poorly paid"
	dicQuestions.Add "Member_of_Parliament", "Well paid"


	Sub BuildRow(strKey)
		Dim strChecked
		Dim strOption
		Dim blnCorrect
		
		Response.Write "<tr><td><img src=""../graphics/activities/non_flash/" & strKey & ".gif"" width=""103"" height=""21"" alt=""" & Replace(strKey, "_", " ") & """></td>"
		For Each strOption In aryOptions
			If Request.Form(LCase(strKey)) = dicQuestions.Item(strKey) And dicQuestions.Item(strKey) = strOption Then 
				strChecked = " checked"
				blnCorrect = True
				intCount = intCount + 1
			Else
				strChecked = ""
			End If

			Response.Write "<td align=""center""><input type=""radio"" name=""" & LCase(strKey) & """ value=""" & strOption & """" & strChecked & "></td>"
		Next

		If blnCorrect Then
			Response.Write "<td><img src=""../graphics/activities/non_flash/correct.gif"" width=""34"" height=""21"" alt=""Correct!""></td>"
		Else
			Response.Write "<td>&nbsp;</td>"
		End If
		Response.Write "</tr>" & vbCRLF
	End Sub
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Profession Game</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#FFCC66" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<form method="post">
<table border="0">
	<tr>
		<td>&nbsp;
			
		</td>
		
<td>
			<img src="../graphics/activities/non_flash/poorly_paid.gif" width="120" height="25" alt="Poorly paid">
		</td>
<td><img src="../graphics/activities/non_flash/Comfortable.gif" width="120" height="25" alt="Comfortable">
			
		</td>
<td><img src="../graphics/activities/non_flash/Well_paid.gif" width="120" height="25" alt="Well paid">
			
		</td>
		
<td>
			
		<img src="../graphics/activities/non_flash/In_Education.gif" width="120" height="25" alt="In Education"></td>
		<td>&nbsp;
			
		</td>
	</tr>
<%
	aryKeys = dicQuestions.Keys
	
	For Each strKey In aryKeys
		BuildRow(strKey)
	Next
%>
	<tr>
		
<td colspan="6" align="center"><font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF">
<%
	If intCount > 0 And intCount < 18 Then
		Response.Write "<p>&nbsp;</p><p>You've got " & intCount & " out of 18 correct so far.</p>"
		Response.Write "<input type=""submit"" value=""Check Answers"">"
	ElseIf intCount = 18 Then
		Response.Write "<p>&nbsp;</p><p>Well done! You've got them all right!</p>"
	Else
		Response.Write "<p>&nbsp;</p><input type=""submit"" value=""Check Answers"">"
	End If
%>
		</font></td>
	</tr>
</table>

</form>
<!--#include virtual="/includes/menu/sdc.inc" -->
</body>
</html>
