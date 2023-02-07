<%if session("username")="" then%>
<script language="javascript">
	alert("Bạn vui lòng đăng nhập để vào hệ thống quản trị!");
	window.location="../hbxb/";
</script>
<%end if%>
<% 
if request("action")="submit" then
	id=replace(request("id"),"'","''")
	nhomanh=replace(request("nhomanh"),"'","''")
	names=replace(request("names"),"'","''")
	pathanh=request("pathanh")
	imagecu=replace(request("imagecu"),"'","''")
	if pathanh="" then pathanh = imagecu
	 openconn
	 set rs=server.CreateObject("adodb.recordset")
	 sql="update tblanh set idnhomanh='"&nhomanh&"',name=N'"&names&"',image=N'"&pathanh&"' where idanh='"&id&"'"
	 conn.execute(sql)
	 response.Redirect("?hbxb=20&Quan-ly-anh.html")
%>
<%end if%>
<form name="frmAddNews" method="post">
<input type="hidden" name="action" value="submit">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600">
  <tr>
    <td width="100%" align="left" class="title1">S&#7916;A &#7842;NH</td>
  </tr>
  <tr>
    <td width="100%">
   	<% 	
	  		 openconn	
	  		 set rs1=server.CreateObject("adodb.recordset")
	 		 rs1.open"Select * from tblanh where idanh = '"&request.QueryString("id")&"'",conn
	 %>
	 <table border="0" cellpadding="3" cellspacing="0" style="border-collapse: collapse" width="600">
		  			 <%
							openconn
							set rs2= server.CreateObject("adodb.recordset")
							rs2.open "select * from tblnhomanh", conn 
					%>
		  <tr>
			<td width="14%" class="tintuc1">Nh&#243;m ảnh :</td>
			<td width="86%">
			<select name="nhomanh" class="tintuc1">
					<%	do while not rs2.eof %>
				<option class="tintuc1" value='<%=rs2("idnhomanh")%>' <%if rs1("idnhomanh") = rs2("idnhomanh") then response.Write("selected")%>>
					<%=rs2("name")%>
				</option>
				<%
					 rs2.movenext
					 loop
					 rs2.close
				%>
			</select>
			</td>
		  </tr>
		  <tr>
			<td width="14%" class="tintuc1">Ch&#250; th&#237;ch :</td>
			<td width="86%">
			<input name="names" class="tintuc1" type="text" value="<%=rs1("name")%>" style="width:550"></td>
		  </tr>
		  <tr>
			<td width="14%" class="tintuc1"></td>
			<td width="86%" class="tintuc1">
			<% If pathanh <>"" Then %>
			<img src="../Upload/<%=pathanh%>" width="300" border=0 onerror="this.style.display='none'" id="Anh" name="Anh">
			<% Else %><img src="../Upload/<%=rs1("image")%>" width="300" border=0 onerror="this.style.display='none'" id="Anh" name="Anh">
			<% End If %>
			<%if rs1("image") <> "" or pathanh <>"" then%>
				<input type="button" class="tintuc2" name="IndexCreateButton" value="B&#7887; &#7843;nh" class="SmallButton" onClick="javascript: document.frmAddNews.imagecu.value = ''; document.frmAddNews.Anh.style.display='none';this.style.display='none';">
							<%end if%>
			</td>
		  </tr>
		  <tr>
			<td width="14%" class="tintuc1">&#7842;nh :</td>
			<td width="86%">
			<input name="pathanh" class="tintuc1" style="FLOAT: left; HEIGHT: 24; WIDTH: 400" value="">
            <A href="javascript:openWindow('pop_upload4.asp?er=4')" class="tintuc2">&nbsp;Upload..</A>
			<input type="hidden" name="imagecu" value="<%=rs1("image")%>">
		 	</td>
		  </tr>
        <tr align="center">
          	<td width="100%" colspan="2">
				<input type="submit" class="tintuc2" name="submit" value="S&#7917;a &#273;&#7893;i">
            </td>
        </tr>
	</table>
	</td>
	</tr>

</table>
</form>