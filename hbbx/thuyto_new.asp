<%if session("username")="" then%>
<script language="javascript">
	alert("Bạn vui lòng đăng nhập để vào hệ thống quản trị!");
	window.location="../hbxb/";
</script>
<%end if%>
<% 
if request("action")="submit" then
	idparrent=replace(request("idparrent"),"'","''")
	iddoi=replace(request("iddoi"),"'","''")
	title=replace(request("title"),"'","''")
	posotion=replace(request("posotion"),"'","''")
	 openconn
	 set rs=server.CreateObject("adodb.recordset")
	 sql="insert into tblgiapha(idparrent,iddoi,name,positions) values('"&idparrent&"','"&iddoi&"',N'"&title&"','"&posotion&"')"
	 conn.execute(sql)
	 response.Redirect("?hbxb=12&sessionpage=1&Quan-ly-pha-he.html")
%>
<%end if%>
<form name="frmAddNews" method="post">
<input type="hidden" name="action" value="submit">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="400">
  <tr>
    <td width="400" align="left" class="title1">KHỞI TẠO THỦY TỔ DÒNG HỌ</td>
  </tr>
									<%
										openconn
										set rs= server.CreateObject("adodb.recordset")
										rs.open "select idparrent from tblgiapha", conn 
									%>
  <% if rs("idparrent")= null then%>
									<%
										openconn
										set rs= server.CreateObject("adodb.recordset")
										rs.open "select idparrent from tblgiapha", conn 
									%>
 <tr><td class="tintuc1"><B>CHÚ Ý:</B> Thủy tổ của dòng họ chỉ bắt đầu bằng 1 người.</td></tr>
  <tr>
    <td width="100%">
   	 <table border="0" cellpadding="3" cellspacing="0" style="border-collapse: collapse" width="400">
		   <tr>
			<td width="100" nowrap></td>
			<td width="300" align="left">
				<select name="idparrent" style="width:200"  class="tintuc1">
									<option value='0' class="tintuc1">Thủy tổ - Đời thứ I</option>
								</select>
			</td>
		  </tr>
		  <tr>
			<td width="100" class="tintuc1">Họ tên thủy tổ</td>
			<td width="300" align="left">
			<input name="title" type="text" class="tintuc1" style="width:200"></td>
		  </tr>
		  <% 	
				 openconn	
				 set rs3=server.CreateObject("adodb.recordset")
				 rs3.open"Select * from tbldoi",conn
			 %> 
		 <tr>
			<td width="100" class="tintuc1">Thuộc đời thứ</td>
			<td width="300" align="left">
			<select name="iddoi" style=" width:120" class="tintuc1">
						<option value='1' class="tintuc1"><b><%=rs3("name")%></b> - (Đời thứ <%=rs3("positions")%>)</option>
				<%
					 rs3.close
				%>
			</select>
			</td>
		  </tr>
		  <tr>
			<td width="100" class="tintuc1">Thứ tự</td>
			<td width="300" align="left">
			<input name="posotion" class="tintuc1" type="text" style="width:200"></td>
		  </tr>
        <tr align="center">
			<td width="100" nowrap></td>
          	<td align="left">
				<input type="submit" name="submit" class="tintuc2" value="Thêm mới">
            </td>
        </tr>
	</table>
	</td>
	</tr>
  <% else %>
  <tr>
    <td align="left" class="tintuc1">Thủy tổ dòng họ của bạn đã được khởi tạo! Thủy tổ của dòng họ chỉ bắt đầu bằng 1 người.</td>
  </tr>
	<% end if %>
</table>
</form>
