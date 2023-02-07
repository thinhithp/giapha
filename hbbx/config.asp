<%if session("username")="" then%>
<script language="javascript">
	alert("Bạn vui lòng đăng nhập để vào hệ thống quản trị!");
	window.location="../hbxb/";
</script>
<%end if%>
<% 
if request("action")="submit" then
	tendongho=replace(request("tendongho"),"'","''")
	diachidongho=replace(request("diachidongho"),"'","''")
	nguoibiensoan=replace(request("nguoibiensoan"),"'","''")
	nguoilienhe=replace(request("nguoilienhe"),"'","''")
	diachi=replace(request("diachi"),"'","''")
	email=replace(request("email"),"'","''")
	dienthoai=replace(request("dienthoai"),"'","''")
	 openconn
	 set rs=server.CreateObject("adodb.recordset")
	 sql=" update tblconfig set tendongho=N'"&tendongho&"',diachidongho=N'"&diachidongho&"',nguoibiensoan=N'"&nguoibiensoan&"',nguoilienhe=N'"&nguoilienhe&"',diachi=N'"&diachi&"',email=N'"&email&"',dienthoai=N'"&dienthoai&"'"
	 conn.execute(sql)
	 'response.Redirect("catif_list.asp")
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

function openWindow(url) {
		  popupWin = window.open(url,'new_page','width=400,height=200,scrollbars=no');

		}
</script>
<form name="frmAddNews" method="post">
<input type="hidden" name="action" value="submit">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600">
  <tr>
    <td width="100%" align="left" class="title1">CẤU HÌNH GIA PHẢ</td>
  </tr>
  <tr>
    <td width="100%">
   	<% 	
	  		 openconn	
	  		 set rs1=server.CreateObject("adodb.recordset")
	 		 rs1.open"Select * from tblconfig ",conn
	 %>
	 <table border="0" cellpadding="3" cellspacing="0" style="border-collapse: collapse" width="600">
		   <tr>
			<td width="150" class="tintuc1">Địa chỉ dòng họ</td>
			<td width="450">
			<input name="diachidongho" type="text" value="<%=rs1("diachidongho")%>" class="tintuc1" style="width:500"></td>
		  </tr>
		   <tr>
			<td width="150" class="tintuc1">Người đại diện/Tộc trưởng</td>
			<td width="450">
			<input name="nguoibiensoan" type="text" value="<%=rs1("nguoibiensoan")%>"  class="tintuc1" style="width:500"></td>
		  </tr>
		   <tr>
			<td width="150" class="tintuc1">Điện thoại người đại diện</td>
			<td width="450">
			<input name="tendongho" type="text" value="<%=rs1("tendongho")%>"  class="tintuc1" style="width:500"></td>
		  </tr>
		   <tr>
			<td width="150" class="tintuc1">Người liên hệ</td>
			<td width="450">
			<input name="nguoilienhe" type="text" value="<%=rs1("nguoilienhe")%>"  class="tintuc1" style="width:500"></td>
		  </tr>
		   <tr>
			<td width="150" class="tintuc1">Địa chỉ người liên hệ</td>
			<td width="450">
			<input name="diachi" type="text" value="<%=rs1("diachi")%>"  class="tintuc1" style="width:500"></td>
		  </tr>
		   <tr>
			<td width="150" class="tintuc1">Email người liên hệ</td>
			<td width="450">
			<input name="email" type="text" value="<%=rs1("email")%>"  class="tintuc1" style="width:500"></td>
		  </tr>
		   <tr>
			<td width="150" class="tintuc1">Điện thoại người liên hệ</td>
			<td width="450">
			<input name="dienthoai" type="text" value="<%=rs1("dienthoai")%>"  class="tintuc1" style="width:500"></td>
		  </tr>
        <tr align="center">
			<td width="150" nowrap></td>
          	<td width="100%" align="left">
				<input type="submit" name="submit" value="Cập nhật" class="tintuc2">
            </td>
        </tr>
	</table>
	</td>
	</tr>

</table>
</form>
