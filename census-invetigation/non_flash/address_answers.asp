<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>The National Archives | Focus On... The Census - Answers</title>
<body bgcolor="#006699">
<%
	Dim strAnswer
	Dim strIncome
	Dim strReturned
	
	strIncome = Request.QueryString("income")
	
	If Request.Form("income") = "" Then
%>
<form method="post">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td colspan="2">
			<b><font size="2" face="Verdana, Arial, Helvetica, sans-serif" color="#99ccff">
			Question:</font></b>
		</td>
	</tr>
	<tr>
		<td rowspan="3" width="50%">
			<b><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#ffffff">
			From the questions you have just answered, how wealthy do you think this family is?</font></b>
		</td>
		<td width="50%">
			<input type="radio" name="income" value="Rich">
			<font color="#ffffff" face="Verdana, Arial, Helvetica, sans-serif" size="2"><b>
			Rich</b></font>
		</td>
	</tr>
	<tr>
		<td width="50%">
			<input type="radio" name="income" value="Comfortable">
			<font face="Verdana, Arial, Helvetica, sans-serif" color="#ffffff" size="2"><b>
			Comfortable</b></font>
		</td>
	</tr>
	<tr>
		<td width="50%">
			<input type="radio" name="income" value="Poor">
			<font face="Verdana, Arial, Helvetica, sans-serif" color="#ffffff" size="2"><b>
			Poor</b></font>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<BR>
			<input type="hidden" name="value" value="<% = strIncome %>">
			<input type="submit" name="Submit" value="Submit">
		</td>
	<tr>
</table>
</form>
<%
	Else
		strAnswer = Request.Form("value")
		strIncome = Request.Form("income")
		
		If strIncome = strAnswer Then
			strReturned = "<p align=""center""><IMG SRC=""censushappy.jpg"" ALT=""Well done!"">" & vbCRLF _
						& "</p>"
			Select Case strAnswer
				Case "Poor"
					strReturned = strReturned & "Well done. This family does appear to be poor. The are living in a shared house and have no more than two rooms for often large families. They certainly can't afford servants. More of the family works than in the other houses and the jobs they do are not very well paid."
				Case "Rich"
					strReturned = strReturned & "Well done. This family is very likely to be rich. They have a number of servants, live in more than five rooms and the Head of the Family has a well paid job."
				Case "Comfortable"
					strReturned = strReturned & "Well done. This family can afford some servants and they can afford to live in whole houses. The job done by the head of the family is well paid but that doesnt mean they have lots of money."
			End Select
		Else
			strReturned = "<p align=""center""><IMG SRC=""censussad.jpg"" ALT=""Bad luck!""></p>"
			Select Case strAnswer
				Case "Poor"
					strReturned = strReturned & "Bad Luck. This family is not comfortable or rich, they live in very cramped conditions in a shared house. They can't afford servants and teh jobs they do are not very well paid."
				Case "Rich"
					strReturned = strReturned & "Bad luck. If you think carefully about this family they have a number of servants who they can afford, live in many more than five rooms and the Head of the Family's job is well paid or they live on their own means."
				Case "Comfortable"
					strReturned = strReturned & "Bad Luck. This family are not rich as they live in medium size houses, only have a couple of servants and do jobs that pay a good wage, not a massive one and some also have lodgers to help pay the rent. They are not poor either as they can afford to live in mostly unshared houses, have  a couple of servants and have good jobs."
			End Select
		End If
%>
<font face="Arial, Verdana, Helvetica, sans-serif" color="#ffffff" size="2" align="left">
	<% = strReturned %>
</font>
<%
	End If
%>
<!--#include virtual="/includes/menu/sdc.inc" -->
</body>
</html>