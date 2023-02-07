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
	pathanh=replace(request("pathanh"),"'","''")
	thutu=replace(request("thutu"),"'","''")
	imagecu=replace(request("imagecu"),"'","''")
	if pathanh="" then pathanh = imagecu
	 openconn
	 set rs=server.CreateObject("adodb.recordset")
	 sql=" update tblnhomanh set name=N'"&names&"',Image='"&pathanh&"',thutu='"&thutu&"' where idnhomanh='"&id&"'"
	 conn.execute(sql)
	 response.Redirect("?hbxb=23&Quan-ly-nhom-anh.html")
%>
<%end if%>
<form name="frmAddNews" method="post">
<input type="hidden" name="action" value="submit">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600">
  <tr>
    <td width="100%" align="left" class="title1">SỬA NHÓM ẢNH</td>
  </tr>
  <tr>
    <td width="100%">
   	<% 	
	  		 openconn	
	  		 set rs1=server.CreateObject("adodb.recordset")
	 		 rs1.open"Select * from tblnhomanh where idnhomanh = '"&request.QueryString("id")&"'",conn
	 %>
	 <table border="0" cellpadding="3" cellspacing="0" style="border-collapse: collapse" width="600">
		  <tr>
			<td width="100" class="tintuc1">Tên nhóm ảnh</td>
			<td width="500">
			<input name="names" class="tintuc1" type="text" value="<%=rs1("name")%>" style=" width:450"></td>
		  </tr>
		  <tr>
			<td class="tintuc1"></td>
			<td class="tintuc1">
			<% If pathanh <>"" Then %>
			<img src="../images/Gallery/<%=pathanh%>" width="300" border=0 onerror="this.style.display='none'" id="Anh" name="Anh">
			<% Else %><img src="../images/Gallery/<%=rs1("image")%>" width="300" border=0 onerror="this.style.display='none'" id="Anh" name="Anh">
			<% End If %>
			<%if rs1("image") <> "" or pathanh <>"" then%>
				<input type="button" class="tintuc2" name="IndexCreateButton" value="B&#7887; &#7843;nh" onClick="javascript: document.frmAddNews.imagecu.value = ''; document.frmAddNews.Anh.style.display='none';this.style.display='none';">
							<%end if%>
			</td>
		  </tr>
		  <tr>
			<td class="tintuc1">Ảnh m&#7899;i</td>
			<td>
			<input name="pathanh" style="FLOAT: left; HEIGHT: 24; WIDTH: 400" value="">
            <A href="javascript:openWindow('pop_upload4.asp?er=4')" class="tintuc2">&nbsp;Upload..</A>
			<input type="hidden" name="imagecu" value="<%=rs1("Image")%>">
		 	</td>
		  </tr>
		   <tr valign="top">
			<td class="tintuc1">Thứ tự</td>
			<td>
			<input type="text" class="tintuc1" name="thutu" value="<%=rs1("thutu")%>"></td>
		  </tr>
        <tr align="center">
          	<td width="100%" colspan="2">
				<input class="tintuc2" type="submit" name="submit" value="S&#7917;a &#273;&#7893;i">
            </td>
        </tr>
	</table>
	</td>
	</tr>

</table>
</form>
