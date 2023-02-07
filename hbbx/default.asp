<!--#include file="connection.asp"-->
<!--#include file="sha256.asp"-->
<%if session("username")="" then%>
<script language="javascript">
	alert("Bạn vui lòng đăng nhập để vào hệ thống quản trị!");
	window.location="../hbxb/";
</script>
<%end if%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/cms.css">
<link rel="stylesheet" type="text/css" href="css/styles.css">
<script language="javascript" src="NgayThang.js"></script>
<!--#INCLUDE file="fckeditor.asp" -->
<%
	Dim oFCKeditor
	Set oFCKeditor = New FCKeditor
	oFCKeditor.BasePath="../hbbx/"
%>
<title>QUAN LY NOI DUNG WEBSITE GIA PHA</title>
</head>
<body style="margin-bottom:0; margin-left:0; margin-right:0; margin-top:0">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="2" height="40" bgcolor="#0a69db">
		<font class="tintuc1">&nbsp;&nbsp;Bạn đang truy cập với tên sử dụng <b><font color="#FFFFFF" style="text-transform:uppercase"><%= Session("username") %></font></b> (</font><a href="?hbxb=29&Quan-ly-website.html" class="tintuc">Đổi mật khẩu</u> <font  class="tintuc1">|</a></font> 
        <a target="_top" href="?hbxb=32" class="tintuc">Thoát</a><font  class="tintuc1">)</font></td>
  </tr>
  <tr>
    <td width="180" bgcolor="#efefe7" valign="top"><!--#include file = "includes/inc_menu.asp" --></td>
    <td valign="top">
	<% hbxb=request.QueryString("hbxb") %>
	  <%if hbxb <> "" then%>
		<%if hbxb=1 then%><!--#include file = "cat_new.asp" -->
		<%elseif hbxb=2 then%><!--#include file = "cat_list.asp" -->
		<%elseif hbxb=3 then%><!--#include file = "cat_edit.asp" -->
		<%elseif hbxb=4 then%><!--#include file = "config.asp" -->
		<%elseif hbxb=5 then%><!--#include file = "phaky.asp" -->
		<%elseif hbxb=6 then%><!--#include file = "tuduong.asp" -->
		<%elseif hbxb=7 then%><!--#include file = "tocuoc.asp" -->
		<%elseif hbxb=8 then%><!--#include file = "thuyto_new.asp" -->
		<%elseif hbxb=9 then%><!--#include file = "doi_list.asp" -->
		<%elseif hbxb=10 then%><!--#include file = "doi_new.asp" -->
		<%elseif hbxb=11 then%><!--#include file = "doi_edit.asp" -->
		<%elseif hbxb=12 then%><!--#include file = "giapha_list.asp" -->
		<%elseif hbxb=13 then%><!--#include file = "giapha_new.asp" -->
		<%elseif hbxb=14 then%><!--#include file = "giapha_edit.asp" -->
		<%elseif hbxb=15 then%><!--#include file = "giaphangoai_new.asp" -->
		<%elseif hbxb=16 then%><!--#include file = "giaphangoai_list.asp" -->
		<%elseif hbxb=17 then%><!--#include file = "giaphangoai_edit.asp" -->
		<%elseif hbxb=18 then%><!--#include file = "conngoai_new.asp" -->
		<%elseif hbxb=19 then%><!--#include file = "conngoai_edit.asp" -->
		<%elseif hbxb=20 then%><!--#include file = "anh_list.asp" -->
		<%elseif hbxb=21 then%><!--#include file = "anh_new.asp" -->
		<%elseif hbxb=22 then%><!--#include file = "anh_edit.asp" -->
		<%elseif hbxb=23 then%><!--#include file = "nhomanh_list.asp" -->
		<%elseif hbxb=24 then%><!--#include file = "nhomanh_new.asp" -->
		<%elseif hbxb=25 then%><!--#include file = "nhomanh_edit.asp" -->
		<%elseif hbxb=26 then%><!--#include file = "video_list.asp" -->
		<%elseif hbxb=27 then%><!--#include file = "video_new.asp" -->
		<%elseif hbxb=28 then%><!--#include file = "video_edit.asp" -->
		<%elseif hbxb=29 then%><!--#include file = "configsite.asp" -->
		<%elseif hbxb=30 then%><!--#include file = "user_list.asp" -->
		<%elseif hbxb=31 then%><!--#include file = "user_edit.asp" -->
		<%elseif hbxb=32 then%><!--#include file = "logout.asp" -->
		<%end if%>
		<%else%>
		<!--#include file = "includes/inc_info.asp" -->
	  <%end if%>
	</td>
  </tr>
</table>
</body>