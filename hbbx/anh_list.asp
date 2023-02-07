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
		sql="delete from tblanh Where idanh='"&replace(Request.QueryString("nid"),"'","''")&"'"
		Conn.execute (sql)
		Response.Redirect("?hbxb=20&Quan-ly-anh.html")
 %>
 <%end if%>
<script>
function del_one(nid)
{
  if (confirm("Bạn chắc chắn xóa chứ?")==true)
  {
  	document.location.href="?hbxb=20&action=del_one&nid="+nid;
  }
}
</script>
<form name="frmNews" method="post">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="800">
  <tr>
    <td width="100%" align="left" class="title1">QU&#7842;N L&#221; &#7842;NH</td>
  </tr>
  <tr>
    <td width="100%">
    <table border="1" cellpadding="3" cellspacing="0" style="border-collapse: collapse" bordercolor="#B5B5B3" width="800" id="AutoNumber2">
      <tr>
        <td width="600" bgcolor="#DEDBCE" class="title2">&nbsp;TÊN ẢNH</td>
        <td width="100" bgcolor="#DEDBCE" class="title2" align="center">NHÓM ẢNH</td>
        <td width="100" colspan="2" class="title2" align="center" bgcolor="#DEDBCE">QU&#7842;N L&#221;</td>
        </tr>
      <% 	
	  		 openconn	
	  		 set rs=server.CreateObject("adodb.recordset")
	 		 rs.open"SELECT a.*, b.name AS nhomanh FROM tblnhomanh b INNER JOIN tblanh a ON b.idnhomanh = a.idnhomanh order by idanh desc",conn,3,1
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
        <td class="tintuc1"><%= rs("name") %></td>
        <td class="tintuc1" align="center"><%= rs("nhomanh") %></td>
        <td width="50"><div align="center"><a href="?hbxb=22&id=<%=rs("idanh")%>"><img src="images/sua.png" alt="Sửa thông tin" width="24" border="0"></a></div></td>
        <td width="50"><div align="center"><img src="images/xoa.png" alt="Xóa thông tin" width="24" style="cursor:hand " onClick="del_one('<%= rs("idanh") %>');"></div></td>
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
					Response.Write "<a href=""?hbxb=20&page=" & intCurrentPage - 1 & """ class=""tintuc2"">Trang tr&#432;&#7899;c</a>"
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
						Response.Write "<a href=""?hbxb=20&page=" & intCount & """ class=""tintuc2"">" & intCount & "</a> | "
					End If
					Next
					'Print Next Page if required
					If intCurrentPage <> rs.PageCount then
						Response.Write "<a href=""?hbxb=20&page=" & intCurrentPage + 1 & """ class=""tintuc2"">Trang sau</a>"
					Else
						Response.Write "<font class=""tintuc2"">Trang sau</font>"
					End If
					End If
					Response.Write "<br>Bạn đang xem trang " & intCurrentPage & " / " & rs.PageCount 
				%>
			</td>
		</tr>

    </table>    
    </td>
  </tr>
  <tr>

    <td width="100%" align="center"><input class="tintuc2" type="button" name="Button" value="Th&#234;m m&#7899;i" onClick="location.href='?hbxb=21&Them-anh-moi.html';"> 
</td>  
  </tr>
</table>
</form>