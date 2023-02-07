<%session.CodePage=65001%>
<%if session("username")="" then%>
<script language="javascript">
	alert("Bạn vui lòng đăng nhập để vào hệ thống quản trị!");
	window.location="../hbxb/";
</script>
<%end if%>
<% 
if request("action")="del_one" then
		openconn
	   set rs=server.CreateObject("adodb.recordset")
		sql="delete from tblcat Where idcat='"&replace(Request.QueryString("nid"),"'","''")&"'"
		Conn.execute (sql)
		Response.Redirect("?hbxb=2&Quan-ly-tin-tuc.html")

if request("action")="delall" then
		openconn
	  	narr=Request("chkID")
	    set rs=server.CreateObject("adodb.recordset")
		sql="delete from tblcat Where idcat IN ("+narr+") "
		Conn.execute (sql)
		Response.Redirect("?hbxb=2&Quan-ly-tin-tuc.html")
 %>
 <%end if%>
 <%end if%>
<script>
function del_one(nid)
{
  if (confirm("Ban da chac chan chua?")==true)
  {
  	document.location.href="?hbxb=2&action=del_one&nid="+nid;
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
		document.frmNews.action="?hbxb=2&action=delall";
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
		document.frmNews.action="?hbxb=2&action=delall";
		if (confirm ("Bạn chắc chắn chưa?")==true)
		{
		document.frmNews.submit();
		}
	}
	}
}
</script>
<form name="frmNews" method="post">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="650" bgcolor="#F7F7EF">
  <tr>
    <td width="200" align="left" class="title1">QU&#7842;N L&#221; TIN TỨC</td>
	<td width="400">
		<table cellpadding="0" cellspacing="0" align="left">
			<tr>
				<td><input type="text" name="search"  class="tintuc1" value="" size="40">&nbsp;&nbsp;<input type="submit" name="ac"  class="tintuc2" value="Tìm kiếm"></td>
			</tr>
		</table>
	</td>
  </tr>
  <%
  	if request("ac")<>"" then
	search=request("search")
	openconn
	set rs= server.CreateObject("adodb.recordset")
	rs.open "SELECT a.*,b.name AS module FROM tblcat a INNER JOIN tblmodule b ON a.idmodule = b.idmodule where a.title like N'%"&search&"%' order by idcat desc ", conn,3,1 
	If Request.QueryString("tab") = "" Then
	intCurrentPage = 1
	Else
	intCurrentPage = CInt(Request.QueryString("tab"))
	End If
	RS.PageSize = 10
	If rs.PageCount > 0 then
	rs.AbsolutePage = intCurrentPage
	Else
	intCurrentPage = 0
	End If
	j=1
	i=1
					 'do while not rs.eof
  %>
  
   <tr>
    <td width="100%" colspan="2">
    <table border="1" cellpadding="3" cellspacing="0" style="border-collapse: collapse" bordercolor="#B5B5B3" width="600">
      <tr>
        <td width="540" bgcolor="#DEDBCE" class="title2">&nbsp;TI&#202;U &#272;&#7872;</td>
        <td width="60" colspan="2" bgcolor="#DEDBCE"><div align="center" class="title2">QU&#7842;N L&#221;</div></td>
        </tr>
      <% 	
			 do while not rs.eof
	 %>
	  <tr>
        <td width="540" class="menu1">&nbsp;<%= rs("title") %></td>
        <td width="30"><div align="center"><a href="?hbxb=3&id=<%=rs("idcat")%>" title="Sửa thông tin"><img src="images/sua.png" alt="Sửa thông tin" width="24" border="0"></a></div></td>
        <td width="30"><div align="center"><img src="images/xoa.png" alt="Xóa thông tin" width="24" style="cursor:hand " onClick="del_one('<%= rs("idcat") %>');"></div></td>
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
			<td colspan="6" class="tintuc1">
			
			<%
					If rs.PageCount > 1 then
					'Print Previous Page if required
					If intCurrentPage <> 1 then
					Response.Write "<a href=""?hbxb=2&page=" & intCurrentPage - 1 & """ class=""tintuc2"">Trang tr&#432;&#7899;c</a>"
					Else
					Response.Write "<font  class=""tintuc2"">Trang tr&#432;&#7899;c</font>"
					End If
					'Print direct access page numbers.
					For intCount = 1 to rs.PageCount	
					If intCount = 1 then
					Response.Write " | "
					End If
					If intCount = intCurrentPage then
						Response.Write "<font  class=""tintuc2"">"&intCount & "</font> | "
					Else
						Response.Write "<a href=""?hbxb=2&page=" & intCount & """ class=""tintuc2"">" & intCount & "</a> | "
					End If
					Next
					'Print Next Page if required
					If intCurrentPage <> rs.PageCount then
						Response.Write "<a href=""?hbxb=2&page=" & intCurrentPage + 1 & """ class=""tintuc2"">Trang sau</a>"
					Else
						Response.Write "<font  class=""tintuc2"">Trang sau</font>"
					End If
					End If
					Response.Write "<br>Bạn đang xem trang " & intCurrentPage & " / " & rs.PageCount 
				%>
			</td>
		</tr>
		 <tr>
    			<td width="100%" align="center" colspan="5"><input type="button" class="tintuc2" name="Button" value="Th&#234;m m&#7899;i" onClick="location.href='?hbxb=1&Them-tin-moi.html';"> 
				</td>  
 		 </tr>
    </table>    
    </td>
  </tr>
  <%else%>
  <tr>
    <td width="100%" colspan="2">
    <table border="1" cellpadding="3" cellspacing="0" style="border-collapse: collapse" bordercolor="#B5B5B3" width="600" id="AutoNumber2">
      <tr>
        <td width="500" bgcolor="#DEDBCE" class="title2">&nbsp;TI&#202;U &#272;&#7872;</td>
        <td colspan="2" width="100" bgcolor="#DEDBCE"><div align="center" class="title2">QU&#7842;N L&#221;</div></td>
        </tr>
      <% 	
	  		 openconn	
	  		 set rs=server.CreateObject("adodb.recordset")
	 		 rs.open"SELECT a.*,b.name AS module FROM tblcat a INNER JOIN tblmodule b ON a.idmodule = b.idmodule order by idcat desc",conn,3,1
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
        <td width="500" class="menu1">&nbsp;<%= rs("title") %></td>
        <td width="50"><div align="center"><a href="?hbxb=3&id=<%=rs("idcat")%>" title="Sửa thông tin"><img src="images/sua.png" alt="Sửa thông tin" width="24" border="0"></a></div></td>
        <td width="50"><div align="center"><img src="images/xoa.png" title="Xóa thông tin" alt="Xóa thông tin" width="24" style="cursor:hand " onClick="del_one('<%= rs("idcat") %>');"></div></td>
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
			<td colspan="4" class="tintuc1">
			
			<%
					If rs.PageCount > 1 then
					'Print Previous Page if required
					If intCurrentPage <> 1 then
					Response.Write "<a href=""?hbxb=2&page=" & intCurrentPage - 1 & """ class=""tintuc2"">Trang tr&#432;&#7899;c</a>"
					Else
					Response.Write "<font  class=""tintuc2"">Trang tr&#432;&#7899;c</font>"
					End If
					'Print direct access page numbers.
					For intCount = 1 to rs.PageCount	
					If intCount = 1 then
					Response.Write " | "
					End If
					If intCount = intCurrentPage then
						Response.Write "<font  class=""tintuc2"">"&intCount & "</font> | "
					Else
						Response.Write "<a href=""?hbxb=2&page=" & intCount & """ class=""tintuc2"">" & intCount & "</a> | "
					End If
					Next
					'Print Next Page if required
					If intCurrentPage <> rs.PageCount then
						Response.Write "<a href=""?hbxb=2&page=" & intCurrentPage + 1 & """ class=""tintuc2"">Trang sau</a>"
					Else
						Response.Write "<font  class=""tintuc2"">Trang sau</font>"
					End If
					End If
					Response.Write "<br>Bạn đang xem trang " & intCurrentPage & " / " & rs.PageCount 
				%>
			</td>
		</tr>
		 <tr>
    			<td width="100%" align="center" colspan="4"><input type="button" class="tintuc2" name="Button"  value="Th&#234;m m&#7899;i" onClick="location.href='?hbxb=1&Them-tin-moi.html';"> 
				</td>  
 		 </tr>
    </table>    
    </td>
  </tr>
  <%end if%>
</table>
</form>