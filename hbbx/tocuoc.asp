<%if session("username")="" then%>
<script language="javascript">
	alert("Bạn vui lòng đăng nhập để vào hệ thống quản trị!");
	window.location="../hbxb/";
</script>
<%end if%>
<% 
if request("action")="submit" then
	tocuoc=replace(request("tocuoc"),"'","''")
	 openconn
	 set rs=server.CreateObject("adodb.recordset")
	 sql=" update tblconfig set tocuoc=N'"&tocuoc&"'"
	 conn.execute(sql)
	 'response.Redirect("catif_list.asp")
%>
<%end if%>
<form name="frmAddNews" method="post">
<input type="hidden" name="action" value="submit">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600">
  <tr>
    <td width="100%" align="left" class="title1">TỘC ƯỚC DÒNG HỌ</td>
  </tr>
  <tr>
    <td width="100%">
   	<% 	
	  		 openconn	
	  		 set rs1=server.CreateObject("adodb.recordset")
	 		 rs1.open"Select * from tblconfig ",conn
	 %>

				<%
					oFCKeditor.value = rs1("tocuoc")
					oFCKeditor.Create "tocuoc"
				%>	
	</td>
	</tr>
	<tr><td><input type="submit" name="submit" value="Cập nhật" class="tintuc2"></td></tr>

</table>
</form>