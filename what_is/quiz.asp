
<%
	Option Explicit

	Dim dicQuestion1
	Dim dicQuestion2
	Dim dicQuestion3
	Dim aryQuestions(2)
	Dim aryAnswers(1)
	Dim aryCorrectmsg(2)
	Dim aryWrongmsg(1)
	Dim strAnswer
	Dim intQuestionNum

	intQuestionNum = CInt(Request.Form("question_num"))
	If intQuestionNum = 0 Then intQuestionNum = 1
	strAnswer=Request.Form("answer")

	Set dicQuestion1 = CreateObject("Scripting.Dictionary")
	Set dicQuestion2 = CreateObject("Scripting.Dictionary")
	Set dicQuestion3 = CreateObject("Scripting.Dictionary")
	
	aryQuestions(0)= "How often is the Census taken?"
	aryQuestions(1)= "What happened if the householder could not fill in the Census form?"
	aryQuestions(2)= "Where would I go to view the Census?"

	aryAnswers(0)= "b"
	aryAnswers(1)= "c"
	
	aryCorrectmsg(0)= "Yes, the Census has been taken every ten years since 1801."
	aryCorrectmsg(1)= "Yes, the enumerator filled in the form for people who could not read or write."
	aryCorrectmsg(2)= "Well done! In fact all three are correct, but only the 1901 Census will be available on the internet but not until 2002."
	
	aryWrongmsg(0)= "Bad luck, the Census has been taken every ten years since 1801."
	aryWrongmsg(1)= "Bad luck, the enumerator filled in the form for people who could not read or write."
	
	dicQuestion1.Add "a", " Once every year"
	dicQuestion1.Add "b", " Once every ten years"
	dicQuestion1.Add "c", " Once every fifty years"
	
	dicQuestion2.Add "a", " They were not recorded in the Census"
	dicQuestion2.Add "b", " They got a friend to fill it in for them"
	dicQuestion2.Add "c", " The enumerator did it for them"
	
	dicQuestion3.Add "a", " The Family Records Centre Islington, London"
	dicQuestion3.Add "b", " Local Libraries and Record Offices"
	dicQuestion3.Add "c", " On the Internet"
	
	
	Sub BuildQuestion(intQuestion)
		Dim i
		Dim aryKeys
		Dim dicQuestion
		
		Response.Write aryQuestions(intQuestion - 1) & "<BR>" & vbCRLF
		
		' select which dictionary to pull the questions from
		Select Case intQuestion
			Case 1 : Set dicQuestion = dicQuestion1
			Case 2 : Set dicQuestion = dicQuestion2
			Case 3 : Set dicQuestion = dicQuestion3
		End Select
		
		aryKeys = dicQuestion.Keys
		For i = 0 To UBound(aryKeys)
			Response.Write "<input type=""radio"" name=""answer"" value=""" & aryKeys(i) & """>" & dicQuestion.Item(aryKeys(i)) & "<BR>" & vbCRLF
		next

		Response.Write "<input type=""hidden"" name=""question_num"" value=""" & intQuestion & """>"
		Response.Write "<p> <input type=""submit"" value=""GO"">"
	End Sub
	
	Sub BuildAnswer(intQuestion, strAnswer2)
		if intQuestion = 3 then
			Response.Write aryCorrectmsg(intQuestion-1) & "<br>"
		ElseIf strAnswer2 = aryAnswers(intQuestion-1) then 
			Response.Write aryCorrectmsg(intQuestion-1) & "<br>"
		Else
			Response.Write arywrongmsg(intQuestion-1) & "<br>"
		End if

		Response.Write "<input type=""hidden"" name=""question_num"" value=""" & intQuestion + 1 & """>"
		If intQuestion = 3 Then
			Response.Write "<p><a href=""JavaScript:closeWindow()"">Close Window</A>"
		Else
			Response.Write "<p><input type=""submit"" value=""Next"" id=1 name=1>"
		End If
	End Sub
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Learning Curve - Focus On... The Census - Quiz 1</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript"> 

function closeWindow()

{window.close();
}

</script>
<style type="text/css">
<!--
.text {  font-family: Arial, Helvetica, sans-serif; font-size: 11pt; font-style: normal; line-height: normal; font-weight: normal; font-variant: normal; color: #000000; text-align: center}
-->
</style>
</head>

<body bgcolor="#FF9900" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<form method="post">
<div align="center"><br>
<table width="400" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><font face="Arial, Helvetica, sans-serif" size="3"><b><font color="#000000">Quiz One</font></b></font></td>
</tr>
</table>
<br>
</div>
<table width="400" border="0" cellspacing="0" cellpadding="0" height="200" align="center" background="../graphics/activities/richpeople_bg.jpg">
<tr>
<td width="29">

</td>
<td width="341">
<font face="Arial, Helvetica, sans-serif" size="2" color="#000000"><b>
<%
	If strAnswer <> "" Then
		BuildAnswer intQuestionNum, strAnswer
	Else
		BuildQuestion intQuestionNum
	End If
%>
</b></font>
</td>
<td width="30"></td>
</tr>
</table>
</form>
<!--#include virtual="/includes/menu/sdc.inc" -->
</body>
</html>
