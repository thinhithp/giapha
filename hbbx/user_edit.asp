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
	email=replace(request("email"),"'","''")
	mobile=replace(request("mobile"),"'","''")
	username=replace(request("username"),"'","''")
	password=sha256(replace(request("password"),"'","''"))
	 openconn
	 set rs=server.CreateObject("adodb.recordset")
	 sql=" update tblAdmin set name=N'"&names&"',email='"&email&"',mobile=N'"&mobile&"',username='"&username&"',password='"&password&"' where idadmin='"&id&"'"
	 conn.execute(sql)
	 response.Redirect("?hbxb=30&Quan-ly-nguoi-dung.html")
%>
<%end if%>
<script language="javascript">
				function CheckForm()
				{
					if(frmAddNews.username.value == "")
					{
						alert("Mời bạn nhập vào tên truy cập");
						frmAddNews.username.focus();
						frmAddNews.username.select();
						return false;
					}
					if(frmAddNews.password.value == "")
					{
						alert("Mời bạn nhập vào mật khẩu ");
						frmAddNews.password.focus();
						frmAddNews.password.select();
						return false;
					}
					if(frmAddNews.password1.value == "")
					{
						alert("Mời bạn nhập lại mật khẩu");
						frmAddNews.password1.focus();
						frmAddNews.password1.select();
						return false;
					}
					if(frmAddNews.password.value !=frmAddNews.password1.value )
					{
						alert("Mật khẩu của bạn không khớp");
						frmAddNews.password1.focus();
						frmAddNews.password1.select();
						return false;
					}
					if(frmAddNews.names.value =="" )
					{
						alert("Mời bạn nhập vào họ tên của bạn");
						frmAddNews.names.focus();
						frmAddNews.names.select();
						return false;
					}
					re_email=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
               		if(re_email.test(frmAddNews.email.value)==false)
                   {
                       alert("Khuon dang cua email là:(Ten_Dang_Nhap@Ten_Mien.Com hoac .Net, .info,.Biz,...)");
					    frmAddNews.email.focus();
						frmAddNews.email.select();
						return false;
					}   
					// Everything is OK, return true
					return true;
				}
				function openWindow(url) {
		  popupWin = window.open(url,'new_page','width=400,height=200,scrollbars=no');

		}
</script>
<form name="frmAddNews" method="post" onSubmit="return CheckForm()">
<input type="hidden" name="action" value="submit">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600">
  <tr>
    <td width="100%" align="center" class="title1">SỬA NG&#431;&#7900;I D&#217;NG</td>
  </tr>
  <tr>
    <td width="100%">
   	<% 	
	  		 openconn	
	  		 set rs1=server.CreateObject("adodb.recordset")
	 		 rs1.open"Select * from tblAdmin where idadmin = '"&request.QueryString("id")&"'",conn
	 %>
	 <table border="0" cellpadding="3" cellspacing="0" style="border-collapse: collapse" width="600">
		  <tr>
			<td width="100" class="tintuc1">T&#234;n truy c&#7853;p :</td>
			<td width="500">
			<input name="username" class="tintuc1" type="text" value="<%=rs1("username")%>"  size="70"></td>
		  </tr>
		   <tr>
			<td width="100" class="tintuc1">M&#7853;t kh&#7849;u :</td>
			<td width="500">
			<input name="password" class="tintuc1" type="password" value=""  size="70"></td>
		  </tr>
		   <tr>
			<td width="100" class="tintuc1">Nh&#7853;p l&#7841;i m&#7853;t kh&#7849;u :</td>
			<td width="500">
			<input name="password1" class="tintuc1" type="password" value=""  size="70"></td>
		  </tr>
		   <tr>
			<td width="100" class="tintuc1">H&#7885; t&#234;n :</td>
			<td width="500">
			<input name="names" class="tintuc1" type="text" value="<%=rs1("name")%>"  size="70"></td>
		  </tr>
		  <tr>
			<td width="100" class="tintuc1">Email :</td>
			<td width="500">
			<input name="email" class="tintuc1" type="text" value="<%=rs1("EMail")%>"  size="70"></td>
		  </tr>
		  <tr>
			<td width="100" class="tintuc1">&#272;i&#7879;n tho&#7841;i :</td>
			<td width="500">
			<input name="mobile"  class="tintuc1"type="text" value="<%=rs1("mobile")%>"  size="70"></td>
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