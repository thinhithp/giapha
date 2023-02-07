<%if session("username")="" then%>
<script language="javascript">
	alert("Bạn vui lòng đăng nhập để vào hệ thống quản trị!");
	window.location="../hbxb/";
</script>
<%end if%>
<% 
if request("action")="submit" then
	id=replace(request("id"),"'","''")
	title=replace(request("title"),"'","''")
	posotion=replace(request("posotion"),"'","''")
	 openconn
	 set rs=server.CreateObject("adodb.recordset")
	 sql=" update tbldoi set name=N'"&title&"',positions='"&posotion&"' where iddoi='"&id&"'"
	 conn.execute(sql)
	 response.Redirect("?hbxb=9&Quan-ly-doi.html")
%>
<%end if%>
<form name="frmAddNews" method="post">
<input type="hidden" name="action" value="submit">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="400">
  <tr>
    <td width="100%" align="LEFT" class="title1">SỬA ĐỜI</td>
  </tr>
  <tr>
    <td width="100%">
   	<% 	
	  		 openconn	
	  		 set rs1=server.CreateObject("adodb.recordset")
	 		 rs1.open"Select * from tbldoi where iddoi = '"&request.QueryString("id")&"'",conn
	 %>
	 <table border="0" cellpadding="3" cellspacing="0" style="border-collapse: collapse" width="100%">
		  <tr>
			<td width="100" class="tintuc1">Tên đời</td>
			<td width="300">
			<input name="title" type="text" value="<%=rs1("name")%>" class="tintuc1" style="width:100"></td>
		  </tr>
		  <tr>
			<td width="100"  class="tintuc1"><b>Chú ý :</b></td>
			<td width="300" align="left" class="tintuc1">
			Nên đặt tên đời theo ký tự la mã. Ví dụ: I, II, III,....</td>
		  </tr>
		  <tr>
			<td width="14%" class="tintuc1">Thứ tự hiển thị</td>
			<td width="86%">
			<input name="posotion" type="text" class="tintuc1" style="width:100" value="<%=rs1("positions")%>"></td>
		  </tr>
        <tr align="center">
			<td width="14%" nowrap></td>
          	<td width="100%" align="left">
				<input type="submit" name="submit" class="tintuc2" value="S&#7917;a &#273;&#7893;i">
            </td>
        </tr>
	</table>
	</td>
	</tr>

</table>
</form>
