<%if session("username")="" then%>
<script language="javascript">
	alert("Bạn vui lòng đăng nhập để vào hệ thống quản trị!");
	window.location="../hbxb/";
</script>
<%end if%>
<% 
if request("action")="submit" then
	id=replace(request("id"),"'","''")
	names=replace(request("names"),"'","''")
	link=replace(request("link"),"'","''")
	 openconn
	 set rs=server.CreateObject("adodb.recordset")
	 sql=" update tblvideo set name=N'"&names&"',link=N'"&link&"' where idvideo='"&id&"'"
	 conn.execute(sql)
	 response.Redirect("?hbxb=26&Quan-ly-video.html")
%>
<%end if%>
<form name="frmAddNews" method="post">
<input type="hidden" name="action" value="submit">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600">
  <tr>
    <td width="100%" align="center" class="title1">S&#7916;A VIDEO</td>
  </tr>
  <tr>
    <td width="100%">
   	<% 	
	  		 openconn	
	  		 set rs1=server.CreateObject("adodb.recordset")
	 		 rs1.open"Select * from tblvideo where idvideo = '"&request.QueryString("id")&"'",conn
	 %>
	 <table border="0" cellpadding="3" cellspacing="0" style="border-collapse: collapse" width="600">
		  <tr>
			<td width="100" class="tintuc1">Tên video:</td>
			<td width="500">
			<input name="names" class="tintuc1" type="text" value="<%=rs1("name")%>" style="width:400"></td>
		  </tr>
		  <tr>
			<td class="tintuc1">Link video :</td>
			<td>
			<input name="link" class="tintuc1" type="text" value="<%=rs1("link")%>" style="width:400"></td>
		  </tr>
        <tr align="center">
          	<td width="650" colspan="2">
				<input type="submit" class="tintuc2" name="submit" value="S&#7917;a &#273;&#7893;i">
            </td>
        </tr>
	</table>
	</td>
	</tr>

</table>
</form>