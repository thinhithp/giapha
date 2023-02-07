<%session.CodePage=65001%>
<%if session("username")="" then%>
<script language="javascript">
	alert("Bạn vui lòng đăng nhập để vào hệ thống quản trị!");
	window.location="../hbxb/";
</script>
<%end if%>
<% 
If Request.Form("btnUpdate")<>"" then
	arrBlockOrder = Split(Request.Form("cbBlockOrder"),",")
	intBlockID = Split(Request.Form("txtBlockID"),",")
	For i=0 to Ubound(intBlockID)
		openconn
	    set rs=server.CreateObject("adodb.recordset")
		strSQL = "UPDATE tbldoi SET positions=" & CInt(arrBlockOrder(i)) & " WHERE iddoi=" & CInt(intBlockID(i))
		Conn.Execute(strSQL)
	Next
%>
<script language="javascript">
	alert("Chuc mung ban da cap nhat thanh cong");
	window.location="javascript:history.back()";
</script>
<%end if%>
<%
if request("action")="del_one" then
		openconn
	    set rs=server.CreateObject("adodb.recordset")
		sql="delete from tbldoi Where iddoi='"&replace(Request.QueryString("nid"),"'","''")&"'"
		Conn.execute (sql)
		Response.Redirect("?hbxb=9&Quan-ly-doi.html")
%>
<%end if%>
<script>
function del_one(nid)
{
  if (confirm("bạn chắc chắn muốn xóa chưa?")==true)
  {
  	document.location.href="?hbxb=9&action=del_one&nid="+nid;
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
		document.frmNews.action="?hbxb=9&action=delall";
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
		document.frmNews.action="?hbxb=9&action=delall";
		if (confirm ("Bạn chắc chắn chưa?")==true)
		{
		document.frmNews.submit();
		}
	}
	}
}
</script>
<form name="frmNews" method="post" action="">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="340">
  <tr>
    <td width="100%" colspan="2" align="left" class="title1">QU&#7842;N L&#221; ĐỜI GIA PHẢ</td>
  </tr>
  <tr>
    <td width="100%" colspan="2" align="left" class="tintuc1">Dòng họ của bạn có bao nhiêu đời thì tạo từng đó đời gia phả.</td>
  </tr>
  <tr>
    <td width="100%" colspan="2">
    <table border="1" cellpadding="3" cellspacing="0" style="border-collapse: collapse" bordercolor="#B5B5B3" width="340" id="AutoNumber2">
      <tr>
        <td width="200" bgcolor="#DEDBCE" class="title2">&nbsp;TÊN ĐỜI</td>
		<td width="40" bgcolor="#DEDBCE" class="title2">&nbsp;THỨ TỰ</td>
        <td colspan="2" width="100" bgcolor="#DEDBCE"><div align="center" class="title2">QU&#7842;N L&#221;</div></td>
        </tr>
      <% 	
	  		 openconn	
	  		 set rs=server.CreateObject("adodb.recordset")
	 		 rs.open"Select * from tbldoi order by iddoi ASC",conn,3,1
			 If Request.QueryString("page") = "" Then
			 intCurrentPage = 1
			 Else
			 intCurrentPage = CInt(Request.QueryString("page"))
			 End If
			 RS.PageSize = 10
			 If rs.PageCount > 0 then
			 rs.AbsolutePage = intCurrentPage
			 Else
			 intCurrentPage = 0
			 End If
			 j=1
			 i=1
			 do while not rs.eof
	 %>
	  <tr>
        <td class="tintuc1"><%= rs("name") %>
				<input class="tintuc1" type="hidden" name="txtBlockID" value="<%=RS("iddoi")%>">
		</td>
		<td>
		<select class="tintuc1" size="1" name="cbBlockOrder" style="width:70px">
				<%for i=1 to rs.Recordcount%>
				<option class="tintuc1" value="<%=i%>" <%if rs("positions")=i then Response.Write "selected"%>><%=i%></option>
				<%Next%>
		</select>
		</td>
        <td width="50"><div align="center"><a href="?hbxb=11&id=<%=rs("iddoi")%>" title="Sửa thông tin"><img src="images/sua.png" alt="Sửa thông tin" width="24" border="0"></a></div></td>
        <td width="50"><div align="center"><img src="images/xoa.png" title="Xóa thông tin" alt="Xóa thông tin" width="24" style="cursor:hand " onClick="del_one('<%= rs("iddoi") %>');"></div></td>
        </tr>
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
			<td colspan="5" class="tintuc1">
			
			<%
					If rs.PageCount > 1 then
					'Print Previous Page if required
					If intCurrentPage <> 1 then
					Response.Write "<a href=""?hbxb=9&page=" & intCurrentPage - 1 & """ class=""tintuc2"">Trang tr&#432;&#7899;c</a>"
					Else
					Response.Write "<font class=""tintuc2"">Trang tr&#432;&#7899;c</font>"
					End If
					'Print direct access page numbers.
					For intCount = 1 to rs.PageCount	
					If intCount = 1 then
					Response.Write " | "
					End If
					If intCount = intCurrentPage then
						Response.Write "<font class=""tintuc2"">"&intCount & "</font> | "
					Else
						Response.Write "<a href=""?hbxb=9&page=" & intCount & """ class=""tintuc2"">" & intCount & "</a> | "
					End If
					Next
					'Print Next Page if required
					If intCurrentPage <> rs.PageCount then
						Response.Write "<a href=""?hbxb=9&page=" & intCurrentPage + 1 & """ class=""tintuc2"">Trang sau</a>"
					Else
						Response.Write "<font class=""tintuc2""Trang sau</font>"
					End If
					End If
					Response.Write "<br>Bạn đang xem trang " & intCurrentPage & " / " & rs.PageCount 
				%>
			</td>
		</tr>
		<tr>
    <td width="100%" align="center" colspan="5"><input class="tintuc1" type="button" name="Button" value="Th&#234;m m&#7899;i" onClick="location.href='?hbxb=10&Them-doi.html';"> 
	<input type="submit" name="btnUpdate" class="tintuc1" value="C&#7853;p nh&#7853;t th&#7913; t&#7921;">
     </td>  
  </tr>
    </table>    
    </td>
  </tr>
</table>
</form>