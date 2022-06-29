<%
	Option Explicit

	Dim dicQuestion1
	Dim dicQuestion2
	Dim dicQuestion3
	Dim aryQuestions(2)
	Dim aryAnswers(2)
	Dim aryCorrectmsg(2)
	Dim aryWrongmsg(2)
	Dim strAnswer
	Dim intQuestionNum
	
	intQuestionNum = CInt(Request.Form("question_num"))
	If intQuestionNum = 0 Then intQuestionNum = 1
	strAnswer=Request.Form("answer")

	Set dicQuestion1 = CreateObject("Scripting.Dictionary")
	Set dicQuestion2 = CreateObject("Scripting.Dictionary")
	Set dicQuestion3 = CreateObject("Scripting.Dictionary")
	
	aryQuestions(0)= " The first Census taking appeared in the ancient world"
	aryQuestions(1)= " Why was the first Census taken in Britain in 1801?"
	aryQuestions(2)= " Which people in the Bible took part in a Census?"

	aryAnswers(0)= "True"
	aryAnswers(1)= "a"
	aryAnswers(2)= "b"
	
	aryCorrectmsg(0)= " True, the Babylonians, Chinese, Egyptians, Greeks and Romans all counted their people"
	aryCorrectmsg(1)= " Yes, the government needed to know how large the population was to make sure there was enough food to go around."
	aryCorrectmsg(2)= " Yes, in the nativity story, Joseph and Mary had to travel to Bethlehem to take part in the Census ordered by Caesar Augustus which required every man in the Roman Empire to return to his birthplace and be counted."
	
	aryWrongmsg(0)= " Bad luck, the Babylonians, Chinese, Egyptians, Greeks and Romans all counted their people."
	aryWrongmsg(1)= " Bad luck, the government needed to know how large the population was to make sure there was enough food to go around"
	aryWrongmsg(2)= " Bad luck, in the nativity story, Joseph and Mary had to travel to Bethlehem to take part in the Census ordered by Caesar Augustus which required every man in the Roman Empire to return to his birthplace and be counted."	
	
	dicQuestion1.Add "True", " True"
	dicQuestion1.Add "False", " False"
	
	dicQuestion2.Add "a", " The government was worried about the population being able to feed itself "
	dicQuestion2.Add "b", " The King - George III was interested in how many people lived in his country"
	dicQuestion2.Add "c", " The government wanted to tax people properly"
	
	dicQuestion3.Add "a", " Moses"
	dicQuestion3.Add "b", " Joseph and Mary"
	dicQuestion3.Add "c", " Jesus"
	
	
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
		
		aryKeys =dicQuestion.Keys
		For i = 0 To UBound(aryKeys)
			Response.Write "<input type=""radio"" name=""answer"" value=""" & aryKeys(i) & """>" & dicQuestion.Item(aryKeys(i)) & "<BR>" & vbCRLF
		next

		Response.Write "<input type=""hidden"" name=""question_num"" value=""" & intQuestion & """>"
		Response.Write "<p> <input type=""submit"" value=""GO"">"
	End Sub
	
	Sub BuildAnswer(intQuestion, strAnswer)
		If strAnswer = aryAnswers(intQuestion-1) then 
			Response.Write aryCorrectmsg(intQuestion-1) & "<br>"
		Else
			Response.Write arywrongmsg(intQuestion-1) & "<br>"
		End if

		Response.Write "<input type=""hidden"" name=""question_num"" value=""" & intQuestion + 1 & """>"
		If intQuestion = 3 Then
			Response.Write "<p><a href=""JavaScript:closeWindow()"">Close Window</A>"
		Else
			Response.Write "<p><input type=""submit"" value=""Next"">"
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
</head>

<body bgcolor="#FF9900" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<form method="post">
<br>
<table width="400" border="0" cellspacing="0" cellpadding="0" align="center">
<tr>
<td><font face="Arial, Helvetica, sans-serif" size="3" color="#000000"><b>Quiz Two</b></font></td>
</tr>
</table>
<br>
<table width="400" border="0" cellspacing="0" cellpadding="0" align="center" height="200" background="../graphics/activities/poor_street_bg.jpg">
<tr>
<td width="37"></td>
<td width="337"><font face="Arial, Helvetica, sans-serif" size="2" color="#000000"><b>
<%
	If strAnswer <> "" Then
		BuildAnswer intQuestionNum, strAnswer
	Else
		BuildQuestion intQuestionNum
	End If
%>
</b></font></td>
<td width="26"></td>
</tr>
</table>
<br>
</form>
<!--#include virtual="/includes/menu/sdc.inc" -->
</body>
</html>
