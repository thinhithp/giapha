<%
Response.Buffer = True
er= Request.QueryString("er")
' tenfile = Request.QueryString("file_name")
'-----------------------------------------------------------------------------
'Muli File's upload Created by Bhushan Paranjpe
'-----------------------------------------------------------------------------
Sub BuildUploadRequest(RequestBin)
  'Get the boundary
  PosBeg = 1
  PosEnd = InstrB(PosBeg,RequestBin,getByteString(chr(13)))
  if PosEnd = 0 then
    Response.Write "<b>Form was submitted with no ENCTYPE=""multipart/form-data""</b><br>"
    Response.Write "Please correct the form attributes and try again."
    Response.End
  end if
  boundary = MidB(RequestBin,PosBeg,PosEnd-PosBeg)
  boundaryPos = InstrB(1,RequestBin,boundary)
  'Get all data inside the boundaries
  Do until (boundaryPos=InstrB(RequestBin,boundary & getByteString("--")))
    'Members variable of objects are put in a dictionary object
    Dim UploadControl
    Set UploadControl = CreateObject("Scripting.Dictionary")
    'Get an object name
    Pos = InstrB(BoundaryPos,RequestBin,getByteString("Content-Disposition"))
    Pos = InstrB(Pos,RequestBin,getByteString("name="))
    PosBeg = Pos+6
    PosEnd = InstrB(PosBeg,RequestBin,getByteString(chr(34)))
    Name = getString(MidB(RequestBin,PosBeg,PosEnd-PosBeg))
    PosFile = InstrB(BoundaryPos,RequestBin,getByteString("filename="))
    PosBound = InstrB(PosEnd,RequestBin,boundary)
    'Test if object is of file type
    If  PosFile<>0 AND (PosFile<PosBound) Then
      'Get Filename, content-type and content of file
      PosBeg = PosFile + 10
      PosEnd =  InstrB(PosBeg,RequestBin,getByteString(chr(34)))
      FileName = getString(MidB(RequestBin,PosBeg,PosEnd-PosBeg))
      FileName = Mid(FileName,InStrRev(FileName,"\")+1)
      'Add filename to dictionary object
      UploadControl.Add "FileName", FileName
      Pos = InstrB(PosEnd,RequestBin,getByteString("Content-Type:"))
      PosBeg = Pos+14
      PosEnd = InstrB(PosBeg,RequestBin,getByteString(chr(13)))
      'Add content-type to dictionary object
      ContentType = getString(MidB(RequestBin,PosBeg,PosEnd-PosBeg))
      UploadControl.Add "ContentType",ContentType
      'Get content of object
      PosBeg = PosEnd+4
      PosEnd = InstrB(PosBeg,RequestBin,boundary)-2
      Value = FileName
	  session("Value")=Value
      ValueBeg = PosBeg-1
      ValueLen = PosEnd-Posbeg
    Else
      'Get content of object
      Pos = InstrB(Pos,RequestBin,getByteString(chr(13)))
      PosBeg = Pos+4
      PosEnd = InstrB(PosBeg,RequestBin,boundary)-2
      Value = getString(MidB(RequestBin,PosBeg,PosEnd-PosBeg))
      ValueBeg = 0
      ValueEnd = 0
    End If
    'Add content to dictionary object
    UploadControl.Add "Value" , Value	
    UploadControl.Add "ValueBeg" , ValueBeg
    UploadControl.Add "ValueLen" , ValueLen	
    'Add dictionary object to main dictionary
    UploadRequest.Add name, UploadControl	
    'Loop to next object
    BoundaryPos=InstrB(BoundaryPos+LenB(boundary),RequestBin,boundary)
  Loop
End Sub

'String to byte string conversion
Function getByteString(StringStr)
  For i = 1 to Len(StringStr)
 	  char = Mid(StringStr,i,1)
	  getByteString = getByteString & chrB(AscB(char))
  Next
End Function

'Byte string to string conversion
Function getString(StringBin)
  getString =""
  For intCount = 1 to LenB(StringBin)
	  getString = getString & chr(AscB(MidB(StringBin,intCount,1))) 
  Next
End Function

Function UploadFormRequest(name)
  on error resume next
  if UploadRequest.Item(name) then
    UploadFormRequest = UploadRequest.Item(name).Item("Value")
  end if  
End Function

'Process the upload
UploadQueryString = Replace(Request.QueryString,"AF_upload=true","")
if mid(UploadQueryString,1,1) = "&" then
	UploadQueryString = Mid(UploadQueryString,2)
end if

AF_uploadAction = CStr(Request.ServerVariables("URL")) & "?AF_upload=true"
If (Request.QueryString <> "") Then  
  if UploadQueryString <> "" then
	  AF_uploadAction = AF_uploadAction & "&" & UploadQueryString
  end if 
End If

If (CStr(Request.QueryString("AF_upload")) <> "") Then
  AF_redirectPage = "pop_upload2.asp?er=1"
  If (AF_redirectPage = "") Then
    AF_redirectPage = CStr(Request.ServerVariables("URL"))
  end if
    
  RequestBin = Request.BinaryRead(Request.TotalBytes)
  Dim UploadRequest
  Set UploadRequest = CreateObject("Scripting.Dictionary")  
  BuildUploadRequest RequestBin
  
  AF_keys = UploadRequest.Keys
  for AF_i = 0 to UploadRequest.Count - 1
    AF_curKey = AF_keys(AF_i)
    'Save all uploaded files
    if UploadRequest.Item(AF_curKey).Item("FileName") <> "" then
      AF_value = UploadRequest.Item(AF_curKey).Item("Value")
      AF_valueBeg = UploadRequest.Item(AF_curKey).Item("ValueBeg")
      AF_valueLen = UploadRequest.Item(AF_curKey).Item("ValueLen")

      if AF_valueLen = 0 then
        Response.Write "<B>An error has occured saving uploaded file!</B><br><br>"
        Response.Write "Filename: " & Trim(AF_curPath) & UploadRequest.Item(AF_curKey).Item("FileName") & "<br>"
        Response.Write "File does not exists or is empty.<br>"
        Response.Write "Please correct and <A HREF=""javascript:history.back(1)"">try again</a>"
	  	  response.End
	    end if
      
      'Create a Stream instance
      Dim AF_strm1, AF_strm2
      Set AF_strm1 = Server.CreateObject("ADODB.Stream")
      Set AF_strm2 = Server.CreateObject("ADODB.Stream")
      
      'Open the stream
      AF_strm1.Open
      AF_strm1.Type = 1 'Binary
      AF_strm2.Open
      AF_strm2.Type = 1 'Binary
        
      AF_strm1.Write RequestBin
      AF_strm1.Position = AF_ValueBeg
      AF_strm1.CopyTo AF_strm2,AF_ValueLen
    
      'Create and Write to a File
      AF_curPath ="../Images/Tintuc/" ' Request.ServerVariables("PATH_INFO") 
      AF_curPath = Trim(Mid(AF_curPath,1,InStrRev(AF_curPath,"/")) & "")
      if Mid(AF_curPath,Len(AF_curPath),1) <> "/" then
        AF_curPath = AF_curPath & "/"
      end if  
      on error resume next
      AF_strm2.SaveToFile Trim(Server.mappath(AF_curPath))& "\" & UploadRequest.Item(AF_curKey).Item("FileName"),2
      if err then
        Response.Write "<B>An error has occured saving uploaded file!</B><br><br>"
        Response.Write "Filename: " & Trim(AF_curPath) & UploadRequest.Item(AF_curKey).Item("FileName") & "<br>"
        Response.Write "Maybe the destination directory does not exist, or you don't have write permission.<br>"
        Response.Write "Please correct and <A HREF=""javascript:history.back(1)"">try again</a>"
  		  err.clear
	  	  response.End
	    end if
    end if
  next
  

  If (AF_redirectPage <> "") Then
    If (InStr(1, AF_redirectPage, "?", vbTextCompare) = 0 And UploadQueryString <> "") Then
      AF_redirectPage = AF_redirectPage & "?" & UploadQueryString
    End If
    Call Response.Redirect(AF_redirectPage)  
  end if  
  
end if  
if UploadQueryString <> "" then
  UploadQueryString = UploadQueryString & "&AF_upload=true"
else  
  UploadQueryString = "AF_upload=true"
end if  

%>
<html>
<head>
<title>UpLoad Images</title>
<meta name="copyright" content="">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script language="JavaScript">
<!--

function getFileExtension(filePath) { //v1.0
  fileName = ((filePath.indexOf('/') > -1) ? filePath.substring(filePath.lastIndexOf('/')+1,filePath.length) : filePath.substring(filePath.lastIndexOf('\\')+1,filePath.length));
  return fileName.substring(fileName.lastIndexOf('.')+1,fileName.length);
}

function checkFileUpload(form,extensions) { //v1.0

//document.MM_returnValue.filename=document.MM_returnValue.Files7
//alert(document.MM_returnValue.filename);
  document.MM_returnValue = true;
  if (extensions && extensions != '') {
    for (var i = 0; i<form.elements.length; i++) {
      field = form.elements[i];
      if (field.type.toUpperCase() != 'FILE') continue;
      if (field.value == '') {
        alert('Yeu cau file!');
        document.MM_returnValue = false;field.focus();break;
      }
      if (extensions.toUpperCase().indexOf(getFileExtension(field.value).toUpperCase()) == -1) {
        alert('File nay khong duoc phep tai len!');
        document.MM_returnValue = false;field.focus();break;
  } } }
}

//Ham nay tra ve ten cua file cho trang truoc
	function AddContent()
	{
		
		var ten_file = document.Add.ten_file.value;
	//	alert(ten_file);
		window.opener.document.frmAddNews.pathanh.value="../Images/Tintuc/"+ten_file;
		window.close()
	}
//-->
</script>
</head>
<body  text="#000000">
<%if er=1 then%>
	<center>
<font face="Arial" size="4" color="red"><b>Bạn đã tải ảnh thành công! Hãy bấm vào nút ở dưới để thêm ảnh !</b></font><br>
<br>
	<input name="&#272;&oacute;ng" type="button" value="Thêm ảnh" onClick="AddContent()">
</center>
<%else%>
<table width="100%" height="100%">
  <tr>
    <td align=center valign=top>
    <div align=center>
<table border="1" cellpadding="4" cellspacing="0" bordercolor="92ABD0" width="90%" align="center" style="border-collapse: collapse">
<tr>
<td bgcolor="E7EBF7">
<font face="Arial" size="3" color="midnightblue" ><b>Tải ảnh</b></font>
</td>
</tr>
<tr>
<td>
 <br>
<div align="center"> 
<!--Begin Form-->
<form name="ASP" method="post" action="<%=AF_uploadAction%>" enctype="multipart/form-data" onSubmit="checkFileUpload(this,'');return document.MM_returnValue">
   <TABLE width="90%" border=0 cellspacing=2 cellpadding=2  >
    <TR>
     <TD>
    </TD>
    </TR>
    <TR>
     <TD><br><font face="Arial" size="2">Chọn file - (*.gif,*.jpg,*.jpeg,*.png)</font><br>
      <INPUT name="Files7" type="FILE"  value="" size="35">
		<input name="filename" type="hidden" value=<%'=Filename%>>
     </TD>
    </TR>
	<TR>
     <TD ><div align="center"><br>
           <input type="reset" value="Xoá" name="B1">
          <INPUT name="Submit1"  type=SUBMIT value="T&#7843;i l&#234;n" onclick='value="Xin đợi...";'>
     </div></TD>    
    </TR>
  </FORM>
   </TABLE>
   </font>
</td>
</tr>
</table>   
       </font>
<%end if%>
	
<form name="Add" method="Post">
<INPUT name="ten_file" type="hidden" value="<%=session("Value")%>">
</form>

</body>
</html>