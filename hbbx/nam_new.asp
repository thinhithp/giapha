<!--#include file="connection.asp"-->
<%if session("username")="" then response.Redirect("default.asp") end if%>
<% 
if request("action")="submit" then
	title=replace(request("title"),"'","''")
	posotion=replace(request("posotion"),"'","''")
	 openconn
	 set rs=server.CreateObject("adodb.recordset")
	 sql="insert into tblnam(name,positions) values(N'"&title&"','"&posotion&"')"
	 conn.execute(sql)
	 response.Redirect("nam_list.asp")
%>
<%end if%>
<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>New Page 1</title>
<link rel="stylesheet" type="text/css" href="styles/cms.css">
</head>
<script language="javascript1.2" type="text/javascript">
function check_input()
{
	var NTitle=document.frmNews.txtNTitle.value;
	var NImage=document.frmNews.txtNImage.value;
	var NSumary=document.frmNews.MsgTitle.value;
	var NContent=document.frmNews.MsgContent.value;
	if (NTitle==""){alert("Bạn chưa nhập tiêu đề cho tin"); document.frmNews.txtNTitle.focus() ; return false;}
	//if (NImage=="")(alert("Bạn chưa chọn hình ảnh"); document.frmNews. ;return false);
	if (NSumary==""){alert("Bạn chưa nhập tóm tắt cho tin"); document.frmNews.MsgTitle.focus() ; return false;}
	if (NContent==""){alert("Bạn chưa nhập nội dung của tin"); document.frmNews.MsgContent.focus() ; return false;}
	return true;		
}
function do_add()
{
	if (check_input())
	{
		document.frmNews.action="message_new.asp?action=add";
		document.frmNews.submit();
	}
}
function openWindow(url) {
		  popupWin = window.open(url,'new_page','width=400,height=200,scrollbars=no');

		}
</script>
<body topmargin="0" leftmargin="0" bgcolor="#F7F7EF">
<!--#INCLUDE file="fckeditor.asp" -->
<%
	Dim oFCKeditor
	Set oFCKeditor = New FCKeditor
	oFCKeditor.BasePath="/NinhBinh/admin/"
%>
<form name="frmAddNews" method="post">
<input type="hidden" name="action" value="submit">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
  <tr>
    <td width="100%" align="LEFT"><b><font size="3" color="#4A865A">THÊM MỚI NĂM</font></b></td>
  </tr>
  <tr>
    <td width="100%">
   	 <table border="0" cellpadding="3" cellspacing="0" style="border-collapse: collapse" width="400">
		  <tr>
			<td width="100" nowrap>Tên năm</td>
			<td width="300" align="left">
			<input name="title" type="text" style="font-family: Verdana; font-size: 8pt; width:100"></td>
		  </tr>
		  <tr>
			<td width="100" nowrap>Thứ tự hiển thị</td>
			<td width="300" align="left">
			<input name="posotion" type="text" style="font-family: Verdana; font-size: 8pt; width:100"></td>
		  </tr>
        <tr align="center">
			<td width="100" nowrap></td>
          	<td width="700" align="left">
				<input type="submit" name="submit" value="Th&#234;m m&#7899;i">
            </td>
        </tr>
	</table>
	</td>
	</tr>
</table>
</form>
</body>
</html>
