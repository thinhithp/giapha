<%session.CodePage=65001%>
<%if session("username")="" then response.Redirect("default.asp") end if%>
<% 
If Request.Form("btnUpdate")<>"" then
	arrBlockOrder = Split(Request.Form("cbBlockOrder"),",")
	intBlockID = Split(Request.Form("txtBlockID"),",")
	For i=0 to Ubound(intBlockID)
		openconn
	    set rs=server.CreateObject("adodb.recordset")
		strSQL = "UPDATE tblmodule SET positions=" & CInt(arrBlockOrder(i)) & " WHERE idmodule=" & CInt(intBlockID(i))
		Conn.Execute(strSQL)
	Next
%>
<script language="javascript">
	alert("Chúc mừng bạn đã cập nhật thành công !");
	window.location="javascript:history.back()";
</script>
<%end if%>
<% 
if request("action")="del_one" then
		openconn
	   set rs=server.CreateObject("adodb.recordset")
		sql="delete from tblmodule Where idmodule='"&replace(Request.QueryString("nid"),"'","''")&"'"
		Conn.execute (sql)
		Response.Redirect("module_list.asp")

if request("action")="delall" then
		openconn
	  	narr=Request("chkID")
	    set rs=server.CreateObject("adodb.recordset")
		sql="delete from tblmodule Where idmodule IN ("+narr+") "
		Conn.execute (sql)
		Response.Redirect("module_list.asp")
 %>
 <%end if%>
 <%end if%>
<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Danh sách tin</title>
<link rel="stylesheet" type="text/css" href="styles/cms.css">
</head>
<script>
function del_one(nid)
{
  if (confirm("bạn chắc chắn muốn xóa chưa?")==true)
  {
  	document.location.href="module_list.asp?action=del_one&nid="+nid;
  }
}
function checkAll()
{
	var state=document.frmNews.chkAll.checked;
	for (i=0;i<=document.frmNews.chkID.length-1;i++)
	{
		if (state==true)
		{
		document.frmNews.chkID[i].checked=true;
		}
		else
		{
		document.frmNews.chkID[i].checked=false;;
		}
	}
}
function checkOne()
{
	document.frmNews.chkAll.checked=false;
}
function delAll()
{
	var ic=0;
	if (document.frmNews.chkAll.checked==true)
	{
		document.frmNews.action="module_list.asp?action=delall";
		if (confirm ("Bạn chắc chắn chưa?")==true)
		{
		document.frmNews.submit();
		}
	}
	else
	{
			for (i=0;i<=document.frmNews.chkID.length-1;i++)
	{
		if (document.frmNews.chkID[i].checked==true)
		{
			ic++;
		}
	}
	if (ic>1)
	{
		document.frmNews.action="module_list.asp?action=delall";
		if (confirm ("Bạn chắc chắn chưa?")==true)
		{
		document.frmNews.submit();
		}
	}
	}
}
</script>
<!--#include file="connection.asp"-->
<body topmargin="0" leftmargin="0" bgcolor="#F7F7EF">
<form name="frmNews" method="post" action="">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
  <tr>
    <td width="100%" colspan="2" align="center"><b><font size="3" color="#4A865A">QU&#7842;N L&#221; MODULE</font></b></td>
  </tr>
  <tr>
    <td width="100%" colspan="2">
    <table border="1" cellpadding="3" cellspacing="0" style="border-collapse: collapse" bordercolor="#B5B5B3" width="100%" id="AutoNumber2">
      <tr>
        <td width="7%" bgcolor="#DEDBCE"><div align="center">
          <input name="chkAll" type="checkbox" id="chkAll" value="1" onClick="checkAll();">
        </div></td>
        <td width="31%" bgcolor="#DEDBCE"><b>&nbsp;TÊN MODULE</b></td>
		 <td width="21%" bgcolor="#DEDBCE"><b>&nbsp;TÊN MODULE CON</b></td>
		<td width="10%" bgcolor="#DEDBCE"><b>&nbsp;THỨ TỰ</b></td>
        <td colspan="2" bgcolor="#DEDBCE"><div align="center"><b> QU&#7842;N L&#221;</b></div></td>
        </tr>
      <% 	
	  		 openconn	
	  		 set rs=server.CreateObject("adodb.recordset")
	 		 rs.open"Select * from tblmodule where idparrent=0 order by idmodule DESC",conn,3,1
			 If Request.QueryString("page") = "" Then
			 intCurrentPage = 1
			 Else
			 intCurrentPage = CInt(Request.QueryString("page"))
			 End If
			 RS.PageSize = 20
			 If rs.PageCount > 0 then
			 rs.AbsolutePage = intCurrentPage
			 Else
			 intCurrentPage = 0
			 End If
			 j=1
			 i=1
			 do while not rs.eof
	 %>
	  <tr bgcolor="#E3E2DE">
        <td><div align="center">
          <input name="chkID" type="checkbox" id="chkID" onClick="checkOne();" value="<%= rs("idmodule")%>">
        </div></td>
        <td width="31%">&nbsp;<b><%= ucase(rs("name")) %></b>
		<input type="hidden" name="txtBlockID" value="<%=RS("idmodule")%>">
		</td>
		<td width="21%"></td>
		 <td width="10%">
		  <select size="1" name="cbBlockOrder" style="width:100px" class="textbox">
				<%for i=1 to rs.Recordcount%>
				<option value="<%=i%>" <%if rs("positions")=i then Response.Write "selected"%>><%=i%></option>
				<%Next%>
		</select>
		 </td>
        <td width="7%"><div align="center"><a href="module_edit.asp?id=<%=rs("idmodule")%>"><img src="images/icon_edit.gif" alt="Sửa thông tin" width="15" height="15" border="0"></a></div></td>
        <td width="9%"><div align="center"><img src="images/icon_delete.gif" alt="Xóa thông tin" width="15" height="15" style="cursor:hand " onClick="del_one('<%= rs("idmodule") %>');"></div></td>
        </tr>
				<%
					openconn
					set rs1= server.CreateObject("adodb.recordset")
					rs1.open "select * from tblmodule where idparrent="&rs("idmodule")&" ", conn,3,1 
					if not rs1.eof then
					do while not rs1.eof
				%>
		 <tr>
        <td></td>
        <td width="31%"></td>
		<td width="21%"><a href="cat_listall.asp?id=<%=rs1("idmodule")%>"><%= rs1("name") %></a></td>
		 <td width="10%" align="center">
		 <select size="1" name="cbGroupOrder1" style="width:50px" class="textbox">
				<%for i=1 to rs1.Recordcount%>
				<option value="<%=i%>" <%if rs1("positions")=i then Response.Write "selected"%>><%=i%></option>
				<%Next%>
		</select>
		 </td>
        <td width="7%"><div align="center"><a href="module_edit.asp?id=<%=rs1("idmodule")%>"><img src="images/icon_edit.gif" alt="Sửa thông tin" width="15" height="15" border="0"></a></div></td>
        <td width="9%"><div align="center"><img src="images/icon_delete.gif" alt="Xóa thông tin" width="15" height="15" style="cursor:hand " onClick="del_one('<%= rs1("idmodule") %>');"></div></td>
        </tr>
				<%
					rs1.movenext
					loop
					end if
				%>
				<% 
					if j=RS.PageSize then
					exit do
					end if 
					j=j+1					
					i = i + 1
					RS.MoveNext
					loop
				%>
		<tr align="center">
			<td colspan="6">
			
			<%
					If rs.PageCount > 1 then
					'Print Previous Page if required
					If intCurrentPage <> 1 then
					Response.Write "<a href=""module_list.asp?page=" & intCurrentPage - 1 & """>Trang tr&#432;&#7899;c</a>"
					Else
					Response.Write "<font color=""#666666"">Trang tr&#432;&#7899;c</font>"
					End If
					'Print direct access page numbers.
					For intCount = 1 to rs.PageCount	
					If intCount = 1 then
					Response.Write " | "
					End If
					If intCount = intCurrentPage then
						Response.Write "<font color=""#FF0000"">"&intCount & "</font> | "
					Else
						Response.Write "<a href=""module_list.asp?page=" & intCount & """>" & intCount & "</a> | "
					End If
					Next
					'Print Next Page if required
					If intCurrentPage <> rs.PageCount then
						Response.Write "<a href=""module_list.asp?page=" & intCurrentPage + 1 & """>Trang sau</a>"
					Else
						Response.Write "<font color=""#666666"">Trang sau</font>"
					End If
					End If
					Response.Write "<br>Trang " & intCurrentPage & " / " & rs.PageCount 
				%>
			</td>
		</tr>
		<tr>
    		<td width="100%" align="center" colspan="6">
				<input type="button" name="Button" value="Th&#234;m m&#7899;i" onClick="location.href='module_new.asp';"> 
				<input type="submit" name="btnUpdate" value="C&#7853;p nh&#7853;t th&#7913; t&#7921;">
           </td>  
  		</tr>
    </table>    
    </td>
  </tr>
</table>
</form>
</body>
</html>