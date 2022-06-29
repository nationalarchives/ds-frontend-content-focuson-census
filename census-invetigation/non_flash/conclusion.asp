<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Final Question</title>
<body bgcolor="#006699">
<%
	Dim intCount
	
	If Request.Form.Count <> 0 Then
%>
<table width="420" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<font face="Arial, Helvetica, sans-serif" size="3" color="#99ccff"><b>
<font face="Verdana, Arial, Helvetica, sans-serif" size="2">Conclusion</font></b></font><br>
<ul>
<font face="Arial, Helvetica, sans-serif" size="3" color="#FFFFFF">
<%
		For intCount = 1 To 8
			Response.Write "<li>" & Request.Form("statement" & intCount) & "</li>" & vbCRLF
		Next
%>
</font>
</ul>
</td>
</tr>


<tr>
<td>
<p align="left"><font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF">You can now print this conclusion out by clicking on the print icon in 
your browser, or by   pressing CTRL + P (PC) or Apple Key + P (Macintosh).</font></p>
<font face="Arial, Helvetica, sans-serif" size="3" color="#FFFFFF"><%
	Else
%>
</font></td>
</tr>
</table>
<br>
<form method="post">
<table width="455" border="0" cellspacing="0" cellpadding="0">
	<tr>
		
<td>
			<font size="2" face="Verdana, Arial, Helvetica, sans-serif" color="#99ccff">
			<font size="3"><b><font color="#FFFFFF">Conclusion</font></b></font><br>
<br>
Hopefully you have investigated all the houses and can now provide a statement about Chelsea in 1891.<br>
			<br>
			Choose the sentences that best describe Chelsea and when you have finished press print to keep your answer.
			</font>
		</td>
	</tr>
	<tr>
		
<td>
			<font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#ffffff"><b><font color="#99ccff"><br>
Question 1.</font></b></font>
			
<p>
<input type="radio" name="statement1" value="The people that lived in Chelsea in 1891 were all quite similar">
<font face="Arial, Helvetica, sans-serif" size="3" color="#FFFFFF">The people that lived in Chelsea in 1891 were all quite similar
.			</font>
<font face="Arial, Helvetica, sans-serif" size="3" color="#FFFFFF">
<input type="radio" name="statement1" value="The people that lived in Chelsea in 1891 had very different lives">
The people that lived in Chelsea in 1891 had very different lives.

		</font>
</td>
	</tr>
	<tr>
		
<td>
			<font color="#ffffff" face="Verdana, Arial, Helvetica, sans-serif" size="2"><b><font color="#99ccff"><br>
Question 2.</font></b></font>
			
<p>
<input type="radio" name="statement2" value="The housing that these people lived in would have been generally the same">
<font face="Arial, Helvetica, sans-serif" size="3" color="#FFFFFF">The housing that these people lived in would have been generally the   same.<br>
</font><font face="Arial, Helvetica, sans-serif" size="3" color="#FFFFFF">
<input type="radio" name="statement2" value="The housing that these people lived in was totally different">
The housing that these people lived in was totally different
.		</font>
</td>
	</tr>
	<tr>
		
<td>
			<font color="#ffffff" face="Verdana, Arial, Helvetica, sans-serif" size="2"><b><font color="#99ccff"><br>
Question 3.</font></b></font>
			
<p>
<input type="radio" name="statement3" value="The houses were mostly split up into smaller units for the families to live in">
<font face="Arial, Helvetica, sans-serif" size="3" color="#FFFFFF">The houses were mostly split up into smaller units for the families to live in.
			</font>
<br>
<font face="Arial, Helvetica, sans-serif" size="3" color="#FFFFFF">
<input type="radio" name="statement3" value="Some of the houses for the poorer people where shared by more than one family">
Some of the houses for the poorer people where shared by more than one family.

</font>		
</td>
	</tr>
	<tr>
		
<td>
			<font color="#ffffff" face="Verdana, Arial, Helvetica, sans-serif" size="2"><b><font color="#99ccff"><br>
Question 4.</font></b></font>
			
<p>
<input type="radio" name="statement4" value="Most families could afford to have a few servants">
<font face="Arial, Helvetica, sans-serif" size="3" color="#FFFFFF">Most families could afford to have a few servants.
			</font>
<br>
<font face="Arial, Helvetica, sans-serif" size="3" color="#FFFFFF">
<input type="radio" name="statement4" value="Most families could afford to have a few servants">
Only the richer families could afford to have lots of servants.
</font>		
</td>
	</tr>
	<tr>
		
<td>
			<font color="#ffffff" face="Verdana, Arial, Helvetica, sans-serif" size="2"><b><font color="#99ccff"><br>
Question 5.</font></b></font>
			
<p>
<input type="radio" name="statement5" value="The people did similar sorts of jobs">
<font face="Arial, Helvetica, sans-serif" size="3" color="#FFFFFF">The people did similar sorts of jobs.
			</font>
<br>
<font face="Arial, Helvetica, sans-serif" size="3" color="#FFFFFF">
<input type="radio" name="statement5" value="The people did not all do the same sorts of jobs">
The people did not all do the same sorts of jobs.</font>

		</td>
	</tr>
	<tr>
		
<td height="78">
			<font color="#ffffff" face="Verdana, Arial, Helvetica, sans-serif" size="2"><b><font color="#99ccff"><br>
Question 6.</font></b></font>
			
<p>
<input type="radio" name="statement6" value="They would have been paid similar amounts">
<font face="Arial, Helvetica, sans-serif" size="3" color="#FFFFFF">They would have been paid similar amounts.
			</font>
<br>
<font face="Arial, Helvetica, sans-serif" size="3" color="#FFFFFF">
<input type="radio" name="statement6" value="They would have been paid very different amounts">
They would have been paid very different amounts.

</font>		
</td>
	</tr>
	<tr>
		
<td>
			<font color="#ffffff" face="Verdana, Arial, Helvetica, sans-serif" size="2"><b><font color="#99ccff"><br>
Question 7.<br>
</font></b></font>
<input type="radio" name="statement7" value="Most poor people living in Chelsea had been born locally">
<font face="Arial, Helvetica, sans-serif" size="3" color="#FFFFFF">Most poor people living in Chelsea had been born locally.<br>
</font><font face="Arial, Helvetica, sans-serif" size="3" color="#FFFFFF">
<input type="radio" name="statement7" value="The rich people in Chelsea had mostly been born locally">
The rich people in Chelsea had mostly been born locally.</font>
<br>
		</td>
	</tr>
	<tr>
		
<td>
			<font color="#ffffff" face="Verdana, Arial, Helvetica, sans-serif" size="2"><b><font color="#99ccff"><br>
Question 8.</font></b></font>
			
<p>
<input type="radio" name="statement8" value="I think the houses that remain today would mainly have the same sorts of people living in them as in 1891">
<font face="Arial, Helvetica, sans-serif" size="3" color="#FFFFFF">I think the houses that remain today would mainly have the same sorts of people living in them as in 1891.
			</font>
<br>
<font face="Arial, Helvetica, sans-serif" size="3" color="#FFFFFF">
<input type="radio" name="statement8" value="I think the houses that remain today would have different sorts of people living in them from 1891">
I think the houses that remain today would have different sorts of people living in them from 1891.

		</font>
</td>
	</tr>
	<tr>
		<td align="center">
			<BR>
			<input type="submit" name="Submit" value="Submit">
		</td>
	<tr>
</table>
</form>
<%
	End If
%>
<!--#include virtual="/includes/menu/sdc.inc" -->
</body>
</html>