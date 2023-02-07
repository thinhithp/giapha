<%if session("username")="" then%>
<script language="javascript">
	alert("Bạn vui lòng đăng nhập để vào hệ thống quản trị!");
	window.location="../hbxb/";
</script>
<%end if%>
<% 
if request("action")="submit" then
	idmodule=replace(request("idmodule"),"'","''")
	txtNTitle=replace(request("txtNTitle"),"'","''")
	pathanh=replace(request("pathanh"),"'","''")
	quotation=replace(request("quotation"),"'","''")
	MsgContent=replace(request("MsgContent"),"'","''")
	ngaycapnhat=replace(request("ngaycapnhat"),"'","''")
	 openconn
	 set rs=server.CreateObject("adodb.recordset")
	 sql="insert into tblcat(idmodule,Title,quotation,Content,Image,ngaycapnhat) values('"&idmodule&"',N'"&txtNTitle&"',N'"&quotation&"',N'"&MsgContent&"','"&pathanh&"','"&ngaycapnhat&"')"
	 conn.execute(sql)
	 response.Redirect("?hbxb=2&Quan-ly-tin-tuc.html")
%>
<%end if%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
function do_add()
{
	if (check_input())
	{
		document.frmNews.action="?hbxb=1&action=add";
		document.frmNews.submit();
	}
}
function openWindow(url) {
		  popupWin = window.open(url,'new_page','width=400,height=200,scrollbars=no');

		}
</script>
<form name="frmAddNews" method="post">
<input type="hidden" name="action" value="submit">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%"  bgcolor="#F7F7EF">
  <tr>
    <td width="600" align="left" class="title1">THÊM MỚI TIN TỨC</td>
  </tr>
  <tr>
    <td width="100%">
   	 <table border="0" cellpadding="3" cellspacing="0" style="border-collapse: collapse" width="650">
		  	<% 	
				 openconn	
				 set rs1=server.CreateObject("adodb.recordset")
				 rs1.open"Select * from tblmodule where idparrent = 0",conn
			 %> 
		 <tr>
			<td width="100" class="tintuc1">Danh m&#7909;c cha :</td>
			<td width="550">
			<select name="idmodule" style=" width:200" class="tintuc1">
									<%	do while not rs1.eof %>
									<%
										openconn
										set rs2= server.CreateObject("adodb.recordset")
										rs2.open "select * from tblmodule where idparrent='"&rs1("idmodule")&"' ", conn 
									do while not rs2.eof
									%>
									<option class="tintuc1" value='<%=rs2("idmodule")%>'>&nbsp;&nbsp;- - <%=rs2("name")%></option>
													<%
									 rs2.movenext
									 loop
									 rs2.close
									 %>
									
									<%
					 rs1.movenext
					 loop
					 rs1.close
					 %>
								</select>
			</td>
		  </tr>
		  <tr>
			<td width="100" class="tintuc1">Tiêu đề bài viết</td>
			<td width="550">
			<input name="txtNTitle" type="text" id="txtNTitle" class="tintuc1" style="width:550"></td>
		  </tr>
		  <tr>
			<td width="100" class="tintuc1">Ảnh hiển thị</td>
			<td width="550">
			<input name="pathanh" style="FLOAT: left; HEIGHT: 24; WIDTH: 400" value="" class="tintuc1">&nbsp;&nbsp;
            <A href="javascript:openWindow('pop_upload2.asp?er=4')" class="tintuc2">Tải ảnh..</A>
		 	</td>
		  </tr>
		   <tr valign="top">
			<td width="100" class="tintuc1">Trích dẫn bài viết</td>
			<td width="550">
							<textarea name="quotation"  rows="7" class="tintuc1" style="width:550"></textarea>	
			</td>
		  </tr>
		  <tr valign="top">
			<td width="100" class="tintuc1">N&#7897;i dung bài viết</td>
			<td width="550" class="tintuc1">
				<%
					oFCKeditor.Create "MsgContent"
				%>	
			</td>
		  </tr>
		  <tr>
			<td width="100" class="tintuc1">Ngày cập nhật</td>
			<td width="550">
				<input name="ngaycapnhat" class="tintuc1"><input class="tintuc2" type=button value="select" onClick="displayDatePicker('ngaycapnhat');">
			</td>
		  </tr>
        <tr align="center">
			<td width="100" nowrap></td>
          	<td width="100%" align="left">
				<input type="submit" name="submit" value="Thêm mới" class="tintuc2">
            </td>
        </tr>
	</table>
	</td>
	</tr>
</table>
</form>
