<%if session("username")="" then%>
<script language="javascript">
	alert("Bạn vui lòng đăng nhập để vào hệ thống quản trị!");
	window.location="../hbxb/";
</script>
<%end if%>
<% 
if request("action")="submit" then
	nhomanh=replace(request("nhomanh"),"'","''")
	names=replace(request("names"),"'","''")
	pathanh=replace(request("pathanh"),"'","''")
	 openconn
	 set rs=server.CreateObject("adodb.recordset")
	 sql="insert into tblanh(idnhomanh,name,image) values('"&nhomanh&"',N'"&names&"','"&pathanh&"')"
	 conn.execute(sql)
	 response.Redirect("?hbxb=20&Quan-ly-anh.html")
%>
<%end if%>
<form name="frmAddNews" method="post">
<input type="hidden" name="action" value="submit">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600">
  <tr>
    <td width="100%" align="left" class="title1">TH&#202;M M&#7898;I &#7842;NH</td>
  </tr>
  <tr>
    <td width="100%">
   	 <table border="0" cellpadding="3" cellspacing="0" style="border-collapse: collapse" width="600">
		  	<% 	
				 openconn	
				 set rs1=server.CreateObject("adodb.recordset")
				 rs1.open"Select * from tblnhomanh",conn
			 %> 
		 <tr>
			<td width="150" class="tintuc1">Nhóm ảnh :</td>
			<td width="450">
						<select name="nhomanh" class="tintuc1">
									<%	do while not rs1.eof %>
									<option class="tintuc1" value='<%=rs1("idnhomanh")%>'><%=rs1("name")%></option>
									<%
										 rs1.movenext
										 loop
										 rs1.close
									%>
						 </select>
			</td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">Ch&#250; th&#237;ch :</td>
			<td width="450">
			<input name="names" class="tintuc1" type="text" style="width:450"></td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">&#7842;nh :</td>
			<td width="450">
			<input name="pathanh" class="tintuc1" style="FLOAT: left; HEIGHT: 24; WIDTH: 400" value="">
            <A href="javascript:openWindow('pop_upload4.asp?er=4')" class="tintuc2">&nbsp;Upload..</A>
		 	</td>
		  </tr>
        <tr align="center">
          	<td width="100%" colspan="2">
				<input type="submit" class="tintuc2" name="submit" value="Th&#234;m m&#7899;i">
            </td>
        </tr>
	</table>
	</td>
	</tr>
</table>
</form>