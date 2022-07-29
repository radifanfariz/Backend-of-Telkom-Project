<!--- 
<html><head>
<title>
Form Entry Ijin Pertemuan
</title><link rel="stylesheet" type="text/css" href="style.css">	
</head> --->



	<head>
		<link rel="stylesheet" type="text/css" href="style.css">	
	</head>

	
	<select class="wselect" name="thn_pertemuan">
		<cfloop index="thn_pertemuan" from="2003" to="2020">
			<cfoutput>
				<option  value="#thn_pertemuan#" <cfif #DatePart("y", "#Now()#")# is #thn_pertemuan#>selected</cfif>>#thn_pertemuan#</option>
			</cfoutput>
		</cfloop>
	</select><br>



	<tr>
		<td align="center">
		<input type="Text" class="winput" name="no_ijin" size="35" maxlength="35">
		</td>
	</tr><br>

	
	
	<tr>
		<td colspan="2" align="center">
		<input type="submit" class="wbutton" value="Kirim Data">
		&nbsp;  &nbsp; &nbsp; 
		<input  type="reset" class="wbutton" value="Batal">
		</td>
	</tr><br>
<br>
<a href="test1.cfm">test1</a>