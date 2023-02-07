<%if session("username")="" then%>
<script language="javascript">
	alert("Bạn vui lòng đăng nhập để vào hệ thống quản trị!");
	window.location="../hbxb/";
</script>
<%end if%>
<% 
if request("action")="submit" then
	id=replace(request("id"),"'","''")
	idmodule=replace(request("idmodule"),"'","''")
	txtNTitle=replace(request("txtNTitle"),"'","''")
	pathanh=replace(request("pathanh"),"'","''")
	quotation=replace(request("quotation"),"'","''")
	MsgContent=replace(request("MsgContent"),"'","''")
	imagecu=replace(request("imagecu"),"'","''")
	if pathanh="" then pathanh = imagecu
	 openconn
	 set rs=server.CreateObject("adodb.recordset")
	 sql=" update tblcat set idmodule='"&idmodule&"',title=N'"&txtNTitle&"',quotation=N'"&quotation&"',Content=N'"&MsgContent&"',Image='"&pathanh&"' where idcat='"&id&"'"
	 conn.execute(sql)
	 response.Redirect("?hbxb=2&Quan-ly-tin-tuc.html")
%>
<%end if%>
<script language="javascript1.2" type="text/javascript">
function check_input()
{
	var NTitle=document.frmNews.txtNTitle.value;
	var NImage=document.frmNews.txtNImage.value;
	var NSumary=document.frmNews.MsgTitle.value;
	var NContent=document.frmNews.MsgContent.value;
	if (NTitle==""){alert("Bạn chưa nhập tiêu đề cho tin"); document.frmNews.txtNTitle.focus() ; return false;}
	//if (NImage=="")(alert("Bạn chưa chọn hình ảnh"); document.frmNews. ;return false);
	if (NSumary==""){alert("Bạn chưa nhập tóm tắt cho tin"); document.frmNews.MsgTitle.focus() ; return false;}
	if (NContent==""){alert("Bạn chưa nhập nội dung của tin"); document.frmNews.MsgContent.focus() ; return false;}
	return true;		
}

function openWindow(url) {
		  popupWin = window.open(url,'new_page','width=400,height=200,scrollbars=no');

		}
</script>
<form name="frmAddNews" method="post">
<input type="hidden" name="action" value="submit">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" bgcolor="#F7F7EF" width="100%">
<tr><td height="10"></td></tr>
  <tr>
    <td width="650" align="left" class="title1">S&#7916;A THÔNG TIN</td>
  </tr>
  <tr>
    <td width="100%">
   	<% 	
	  		 openconn	
	  		 set rs1=server.CreateObject("adodb.recordset")
	 		 rs1.open"Select * from tblcat where idcat = '"&request.QueryString("id")&"'",conn
	 %>
	 <table border="0" cellpadding="3" cellspacing="0" style="border-collapse: collapse" width="650">
		  			 <%
							openconn
							set rs2= server.CreateObject("adodb.recordset")
							rs2.open "select * from tblmodule where idparrent = 0 ", conn 
					%>
		  <tr>
			<td width="100" class="tintuc1">Danh m&#7909;c cha</td>
			<td width="550">
			<select name="idmodule" style=" width:200" class="tintuc1">
					<%	do while not rs2.eof %>
							<%
								openconn
								set rs3= server.CreateObject("adodb.recordset")
								rs3.open "select * from tblmodule where idparrent='"&rs2("idmodule")&"' ", conn 
								do while not rs3.eof
							%>
								<option class="tintuc1" value='<%=rs3("idmodule")%>' <%if rs3("idmodule") = rs1("idmodule") then response.Write("selected")%>>&nbsp;&nbsp;- - <%=rs3("name")%></option>
							<%
									 rs3.movenext
									 loop
									 rs3.close
							%>
				<%
					 rs2.movenext
					 loop
					 rs2.close
				%>
								</select>
			</td>
		  </tr>
		  <tr>
			<td width="100" class="tintuc1">Tiêu đề bài viết</td>
			<td width="550">
			<input name="txtNTitle" class="tintuc1" type="text" value="<%=rs1("Title")%>" style="width:550"></td>
		  </tr>
		 <tr>
			<td width="100" nowrap></td>
			<td width="550"  class="tintuc1">
			<% If pathanh <>"" Then %>
			<img src="../Upload/<%=pathanh%>" border=0 onerror="this.style.display='none'" id="Anh" name="Anh">
			<% Else %><img src="../Upload/<%=rs1("image")%>" width="150" height="130" border=0 onerror="this.style.display='none'" id="Anh" name="Anh">
			<% End If %>
			<%if rs1("image") <> "" or pathanh <>"" then%>
				<input type="button" name="IndexCreateButton" class="tintuc2" value="B&#7887; &#7843;nh" class="SmallButton" onClick="javascript: document.frmAddNews.imagecu.value = ''; document.frmAddNews.Anh.style.display='none';this.style.display='none';">
							<%end if%>
			</td>
		  </tr>
		  <tr>
			<td width="100"  class="tintuc1">&nbsp;&nbsp;Ảnh mới :</td>
			<td width="550">
			<input name="pathanh"  class="tintuc1" style="FLOAT: left; HEIGHT: 24; WIDTH: 400" value="">&nbsp;&nbsp;
            <A href="javascript:openWindow('pop_upload2.asp?er=4')"  class="tintuc2">Tải ảnh..</A>
			<input type="hidden" name="imagecu" value="<%=rs1("Image")%>">
		 	</td>
		  </tr>
		  <tr valign="top">
			<td width="100"  class="tintuc1">Trích dẫn bài viết</td>
			<td width="550">
							<textarea name="quotation" rows="7" class="tintuc1" style="width:550"><%=rs1("quotation")%></textarea>	
			</td>
		  </tr>
		  <tr valign="top">
			<td width="100"  class="tintuc1">Nội dung bài viết</td>
			<td width="550">
				<%
					oFCKeditor.value = rs1("Content")
					oFCKeditor.Create "MsgContent"
				%>	
			</td>
		  </tr>
        <tr align="center">
			<td width="100" nowrap></td>
          	<td width="100%" align="left">
				<input type="submit" name="submit" value="Sửa đổi" class="tintuc2">
            </td>
        </tr>
	</table>
	</td>
	</tr>

</table>
</form>