<!--#include file="connection.asp"-->
<!--#include file="sha256.asp"-->
<%
if request("action")="submit" then
username=replace(request.Form("username"),"'","''")
password=sha256(replace(request.Form("password"),"'","''"))
openconn
set rs=server.CreateObject("adodb.recordset")
rs.open "select * from tbladmin where username = '"&username&"'and password = '"&password&"'",conn 
	if not rs.eof then 
	session("username")=rs("username")
	session("idadmin")=rs("idadmin")
%>
<script language="javascript">
	alert("Chúc mừng bạn đã đăng nhập thành công!");
	window.location.href="../hbbx/"
</script>
<%
else
session("username")=""
session("id")=""
%>
<script language="javascript">
	alert("Đăng nhập thất bại! Xin vui lòng đăng nhập lại!");
	window.location.href="javascript:history.go(-1)"
</script>
<%end if%>
<%end if%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Login</title>
<link rel="stylesheet" href="loginPage.css">
</head>
<body>

<table border="0" width="100%" height="100%" cellpadding="0" style="border-collapse: collapse">
	<tr>
		<td class="WelcomeLayout">
		  <div class="text">H&#7878; TH&#7888;NG QUẢN TRỊ WEBSITE<br>
			GIA PHẢ HỌ BÙI XUÂN BẢNG</div>
		</td>
		<td class="VerticalSeparator"></td>
		<td class="LoginLayout">
		<form name="frmLogin" method="post">
		<input type="hidden" name="action" value="submit">
			<div class="formMain">
				<div class="content">
				  <div class="leftPanel">
						<div class="secureIcon"></div>
					  <div>Bạn vui lòng nhập chính xác Tên truy cập và Mật khẩu để đăng nhập vào hệ thống.</div>
				  </div>
					<div class="rightPanel">
						<div class="label">Tên truy cập</div>
						<div class="textfield"><input name="username" type="text" class="textbox" size="20">
						</div>
						<div class="label">Mật khẩu</div>
						<div class="textfield">
							<input name="password" type="password" class="textbox" size="20">
						</div>
						<div class="AutoLogin">
							<div class="chkbox"><input type="checkbox" name="chkAutoLogin" value="1"></div>
							<div class="textlabel">Ghi nhớ mật khẩu</div>
						</div>
						<div class="buttonLine"><input type="submit" name="submit" value="Đăng nhập" class="button"></div>
					</div>
				</div>
			</div>
			<div class="copyright">Copyright © 2013 HỌ BÙI XUÂN BẢNG. All rights reserved.</div>
		</form>
		</td>
	</tr>
</table>

</body>
</html>