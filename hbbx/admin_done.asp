<%@Language="Javascript" CODEPAGE="65001"%> 
<%
var gourl;
gourl=String(Request.QueryString("gourl"));
while(gourl.indexOf("|") != -1)
{
	gourl=gourl.replace("|","&");
}

	if(gourl==null)
	{ 
		gourl="admin_index.asp"
	}
	
%>

<html>

<head>
<meta http-equiv="Refresh" content="2; URL=<%=gourl%>">   <!--2 la so giay cho-->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0"> 
<div align="center">
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
    <tr>
      <td width="100%" bgcolor="#174093" height="20">
	  <p align="center"><b><font face="Verdana" size="2" color="#FFFFFF">THÔNG BÁO</font></b></td>
    </tr>
    <tr>
      <td width="100%">
	  <p align="center">&nbsp;</p>
	  <p align="center"><font face="Tahoma" size="2"><B><%=Request.QueryString("mess")%></B></font></p>
	  <p align="center"></td>
    </tr>
    </table>
</div>
</body>

</html>