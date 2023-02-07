<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<%

Function Convertbcn(Titolo)
	Risultato = Titolo
	Risultato = Replace(Risultato, "&", "/")
	Convertbcn = Risultato
End Function

Function ConvertiTitoloInNomeScript(Titolo)
	Risultato = Titolo
	Risultato = NoHTML(Risultato)
	Risultato = LCase(Risultato)
	Risultato = Replace(Risultato, "-", "_")
	Risultato = Replace(Risultato, " ", "-")
	Risultato = Replace(Risultato, "\", "-")
	Risultato = Replace(Risultato, "/", "-")
	Risultato = Replace(Risultato, ":", "-")
	Risultato = Replace(Risultato, "*", "-")
	Risultato = Replace(Risultato, "?", "-")
	Risultato = Replace(Risultato, "<", "-")
	Risultato = Replace(Risultato, ">", "-")
	Risultato = Replace(Risultato, "|", "-")
	Risultato = Replace(Risultato, """", "")
	Risultato = Replace(Risultato, "'", "-")
	Risultato = Replace(Risultato, "â", "a")
	Risultato = Replace(Risultato, "ầ", "a")
	Risultato = Replace(Risultato, "ấ", "a")
	Risultato = Replace(Risultato, "ậ", "a")
	Risultato = Replace(Risultato, "ẩ", "a")
	Risultato = Replace(Risultato, "ẫ", "a")
	Risultato = Replace(Risultato, "ă", "a")
	Risultato = Replace(Risultato, "ắ", "a")
	Risultato = Replace(Risultato, "ặ", "a")
	Risultato = Replace(Risultato, "ằ", "a")
	Risultato = Replace(Risultato, "ẵ", "a")
	Risultato = Replace(Risultato, "ẳ", "a")
	Risultato = Replace(Risultato, "à", "a")
	Risultato = Replace(Risultato, "ạ", "a")	
	Risultato = Replace(Risultato, "ả", "a")
	Risultato = Replace(Risultato, "á", "a")
	Risultato = Replace(Risultato, "ã", "a")
	Risultato = Replace(Risultato, "đ", "d")
	Risultato = Replace(Risultato, "ê", "e")
	Risultato = Replace(Risultato, "é", "e")
	Risultato = Replace(Risultato, "ế", "e")
	Risultato = Replace(Risultato, "ề", "e")
	Risultato = Replace(Risultato, "ệ", "e")
	Risultato = Replace(Risultato, "ễ", "e")
	Risultato = Replace(Risultato, "ể", "e")
	Risultato = Replace(Risultato, "è", "e")
	Risultato = Replace(Risultato, "ẹ", "e")
	Risultato = Replace(Risultato, "ẻ", "e")
	Risultato = Replace(Risultato, "ẽ", "e")
	Risultato = Replace(Risultato, "í", "i")
	Risultato = Replace(Risultato, "ì", "i")
	Risultato = Replace(Risultato, "ỉ", "i")
	Risultato = Replace(Risultato, "ĩ", "i")
	Risultato = Replace(Risultato, "ị", "i")
	Risultato = Replace(Risultato, "ồ", "o")
	Risultato = Replace(Risultato, "ộ", "o")	
	Risultato = Replace(Risultato, "ô", "o")
	Risultato = Replace(Risultato, "ó", "o")
	Risultato = Replace(Risultato, "ổ", "o")
	Risultato = Replace(Risultato, "ộ", "o")		
	Risultato = Replace(Risultato, "ơ", "o")	
	Risultato = Replace(Risultato, "ở", "o")	
	Risultato = Replace(Risultato, "ợ", "o")	
	Risultato = Replace(Risultato, "ỡ", "o")
	Risultato = Replace(Risultato, "õ", "o")
	Risultato = Replace(Risultato, "ờ", "o")
	Risultato = Replace(Risultato, "ớ", "o")
	Risultato = Replace(Risultato, "ọ", "o")
	Risultato = Replace(Risultato, "ố", "o")
	Risultato = Replace(Risultato, "ò", "o")
	Risultato = Replace(Risultato, "ú", "u")	
	Risultato = Replace(Risultato, "ụ", "u")
	Risultato = Replace(Risultato, "ủ", "u")
	Risultato = Replace(Risultato, "ư", "u")
	Risultato = Replace(Risultato, "ù", "u")
	Risultato = Replace(Risultato, "ừ", "u")
	Risultato = Replace(Risultato, "ứ", "u")
	Risultato = Replace(Risultato, "ử", "u")
	Risultato = Replace(Risultato, "ự", "u")
	Risultato = Replace(Risultato, "ữ", "u")
	Risultato = Replace(Risultato, "ũ", "u")
	Risultato = Replace(Risultato, "ỷ", "y")
	Risultato = Replace(Risultato, "ỵ", "y")
	Risultato = Replace(Risultato, "ỹ", "y")
	Risultato = Replace(Risultato, "ý", "y")
	Risultato = Replace(Risultato, "ỳ", "y")
	Risultato = Replace(Risultato, "'", "-")
	Risultato = Replace(Risultato, "!", "-")	
	Risultato = Replace(Risultato, "@", "-")
	Risultato = Replace(Risultato, "$", "-")
	Risultato = Replace(Risultato, "^", "-")
	Risultato = Replace(Risultato, "#", "-")
	Risultato = Replace(Risultato, "%", "-")
	Risultato = Replace(Risultato, ".", "-")
	Risultato = Replace(Risultato, ",", "-")
	Risultato = Replace(Risultato, ";", "-")

	ConvertiTitoloInNomeScript = Risultato
End Function

Function NoHTML(Stringa)
 Set RegEx = New RegExp
 RegEx.Pattern = "<[^>]*>"
 RegEx.Global = True
 RegEx.IgnoreCase = True
 NoHTML = RegEx.Replace(Stringa, "")
End Function

Private Function TrimString(strInputString, intStringLength)

	Dim intTrimLentgh

	'Trim the string down
	strInputString = Trim(strInputString) & " "

	'If the length of the text is longer than the max then cut it and place '...' at the end
	If CLng(Len(strInputString)) > intStringLength Then
		
		'Get the part in the string to trim it from
		intTrimLentgh = InStr(intStringLength, strInputString, " ", vbTextCompare)
		
		'If intTrimLentgh = 0 then set it to the default passed to the function (Error handling, should never be used)
		If intTrimLentgh = 0 Then intTrimLentgh = intStringLength
		
		'Trim the number of characters down to the required amount, but try not to chop words in half
		strInputString = Mid(strInputString, 1, intTrimLentgh)

		'Make sure the user hasn't entered a long line of text with no break (most words won't be over 30 chars
		If CLng(Len(strInputString)) => intStringLength + 30 Then
			strInputString = Mid(Trim(strInputString), 1, intStringLength)
		End If

		'Place '...' at the end
		 strInputString = Trim(strInputString) & "..."
	End If

	'Return string
	TrimString = strInputString
End Function

 Function HandleError
 	'Save Log here
	Ret = True
 	If Err.Number <> 0 then
		'HandleError Err.Description
		Error.Clear
		Ret = False
	End If
	HandleError = Ret	
End Function

'Format SQL Query funtion
Private Function formatSQLInput(ByVal strInputEntry)

	If strInputEntry=Null then
		formatSQLInput = ""
	Else
	'Remove malisous charcters from links and images
	strInputEntry = Replace(strInputEntry, "<", "&lt;")
	strInputEntry = Replace(strInputEntry, ">", "&gt;")
	strInputEntry = Replace(strInputEntry, """", "", 1, -1, 1)
	strInputEntry = Replace(strInputEntry, "=", "&#061;", 1, -1, 1)
	strInputEntry = Replace(strInputEntry, "'", "''", 1, -1, 1)
	strInputEntry = Replace(strInputEntry, "select", "sel&#101;ct", 1, -1, 1)
	strInputEntry = Replace(strInputEntry, "join", "jo&#105;n", 1, -1, 1)
	strInputEntry = Replace(strInputEntry, "union", "un&#105;on", 1, -1, 1)
	strInputEntry = Replace(strInputEntry, "where", "wh&#101;re", 1, -1, 1)
	strInputEntry = Replace(strInputEntry, "insert", "ins&#101;rt", 1, -1, 1)
	strInputEntry = Replace(strInputEntry, "delete", "del&#101;te", 1, -1, 1)
	strInputEntry = Replace(strInputEntry, "update", "up&#100;ate", 1, -1, 1)
	strInputEntry = Replace(strInputEntry, "like", "lik&#101;", 1, -1, 1)
	strInputEntry = Replace(strInputEntry, "drop", "dro&#112;", 1, -1, 1)
	strInputEntry = Replace(strInputEntry, "create", "cr&#101;ate", 1, -1, 1)
	strInputEntry = Replace(strInputEntry, "modify", "mod&#105;fy", 1, -1, 1)
	strInputEntry = Replace(strInputEntry, "rename", "ren&#097;me", 1, -1, 1)
	strInputEntry = Replace(strInputEntry, "alter", "alt&#101;r", 1, -1, 1)
	strInputEntry = Replace(strInputEntry, "cast", "ca&#115;t", 1, -1, 1)
	strInputEntry = Replace(strInputEntry, "form", "", 1, -1, 1)

	'Return
	formatSQLInput = strInputEntry
	End if
End Function

 %>
 
 