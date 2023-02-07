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
		sql="delete from tblgiaphangoai Where idmodule='"&replace(Request.QueryString("nid"),"'","''")&"'"
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
  	document.location.href="?hbxb=16&action=del_one&nid="+nid;
  }
}
</script>
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600">
    <tr>
    <td width="600" align="left"><b><font class="title1" style="text-transform:uppercase ">
									<%
										openconn
			 							sessionpage=replace(request.QueryString("sessionpage"),"'","''")
										set rskieu= server.CreateObject("adodb.recordset")
										rskieu.open "select * from tblgiapha where idmodule="&sessionpage&" ", conn 
									%>
									DANH SÁCH <% if rskieu("gioitinh")=1 then%>VỢ<%else%>CHỒNG, CON<%end if%> CỦA <% if rskieu("gioitinh")=1 then%>ÔNG <%else%>BÀ <%end if%> <%=rskieu("name")%>
									 <%
									 rskieu.close
									 %>
	</font></b></td>
  </tr>
<tr>
    <td width="100%">
    <table border="1" cellpadding="3" cellspacing="0" style="border-collapse: collapse" bordercolor="#B5B5B3" width="540" id="AutoNumber2">
      <tr>
        <td width="250" bgcolor="#DEDBCE" class="title2">&nbsp;H&#7884; T&#202;N</td>
        <td width="90" bgcolor="#DEDBCE" align="center"  class="title2">&nbsp;QUAN HỆ</td>
        <td width="100" bgcolor="#DEDBCE" align="center" class="title2">&nbsp;GIỚI TÍNH</td>
        <td width="100" colspan="2" bgcolor="#DEDBCE" align="center" class="title2">QU&#7842;N L&#221;</td>
        </tr>
      <% 	
	  		 openconn	
	  		 set rs=server.CreateObject("adodb.recordset")
	 		 rs.open"Select * from tblgiaphangoai where idgiapha="&sessionpage&"",conn,3,1
			 do while not rs.eof
	 %>
	  <tr>
        <td width="250" class="tintuc1"><%= rs("Name") %></td>
        <td width="90" align="center" class="tintuc1"><% if rs("kieu")=1 then%><% if rs("gioitinh")=1 then%>Chồng<%else%>Vợ<%end if%><%else%>Con<%end if%></td>
        <td width="100" align="center" class="tintuc1"><% if rs("gioitinh")=1 then%>Nam<%else%>Nữ<%end if%></td>
        <td width="50"><div align="center" class="tintuc1"><% if rs("kieu")=1 then%><a href="?hbxb=17&id=<%=rs("idmodule")%>" title="Sửa thông tin của <%= rs("Name") %>"><img src="images/sua.png" alt="Sửa thông tin" width="24" border="0"></a><%else%><a href="?hbxb=19&id=<%=rs("idmodule")%>" title="Sửa thông tin của <%= rs("Name") %>"><img src="images/sua.png" alt="Sửa thông tin" width="24" border="0"></a><%end if%></div></td>
        <td width="50"><div align="center" class="tintuc1"><img src="images/xoa.png" alt="Xóa thông tin" title="Xóa thông tin của <%= rs("Name") %>" width="24" style="cursor:hand" onClick="del_one('<%= rs("idmodule") %>');"></div></td>
        </tr>
		<% 
				RS.MoveNext
				loop
		%>
    </table>    
    </td>
  </tr>
</table>
</form>