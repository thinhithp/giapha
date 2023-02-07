<!--#include file="connection.asp"-->
<%if session("username")="" then response.Redirect("default.asp") end if%>
<% 
if request("action")="submit" then
	idparrent=replace(request("idparrent"),"'","''")
	title=replace(request("title"),"'","''")
	posotion=replace(request("posotion"),"'","''")
	 openconn
	 set rs=server.CreateObject("adodb.recordset")
	 sql="insert into tblmodule(idparrent,name,positions) values('"&idparrent&"',N'"&title&"','"&posotion&"')"
	 conn.execute(sql)
	 response.Redirect("module_list.asp")
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
	if (NTitle==""){alert("Bạn chưa nhập tiêu đề"); document.frmNews.txtNTitle.focus() ; return false;}
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
	oFCKeditor.BasePath="/admin/"
%>
<form name="frmAddNews" method="post">
<input type="hidden" name="action" value="submit">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
  <tr>
    <td width="100%" align="center"><b><font size="3" color="#4A865A">THÊM MỚI MODULE</font></b></td>
  </tr>
  <tr>
    <td width="100%">
   	 <table border="0" cellpadding="3" cellspacing="0" style="border-collapse: collapse" width="100%">
		  <tr>
			<td nowrap colspan="2" bgcolor="#DEDBCE"><b>THÔNG TIN MODULE</b></td>
		  </tr>
		 			 <%
							openconn
							set rs1= server.CreateObject("adodb.recordset")
							rs1.open "select * from tblmodule where idparrent = 0 ", conn 
					%>
		   <tr>
			<td width="14%" nowrap>Danh mục cha</td>
			<td width="86%">
				<select name="idparrent" style="width:200">
									<option value="0">-- Chọn danh mục cha --</option>
									<%	do while not rs1.eof %>
									<option value='<%=rs1("idmodule")%>'><%=rs1("name")%></option>
									<%
										openconn
										set rs2= server.CreateObject("adodb.recordset")
										rs2.open "select * from tblmodule where idparrent='"&rs1("idmodule")&"' ", conn 
									do while not rs2.eof
									%>
									<option value='<%=rs2("idmodule")%>'>&nbsp;&nbsp;- - <%=rs2("name")%> --</option>
													<%
									 rs2.movenext
									 loop
									 rs2.close
									 %>
									
									<%
					 rs1.movenext
					 loop
					 rs1.close
					 %>
								</select>
			</td>
		  </tr>
		  <tr>
			<td width="14%" nowrap>Tên module</td>
			<td width="86%">
			<input name="title" type="text" style="font-family: Verdana; font-size: 8pt; width:200"></td>
		  </tr>
		  <tr>
			<td width="14%" nowrap>Thứ tự</td>
			<td width="86%">
			<input name="posotion" type="text" style="font-family: Verdana; font-size: 8pt; width:200"></td>
		  </tr>
        <tr align="center">
			<td width="14%" nowrap></td>
          	<td align="left">
				<input type="submit" name="submit" value="Thêm mới">
            </td>
        </tr>
	</table>
	</td>
	</tr>
</table>
</form>
</body>
</html>
