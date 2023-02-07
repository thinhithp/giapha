<%if session("username")="" then%>
<script language="javascript">
	alert("Bạn vui lòng đăng nhập để vào hệ thống quản trị!");
	window.location="../hbxb/";
</script>
<%end if%>
<% 
if request("action")="del_one" then
		openconn
	   set rs=server.CreateObject("adodb.recordset")
		sql="delete from tblnhomanh Where idnhomanh='"&replace(Request.QueryString("nid"),"'","''")&"'"
		Conn.execute (sql)
		Response.Redirect("?hbxb=23&Quan-ly-nhom-anh.html")
end if%>		
<%
if request("action")="submit" then
	names=replace(request("names"),"'","''")
	pathanh=replace(request("pathanh"),"'","''")
	thutu=replace(request("thutu"),"'","''")
	 openconn
	 set rs=server.CreateObject("adodb.recordset")
	 sql="insert into tblnhomanh(name,image,thutu) values(N'"&names&"','"&pathanh&"','"&thutu&"')"
	 conn.execute(sql)
	 response.Redirect("?hbxb=23&Quan-ly-nhom-anh.html")
%>
<%end if%>
<script>
function del_one(nid)
{
  if (confirm("Bạn đã chắc chắn chưa?")==true)
  {
  	document.location.href="nhomanh_list.asp?action=del_one&nid="+nid;
  }
}
</script>
<form name="frmAddNews" method="post">
<input type="hidden" name="action" value="submit">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600">
  <tr>
    <td width="100%" align="left" class="title1">THÊM MỚI NHÓM ẢNH</td>
  </tr>
  <tr>
    <td width="100%">
   	 <table border="0" cellpadding="3" cellspacing="0" style="border-collapse: collapse" width="600">
		  <tr>
			<td width="100" class="tintuc1">Tên nhóm ảnh</td>
			<td width="500">
			<input name="names"  class="tintuc1" type="text" style=" width:400"></td>
		  </tr>
		  <tr>
			<td class="tintuc1">Ảnh đại diện</td>
			<td>
			<input name="pathanh"  class="tintuc1" style="FLOAT: left; HEIGHT: 24; WIDTH: 400" value="">
            <A href="javascript:openWindow('pop_upload4.asp?er=4')" class="tintuc2">&nbsp;Upload..</A>
		 	</td>
		  </tr>
		   <tr valign="top">
			<td class="tintuc1">Thứ tự</td>
			<td>
			<input type="text"  class="tintuc1" name="thutu" value="" style=" width:400"></td>
		  </tr>
        <tr align="center">
          	<td width="700" colspan="2">
				<input type="submit"  class="tintuc2" name="submit" value="Th&#234;m m&#7899;i">
            </td>
        </tr>
	</table>
	</td>
	</tr>
	
</table>
</form>