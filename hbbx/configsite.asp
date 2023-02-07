<%if session("username")="" then%>
<script language="javascript">
	alert("Bạn vui lòng đăng nhập để vào hệ thống quản trị!");
	window.location="../hbxb/";
</script>
<%end if%>
<% 
if request("action")="submit" then
	sitename=replace(request("sitename"),"'","''")
	keyword=replace(request("keyword"),"'","''")
	 openconn
	 set rs=server.CreateObject("adodb.recordset")
	 sql=" update tblconfig set sitename=N'"&sitename&"',keyword=N'"&keyword&"'"
	 conn.execute(sql)
	 'response.Redirect("catif_list.asp")
%>
<%end if%>
<form name="frmAddNews" method="post">
<input type="hidden" name="action" value="submit">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600">
  <tr>
    <td width="100%" align="left" class="title1">CẤU HÌNH WEBISTE</td>
  </tr>
  <tr>
    <td width="100%">
   	<% 	
	  		 openconn	
	  		 set rs1=server.CreateObject("adodb.recordset")
	 		 rs1.open"Select * from tblconfig ",conn
	 %>
	 <table border="0" cellpadding="3" cellspacing="0" style="border-collapse: collapse" width="650">
		  <tr>
			<td width="100" class="tintuc1">Tên website</td>
			<td width="550">
			<input name="sitename" class="tintuc1" type="text" value="<%=rs1("sitename")%>" style="width:550"></td>
		  </tr>
		   <tr>
			<td width="100" class="tintuc1">Keyword</td>
			<td width="550">
			<input name="keyword" class="tintuc1" type="text" value="<%=rs1("keyword")%>" style="width:550"></td>
		  </tr>
        <tr align="center">
			<td width="100" class="tintuc1"></td>
          	<td width="500" align="left">
				<input type="submit" class="tintuc2" name="submit" value="Cập nhật">
            </td>
        </tr>
	</table>
	</td>
	</tr>

</table>
</form>
</body>
</html>
