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
		strSQL = "UPDATE tblnhomanh SET thutu=" & CInt(arrBlockOrder(i)) & " WHERE idnhomanh=" & CInt(intBlockID(i))
		Conn.Execute(strSQL)
	Next
%>
<script language="javascript">
	alert("Chúc mừng bạn đã cập nhật thành công!");
	window.location="javascript:history.back()";
</script>
<%end if%>
<% 
if request("action")="del_one" then
		openconn
	   set rs=server.CreateObject("adodb.recordset")
		sql="delete from tblnhomanh Where idnhomanh='"&replace(Request.QueryString("nid"),"'","''")&"'"
		Conn.execute (sql)
		Response.Redirect("?hbxb=23&Quan-ly-nhom-anh.html")
end if%>		
<script>
function del_one(nid)
{
  if (confirm("Bạn đã chắc chắn chưa?")==true)
  {
  	document.location.href="?hbxb=23&action=del_one&nid="+nid;
  }
}
</script>
<form name="frmAddNews" method="post">
<input type="hidden" name="action" value="submit">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600">
  <tr>
    <td align="left" class="title1">QU&#7842;N L&#221; NHÓM ẢNH</td>
  </tr>
	<tr>
    <td width="100%" colspan="2">
    <table border="1" cellpadding="3" cellspacing="0" style="border-collapse: collapse" bordercolor="#B5B5B3" width="600" id="AutoNumber2">
      <tr>
        <td width="400" bgcolor="#DEDBCE" class="title2">&nbsp;TÊN NHÓM ẢNH</td>
		<td width="100" bgcolor="#DEDBCE" align="center" class="title2">S&#7854;P X&#7870;P</td>
        <td colspan="2" width="100" bgcolor="#DEDBCE" class="title2" align="center">QU&#7842;N L&#221;</td>
        </tr>
      <% 	
	  		 openconn	
	  		 set rs=server.CreateObject("adodb.recordset")
	 		 rs.open"Select * from tblnhomanh order by idnhomanh DESC",conn,3,1
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
		<input type="hidden" class="tintuc1" name="txtBlockID" value="<%=RS("idnhomanh")%>">
		</td>
		 <td class="tintuc1">
		 	<select size="1" name="cbBlockOrder" style="width:70px"  class="tintuc1">
				<%for i=1 to rs.Recordcount%>
				<option  class="tintuc1" value="<%=i%>" <%if rs("thutu")=i then Response.Write "selected"%>><%=i%></option>
				<%Next%>
		</select>
		 </td>
        <td width="50"><div align="center"><a href="?hbxb=25&id=<%=rs("idnhomanh")%>"><img src="images/sua.png" alt="S?a thng tin" width="24" border="0"></a></div></td>
        <td width="50"><div align="center"><img src="images/xoa.png" alt="Xa thng tin" width="24" style="cursor:hand " onClick="del_one('<%= rs("idnhomanh") %>');"></div></td>
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
					Response.Write "<a href=""?hbxb=23&page=" & intCurrentPage - 1 & """ class=""tintuc2"">Trang tr&#432;&#7899;c</a>"
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
						Response.Write "<a href=""?hbxb=23&page=" & intCount & """ class=""tintuc2"">" & intCount & "</a> | "
					End If
					Next
					'Print Next Page if required
					If intCurrentPage <> rs.PageCount then
						Response.Write "<a href=""?hbxb=23&page=" & intCurrentPage + 1 & """ class=""tintuc2"">Trang sau</a>"
					Else
						Response.Write "<font  class=""tintuc2"">Trang sau</font>"
					End If
					End If
					Response.Write "<br>Bạn đang xem trang " & intCurrentPage & " / " & rs.PageCount 
				%>
			</td>
		</tr>
		 <tr>
				<td align="center" colspan="4"><input class="tintuc2" type="button" name="Button" value="Th&#234;m m&#7899;i" onClick="location.href='?hbxb=24&Them-nhom-anh.html';"> 
				<input type="submit" name="btnUpdate" class="tintuc2" value="C&#7853;p nh&#7853;t th&#7913; t&#7921;">
			</td>  
 		 </tr>
    </table>    
    </td>
  </tr>
</table>
</form>
