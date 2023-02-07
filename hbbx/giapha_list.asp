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
		strSQL = "UPDATE tblgiapha SET positions=" & CInt(arrBlockOrder(i)) & " WHERE idmodule=" & CInt(intBlockID(i))
		Conn.Execute(strSQL)
	Next
%>
<script language="javascript">
	alert("Chúc mừng bạn đã cập nhật thành công! Sau khi trở về trang trước bạn vui lòng ấn F5 để làm mới trang quản lý!");
	window.location="javascript:history.go(-2)";
</script>
<%end if%>
<% 
if request("action")="del_one" then
		openconn
	   set rs=server.CreateObject("adodb.recordset")
		sql="delete from tblgiapha Where idmodule='"&replace(Request.QueryString("nid"),"'","''")&"'"
		Conn.execute (sql)
 %>
<script language="javascript">
	alert("Chúc mừng bạn đã xóa thành công! Sau khi trở về trang trước bạn vui lòng ấn F5 để làm mới trang quản lý!");
	window.location="javascript:history.go(-1)";
</script>
 <%end if%>
<script>
function del_one(nid)
{
  if (confirm("Bạn chắc chắn muốn xóa chưa?")==true)
  {
  	document.location.href="?hbxb=12&action=del_one&nid="+nid;
  }
}
</script>
<form name="frmNews" method="post" action="">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="740">
  <tr>
    <td width="740" colspan="2" align="left" class="title1">QUẢN LÝ GIA PHẢ</td>
  </tr>
  <tr><td align="LEFT" class="tintuc1">Xem theo đời thứ : 
							<% 
								openconn
								set rsdoi= server.CreateObject("adodb.recordset")
								rsdoi.open "select * from tbldoi order by iddoi asc", conn 
								if rsdoi.eof then
							%>
							<%  
								else
								do while not rsdoi.EOF
							%>	
							  <a class="tintuc2" target="_self" href="?hbxb=12&sessionpage=<%= rsdoi("iddoi") %>" title="<%= rsdoi("name") %>"><b><%= rsdoi("name") %></b></a>&nbsp;&nbsp;|&nbsp;&nbsp;
							<%
								rsdoi.movenext
								loop
								end if
								rsdoi.close
							%>
  </td></tr>
  <tr><td class="tintuc1">				<%
											openconn
											sessionpage=request("sessionpage")
											'sessionpage = formatSQLInput(Request.QueryString("sessionpage"))
											sessionpage=replace(request.QueryString("sessionpage"),"'","''")
											set rs2= server.CreateObject("adodb.recordset")
											rs2.open "SELECT * FROM tbldoi  where iddoi="&sessionpage&" ", conn 
											if not rs2.eof then
										%>
		<b>&nbsp;BẠN ĐANG XEM ĐỜI THỨ <%=rs2("name")%></b>
							<%
								end if
							%>
</td></tr>
  <tr>
    <td width="740" colspan="2">
    <table border="1" cellpadding="3" cellspacing="0" style="border-collapse: collapse" bordercolor="#B5B5B3" width="740" id="AutoNumber2">
      <tr>
        <td width="200" bgcolor="#DEDBCE" class="title2">
										<%
											openconn
											sessionpage=request("sessionpage")
											'sessionpage = formatSQLInput(Request.QueryString("sessionpage"))
											sessionpage=replace(request.QueryString("sessionpage"),"'","''")
											set rs2= server.CreateObject("adodb.recordset")
											rs2.open "SELECT * FROM tbldoi  where iddoi="&sessionpage&" ", conn 
											if not rs2.eof then
										%>
										&nbsp;ĐỜI THỨ <%=rs2("name")%>
										<%
											end if
										%>
		</td>
		 <td width="200" bgcolor="#DEDBCE" class="title2">
										<%
											openconn
											sessionpage=request("sessionpage")
											'sessionpage = formatSQLInput(Request.QueryString("sessionpage"))
											sessionpage=replace(request.QueryString("sessionpage"),"'","''")
											set rs2= server.CreateObject("adodb.recordset")
											rs2.open "SELECT * FROM tbldoi  where iddoi="&sessionpage&" ", conn 
											if not rs2.eof then
										%>
										 &nbsp;CON CỦA ĐỜI THỨ <%=rs2("name")%>
										<%
											end if
										%>
		 </td>
		<td width="50" bgcolor="#DEDBCE" align="center" class="title2">&nbsp;CON THỨ</td>
        <td colspan="5" bgcolor="#DEDBCE" width="60"><div align="center" class="title2">QU&#7842;N L&#221;</div></td>
        </tr>
      <% 	
	  		 openconn	
			 sessionpage=replace(request.QueryString("sessionpage"),"'","''")
	  		 set rs=server.CreateObject("adodb.recordset")
	 		 rs.open"Select * from tblgiapha where iddoi="&sessionpage&" order by idmodule ASC",conn,3,1
			 If Request.QueryString("page") = "" Then
			 intCurrentPage = 1
			 Else
			 intCurrentPage = CInt(Request.QueryString("page"))
			 End If
			 RS.PageSize = 50
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
        <td class="tintuc1">&nbsp;<b><%= rs("name") %></b>
		<input type="hidden" name="txtBlockID" class="tintuc1" value="<%=RS("idmodule")%>">
		</td>
		<td></td>
		 <td align="center">
		  <select class="tintuc1" size="1" name="cbBlockOrder" style="width:100px" class="textbox">
				<%for i=1 to rs.Recordcount%>
				<option class="tintuc1" value="<%=i%>" <%if rs("positions")=i then Response.Write "selected"%>><%=i%></option>
				<%Next%>
		</select>
		 </td>
        <td width="40"><div align="center"><% if rs("gioitinh")=2 then %><a href="?hbxb=18&sessionpage=<%=rs("idmodule")%>" title="Thêm con của bà <%=rs("name")%>""><img src="images/themcon.png" alt="Sửa thông tin" width="24" border="0"></a><% else %><a href="?hbxb=13&sessionpage=<%=rs("idmodule")%>" title="Thêm con của ông <%=rs("name")%>"><img src="images/themcon.png" width="24" border="0"></a><% end if %></div></td>
        <td width="40"><div align="center"><a href="?hbxb=15&sessionpage=<%=rs("idmodule")%>" title="Thêm <% if rs("gioitinh")=2 then %>chồng<%else%>vợ<%end if%> của <% if rs("gioitinh")=2 then %>bà <%else%>ông <%end if%> <%=rs("name")%>"><img src="images/themvo.png" width="24" border="0"></a></div></td>
        <td width="40"><div align="center"><a href="?hbxb=15&sessionpage=<%=rs("idmodule")%>" title="Xem thông tin <% if rs("gioitinh")=2 then %>chồng<%else%>vợ<%end if%> của <% if rs("gioitinh")=2 then %>bà <%else%>ông <%end if%> <%=rs("name")%>"><img src="images/xem.png" width="24" border="0"></a></div></td>
        <td width="40"><div align="center"><a href="?hbxb=14&id=<%=rs("idmodule")%>" title="Sửa thông tin của <% if rs("gioitinh")=2 then %>bà <%else%>ông <%end if%> <%=rs("name")%>"><img src="images/sua.png" alt="Sửa thông tin" width="24" border="0"></a></div></td>
        <td width="40"><div align="center"><img src="images/xoa.png" alt="Xóa thông tin" width="24" title="Xóa thông tin của <% if rs("gioitinh")=2 then %>bà <%else%>ông <%end if%> <%=rs("name")%>" style="cursor:hand " onClick="del_one('<%= rs("idmodule") %>');"></div></td>
        </tr>
				<%
					openconn
					set rs1= server.CreateObject("adodb.recordset")
					rs1.open "select * from tblgiapha where idparrent="&rs("idmodule")&" ", conn,3,1 
					if not rs1.eof then
					do while not rs1.eof
				%>
		 <tr>
        <td></td>
		<td class="tintuc1"><%= rs1("name") %></td>
		 <td align="center" class="tintuc1">
		 <select name="cbGroupOrder1" class="tintuc1" style="width:100px" class="textbox">
				<%for i=1 to rs1.Recordcount%>
				<option class="tintuc1" value="<%=i%>" <%if rs1("positions")=i then Response.Write "selected"%>><%=i%></option>
				<%Next%>
		</select>
		 </td>
        <td width="40"><div align="center"><% if rs1("gioitinh")=2 then %><a href="?hbxb=18&sessionpage=<%=rs1("idmodule")%>" title="Thêm con của bà <%=rs1("name")%>"><img src="images/themcon.png" alt="Sửa thông tin" width="24" border="0"></a><% else %><a href="?hbxb=13&sessionpage=<%=rs1("idmodule")%>" title="Thêm con của ông <%=rs1("name")%>"><img src="images/themcon.png" width="24" border="0"></a><% end if %></div></td>
        <td width="40"><div align="center"><a href="?hbxb=15&sessionpage=<%=rs1("idmodule")%>" title="Thêm <% if rs1("gioitinh")=2 then %>chồng<%else%>vợ<%end if%> của <% if rs1("gioitinh")=2 then %>bà <%else%>ông <%end if%> <%=rs1("name")%>"><img src="images/themvo.png" width="24" border="0"></a></div></td>
        <td width="40"><div align="center"><a href="?hbxb=16&sessionpage=<%=rs1("idmodule")%>" title="Xem thông tin <% if rs1("gioitinh")=2 then %>chồng, con<%else%>vợ<%end if%> của <% if rs1("gioitinh")=2 then %>bà <%else%>ông <%end if%> <%=rs1("name")%>"><img src="images/xem.png" width="24" border="0"></a></div></td>
        <td width="40"><div align="center"><a href="?hbxb=14&id=<%=rs1("idmodule")%>" title="Sửa thông tin của <% if rs1("gioitinh")=2 then %>bà <%else%>ông <%end if%> <%=rs1("name")%>"><img src="images/sua.png" width="24" border="0"></a></div></td>
        <td width="40"><div align="center"><img src="images/xoa.png" title="Xóa thông tin của <% if rs1("gioitinh")=2 then %>bà <%else%>ông <%end if%> <%=rs1("name")%>" width="24" style="cursor:hand" onClick="del_one('<%= rs1("idmodule") %>');"></div></td>
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
			<td colspan="8" class="tintuc1">
			
			<%
					If rs.PageCount > 1 then
					'Print Previous Page if required
					If intCurrentPage <> 1 then
					Response.Write "<a href=""?hbxb=12&page=" & intCurrentPage - 1 & """ class=""tintuc2"">Trang tr&#432;&#7899;c</a>"
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
						Response.Write "<a href=""?hbxb=12&page=" & intCount & """ class=""tintuc2"">" & intCount & "</a> | "
					End If
					Next
					'Print Next Page if required
					If intCurrentPage <> rs.PageCount then
						Response.Write "<a href=""?hbxb=12&page=" & intCurrentPage + 1 & """ class=""tintuc2"">Trang sau</a>"
					Else
						Response.Write "<font  class=""tintuc2"">Trang sau</font>"
					End If
					End If
					Response.Write "<br>Trang " & intCurrentPage & " / " & rs.PageCount 
				%>
			</td>
		</tr>
		<tr>
    		<td width="100%" align="center" colspan="8">
				<input type="submit" class="tintuc2" name="btnUpdate" value="C&#7853;p nh&#7853;t th&#7913; t&#7921;">
           </td>  
  		</tr>
    </table>    
    </td>
  </tr>
</table>
</form>