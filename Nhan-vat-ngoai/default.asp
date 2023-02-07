<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file = "../functions.asp" -->
<!--#include file = "../connection.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
		<% 	
	  		 openconn	
	  		 set rs=server.CreateObject("adodb.recordset")
	 		 rs.open"Select * from tblconfig",conn
		 %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="description" content="Gia phả là tài liệu ghi chép liên tục lai lịch, thân thế, sự nghiệp của từng người trong gia tộc, theo một hệ thống trên dưới, trưởng thứ, nội ngoại nhất định. Gia phả là vật thiêng liêng của tộc họ, nó đánh thức ở con người sự hướng về cội nguồn. Với dịch vụ phả hệ trực tuyến, là công cụ đắc lực để lưu trữ gia phả một cách an toàn và khoa học nhất, một phương pháp kết nối cộng đồng thành viên trong dòng họ đơn giản mà không bị ảnh hưởng bởi khoảng cách về thời gian, trở ngại về không gian..."/>
<title><%=rs("sitename")%></title>
<link type="text/css" rel="stylesheet" href="../css/style.css">
<script type="text/javascript" src="../Video/jquery-1.js"></script>
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
</head>
<body style="background-image: url(../images/bg-banner.jpg); background-repeat: repeat;">
<div style="width:100%; background-image:url(../images/bgtren.png); background-size: 100%; background-origin: content; background-repeat: no-repeat; margin:0 0 0 0;">
<table width="830" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr><td height="450"></td></tr>
  <tr>
    <td>
	<table width="830" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><a href="http://hobuixuanbang.com/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image1','','../images/mntrangchu10.png',1)"><img src="../images/mntrangchu1.png" width="150" name="Image1" border="0"></a></td>
	<td width="20"></td>
    <td><a href="/Tin-tuc/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image2','','../images/mntintuc10.png',1)"><img src="../images/mntintuc1.png" width="150" name="Image2" border="0"></a></td>
	<td width="20"></td>
    <td><a href="/Pha-ky/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image3','','../images/mnphaky10.png',1)"><img src="../images/mnphaky1.png" width="150" name="Image3" border="0"></a></td>
	<td width="20"></td>
    <td><a href="/Tu-duong/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image4','','../images/mntuduong10.png',1)"><img src="../images/mntuduong1.png" width="150" name="Image4" border="0"></a></td>
	<td width="20"></td>
    <td><a href="/Toc-uoc/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image5','','../images/mntocuoc10.png',1)"><img src="../images/mntocuoc1.png" width="150" name="Image5" border="0"></a></td>
  </tr>
</table>
	</td>
  </tr>
  <tr><td height="22"></td></tr>
				<%
					openconn
					'sessionpage = formatSQLInput(Request.QueryString("sessionpage"))
					sessionpage=replace(request.QueryString("sessionpage"),"'","''")
					set rs= server.CreateObject("adodb.recordset")
					rs.open "SELECT * FROM tblgiaphangoai where idmodule='"&sessionpage&"'", conn 
					if not rs.eof then
					%>
  <tr><td>
  <table width="830" border="0" cellspacing="0" cellpadding="0">
	  <tr>
		<td align="left"><font class="giapha" style="text-transform:uppercase"><b>THÔNG TIN VỀ <% if rs("gioitinh")=1 then %>ÔNG <% elseif rs("gioitinh")=2 then %>BÀ <% end if %> <%=rs("name")%></b></font></td>
		<td align="right"><a href="javascript:history.go(-1)" class="giapha2"><img src="../images/back.png" border="0" height="35"> Về trang trước</a></td>
	  </tr>
	</table>
	</td></tr>
  <tr><td height="5"></td></tr>
  <tr><td><% if rs("diachi")="" then %><% else %><font class="tintuc2">Quê quán: </font><font class="tintuc20"><%=rs("diachi")%></font><% end if %><% if rs("nghenghiep")="" then %><% else %><font class="tintuc2"> | Nghề nghiệp: </font><font class="tintuc20"><%=rs("nghenghiep")%></font><% end if %></td></tr>
  <tr><td><font class="tintuc2"><% if rs("gioitinh")=1 then %>Ông <% elseif rs("gioitinh")=2 then %>Bà <% end if %></font><font class="tintuc20" style="text-transform:uppercase "><%=rs("name")%></font><font class="tintuc2"> là <% if rs("kieu")=0 then %>con thứ <%else%><% if rs("gioitinh")=1 then %>chồng thứ <% elseif rs("gioitinh")=2 then %>vợ thứ <% end if %><% end if %></font><font class="tintuc20"><%=rs("positions")%></font><font class="tintuc2"> của</font>
									<%
										openconn
			 							id=replace(request.QueryString("id"),"'","''")
										set rs4= server.CreateObject("adodb.recordset")
										rs4.open "select * from tblgiapha where idmodule = "&rs("idgiapha")&"", conn 
										if not rs4.eof then
									%>
					<font class="tintuc2"><% if rs4("gioitinh")=1 then %>Ông <% elseif rs4("gioitinh")=2 then %>Bà <% end if %></font><a href="../Nhan-vat/?sessionpage=<%=rs4("idmodule")%>" class="tintuc4" title="Xem thông tin về <% if rs4("gioitinh")=1 then %>Ông <% elseif rs4("gioitinh")=2 then %>Bà <% end if %> <%=rs4("name")%>"><font  style="text-transform:uppercase "><%=rs4("name")%></font></a>
					<%
						end if
						rs4.close
					%>
  </td></tr>
  <tr><td height="10"></td></tr>
  <tr><td align="left" valign="top">
	<table width="830" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="140"><img src="../images/noimages.jpg" width="140" height="151"></td>
    <td width="10"></td>
    <td width="350" valign="top">
	<table width="350" border="1" cellpadding="2" cellspacing="2" style="border-collapse: collapse" bordercolor="#dadada">
  <tr>
    <td width="80" bgcolor="#f7f7f7" class="tintuc2">&nbsp;Họ và tên</td>
    <td width="270"  bgcolor="#f7f7f7" class="tintuc20">&nbsp;<%=rs("name")%></td>
  </tr>
  <tr>
    <td bgcolor="#eeeeee" class="tintuc2">&nbsp;Tên tự</td>
    <td bgcolor="#eeeeee" class="tintuc20">&nbsp;<%=rs("tentu")%></td>
  </tr>
  <tr>
    <td bgcolor="#f7f7f7" class="tintuc2">&nbsp;Giới tính</td>
    <td  bgcolor="#f7f7f7" class="tintuc20">&nbsp;<% if rs("gioitinh")=1 then %>Nam<% elseif rs("gioitinh")=2 then %>Nữ<% else %>Không rõ<% end if %></td>
  </tr>
  <tr>
    <td bgcolor="#eeeeee" class="tintuc2">&nbsp;Điện thoại</td>
    <td bgcolor="#eeeeee" class="tintuc20">&nbsp;<%=rs("dienthoai")%></td>
  </tr>
  <tr>
    <td bgcolor="#f7f7f7" class="tintuc2">&nbsp;Email</td>
    <td bgcolor="#f7f7f7" class="tintuc20">&nbsp;<%=rs("email")%></td>
  </tr>
</table>
	</td>
	<td width="20"></td>
    <td width="310" valign="top">
	<table width="310" border="1" cellpadding="2" cellspacing="2" style="border-collapse: collapse" bordercolor="#dadada">
  <tr>
    <td width="80" bgcolor="#f7f7f7" class="tintuc2">&nbsp;Tình trạng</td>
    <td width="230"  bgcolor="#f7f7f7" class="tintuc20">&nbsp;<% if rs("tinhtrang")=1 then %>Còn sống<% elseif rs("tinhtrang")=2 then %>Đã mất<% else %>Không rõ<% end if %></td>
  </tr>
  <tr>
    <td bgcolor="#eeeeee" class="tintuc2">&nbsp;Năm sinh</td>
    <td bgcolor="#eeeeee" class="tintuc20">&nbsp;<%=rs("namsinh")%></td>
  </tr>
  <% if rs("tinhtrang")=2 then %>
  <tr>
    <td bgcolor="#f7f7f7" class="tintuc2">&nbsp;Năm mất</td>
    <td bgcolor="#f7f7f7" class="tintuc20">&nbsp;<%=rs("nammat")%></td>
  </tr>
  <tr>
    <td bgcolor="#eeeeee" class="tintuc2">&nbsp;Hưởng thọ</td>
    <td bgcolor="#eeeeee" class="tintuc20">&nbsp;<%=rs("huongtho")%> tuổi</td>
  </tr>
  <tr>
    <td bgcolor="#f7f7f7" class="tintuc2">&nbsp;An táng tại</td>
    <td  bgcolor="#f7f7f7" class="tintuc20">&nbsp;<%=rs("noiantang")%></td>
  </tr>
  <% else %>
  <% end if %>
</table>
	</td>
  </tr>
</table>
  </td></tr>
  <tr><td height="20"></td></tr>
  <tr><td><FONT class="tintuc3" style="text-transform:uppercase">Tiểu sử, Sự nghiệp, Công đức, Ghi chú</FONT></td></tr>
  <tr><td height="5"></td></tr>
  <tr><td><%= rs("tieusu") %></td></tr>
					<%
						end if
						rs.close
					%>
  <tr><td height="30"></td></tr>
  <tr><td align="center"><img src="../images/bggiaphaft.png" height="38"/></td></tr>
</table>
</div>
</body>