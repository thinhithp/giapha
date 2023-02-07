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
		sql="delete from tblAdmin Where idadmin='"&replace(Request.QueryString("nid"),"'","''")&"'"
		Conn.execute (sql)
		Response.Redirect("?hbxb=30&Quan-ly-nguoi-dung.html")
 end if%>
<%
if request("action")="submit" then
	names=replace(request("names"),"'","''")
	email=replace(request("email"),"'","''")
	mobile=replace(request("mobile"),"'","''")
	username=replace(request("username"),"'","''")
	password=sha256(replace(request("password"),"'","''"))
	 openconn
	 set rs=server.CreateObject("adodb.recordset")
	 sql="insert into tblAdmin(name,email,mobile,username,password) values(N'"&names&"','"&email&"',N'"&mobile&"','"&username&"','"&password&"')"
	 'response.Write(password)
	' response.End()
	 conn.execute(sql)
	 response.Redirect("?hbxb=30&Quan-ly-nguoi-dung.html")
%>
<%end if%>
<script>
function del_one(nid)
{
  if (confirm("Bạn đã chắc chắn chưa?")==true)
  {
  	document.location.href="?hbxb=30&action=del_one&nid="+nid;
  }
}
</script>
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
               		if(re_email.test(frmAddNews.Email.value)==false)
                   {
                       alert("Khuon dang cua email là:(Ten_Dang_Nhap@Ten_Mien.Com hoac .Net, .info,.Biz,...)");
					   frmAddNews.Email.focus();
						frmAddNews.Email.select();
						return false;
					}   
					// Everything is OK, return true
					return true;
				}
				
</script>

<form name="frmAddNews" method="post" onSubmit="return CheckForm()">
<input type="hidden" name="action" value="submit">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600">
  <tr>
    <td width="600" align="left" class="title1">QU&#7842;N L&#221; NG&#431;&#7900;I D&#217;NG</td>
  </tr>
  <tr>
    <td width="100%">
   	 <table border="0" cellpadding="3" cellspacing="0" style="border-collapse: collapse" width="600">
		  <tr>
			<td width="100" class="tintuc1">T&#234;n truy c&#7853;p:</td>
			<td width="500">
			<input name="username" class="tintuc1" type="text" size="70"></td>
		  </tr>
		  <tr>
			<td width="100" class="tintuc1">M&#7853;t kh&#7849;u:</td>
			<td width="500">
			<input name="password" class="tintuc1" type="password"  size="70"></td>
		  </tr>
		  <tr>
			<td width="100" class="tintuc1">Nh&#7853;p l&#7841;i m&#7853;t kh&#7849;u:</td>
			<td width="500">
			<input name="password1" class="tintuc1" type="password"  size="70"></td>
		  </tr>
		   <tr>
			<td width="100" class="tintuc1">H&#7885; t&#234;n:</td>
			<td width="500">
			<input name="names" class="tintuc1" type="text"  size="70"></td>
		  </tr>
		  <tr>
			<td width="100" class="tintuc1">Email:</td>
			<td width="500">
			<input name="Email" class="tintuc1" type="text"  size="70"></td>
		  </tr>
		 <tr>
			<td width="100" class="tintuc1">S&#7889; &#273;i&#7879;n tho&#7841;i:</td>
			<td width="500">
			<input name="mobile" class="tintuc1" type="text"  size="70"></td>
		  </tr>
        <tr align="center">
          	<td width="100%" colspan="2">
				<input type="submit" class="tintuc2" name="submit" value="Th&#234;m m&#7899;i">
            </td>
        </tr>
	</table>
	</td>
	</tr>
	<tr>
    <td width="100%">
    <table border="1" cellpadding="3" cellspacing="0" style="border-collapse: collapse" bordercolor="#B5B5B3" width="600" id="AutoNumber2">
      <tr>
        <td width="200" bgcolor="#DEDBCE" class="title2">&nbsp;H&#7884; T&#202;N</td>
		<td width="150" bgcolor="#DEDBCE"  class="title2">&nbsp;EMAIL</td>
        <td width="150" bgcolor="#DEDBCE" class="title2"><strong>ĐIỆN THOẠI</strong></td>
        <td colspan="2" width="100" bgcolor="#DEDBCE" class="title2"><div align="center"><b> QU&#7842;N L&#221;</b></div></td>
        </tr>
      <% 	
	  		 openconn	
	  		 set rs=server.CreateObject("adodb.recordset")
	 		 rs.open"Select * from tblAdmin order by idadmin DESC",conn,3,1
			 If Request.QueryString("page") = "" Then
			 intCurrentPage = 1
			 Else
			 intCurrentPage = CInt(Request.QueryString("page"))
			 End If
			 RS.PageSize = 10
			 If rs.PageCount > 0 then
			 rs.AbsolutePage = intCurrentPage
			 Else
			 intCurrentPage = 0
			 End If
			 j=1
			 i=1
			 do while not rs.eof
	 %>
	  <tr>
        <td class="tintuc1">&nbsp;<%= rs("Name") %></td>
		 <td class="tintuc1">&nbsp;<%=rs("Email")%></td>
        <td class="tintuc1">&nbsp;<%=rs("mobile")%></td>
        <td width="50"><div align="center"><a href="?hbxb=31&id=<%=rs("idadmin")%>" title="Sửa thông tin"><img src="images/sua.png" alt="Sửa thông tin" width="24" border="0"></a></div></td>
        <td width="50"><div align="center"><img src="images/xoa.png" title="Xóa thông tin" alt="Xóa thông tin" width="24" style="cursor:hand " onClick="del_one('<%= rs("idadmin") %>');"></div></td>
        </tr>
		<% 
				if j=RS.PageSize then
					exit do
				end if 
				j=j+1					
				i = i + 1
				RS.MoveNext
				loop
		%>

    </table>    
    </td>
  </tr>
</table>
</form>
