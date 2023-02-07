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
  <tr><td>
  <table width="830" border="0" cellspacing="0" cellpadding="0">
	  <tr>
		<td align="left"><font class="giapha"><b>PHẢ ĐỒ DÒNG HỌ</b></font></td>
		<td width="300"></td>
		<td class="xemdoi2">XEM THEO:&nbsp;&nbsp;</td>
		<td><a href="#" title="Xem phả đồ theo danh sách"><img src="../images/danhsach.png" border="0" width="30"></a></td>
		<td><a href="#" class="giapha2" title="Xem phả đồ theo danh sách">&nbsp;Danh sách</a></td>
		<td width="20"></td>
		<td><a href="../Pha-do/" title="Xem phả đồ theo cây gia phả"><img src="../images/danhsachcay.png" border="0" width="30"></a></td>
		<td><a href="../Pha-do/" class="giapha2" title="Xem phả đồ theo cây gia phả">&nbsp;Cây gia phả</a></td>
	  </tr>
	</table>
	</td></tr>
  <tr><td height="10"></td></tr>
  <tr><td height="41" background="../images/bgtimkiem.png">
  <table width="830" border="0" cellspacing="0" cellpadding="0" align="left">
  <tr>
  	<td width="5"></td>
							<form name="frm" action="/Ket-qua-tim-kiem/" method="get">
								<td width="55" class="timkiem" align="left">Từ khóa: </td>
								<td><input type="text" class="timkiem" name="timkiem" style="width:150; border:1" onfocus="if (this.value=='Từ khoá')this.value='';" value="Từ khoá"></td>
								<TD width="10"  align="left"></TD>
								<td width="60"  align="left" class="timkiem">Giới tính: </td>
								<td width="80" align="left">
								<select name="gioitinh" style=" width:80" class="timkiem">
														<option value='3'>Tất cả</option>
														<option value='0'>Không rõ</option>
														<option value='1'>Nam</option>
														<option value='2'>Nữ</option>
								</select>
								</td>
								<td width="10"></td>
								<td width="70" class="timkiem">Tình trạng: </td>
								<td width="85" align="left">
								<select name="tinhtrang" style=" width:85" class="timkiem">
														<option value='3'>Tất cả</option>
														<option value='0'>Không rõ</option>
														<option value='1'>Còn sống</option>
														<option value='2'>Đã mất</option>
								</select>
								</td>
								<td width="10"></td>
								<td width="45" class="timkiem">Thuộc: </td>
								<td width="115" align="left">
								<select name="thuoc" style=" width:115" class="timkiem">
														<option value='0'>Dòng họ</option>
														<option value='1'>Nghành ngoại</option>
								</select>
								</td>
								<td width="10"></td>
								<td align="right" width="100"><input type="image" name="submit" src="../images/timkiem.png" border="0" style="cursor:hand;"></td>
								  	<td width="5"></td>
							</form>
</table>
</td></tr>
  <tr><td height="10"></td></tr>
  <tr><td>
<table border="0" cellpadding="0" cellspacing="0" width="830">
  <tr><td align="LEFT"  height="41" background="../images/bgtimkiem.png" class="xemdoi2">&nbsp;&nbsp;Xem theo đời thứ: 
							<% 
								openconn
								set rsdoi= server.CreateObject("adodb.recordset")
								rsdoi.open "select * from tbldoi order by iddoi asc", conn 
								if rsdoi.eof then
							%>
							<%  
								else
								do while not rsdoi.EOF
							%>	
							  <a class="xemdoi" target="_self" href="?sessionpage=<%= rsdoi("iddoi") %>" title="Xem danh sách của đời thứ <%= rsdoi("name") %>"><b>&nbsp;<%= rsdoi("name") %>&nbsp;</b></a> | 
							<%
								rsdoi.movenext
								loop
								end if
								rsdoi.close
							%>
  </td></tr>
  <tr><td height="10"></td></tr>
  <tr><td class="dangxem">
  										<%
											openconn
											sessionpage=request("sessionpage")
											'sessionpage = formatSQLInput(Request.QueryString("sessionpage"))
											sessionpage=replace(request.QueryString("sessionpage"),"'","''")
											set rs2= server.CreateObject("adodb.recordset")
											rs2.open "SELECT * FROM tbldoi where iddoi="&sessionpage&" ", conn 
											if not rs2.eof then
										%>
		HIỆN TẠI BẠN ĐANG XEM: <font class="xemdoi1">ĐỜI THỨ <%=rs2("name")%></font>
							<%
								end if
							%>
</td></tr>
<tr><td height="10"></td></tr>
  <tr>
    <td width="830" colspan="2">
    <table border="1" cellpadding="3" cellspacing="0" style="border-collapse: collapse" bordercolor="#B5B5B3" width="830">
      <tr>
        <td width="325" bgcolor="#DEDBCE" class="doithu">
										<%
											openconn
											sessionpage=request("sessionpage")
											'sessionpage = formatSQLInput(Request.QueryString("sessionpage"))
											sessionpage=replace(request.QueryString("sessionpage"),"'","''")
											set rs2= server.CreateObject("adodb.recordset")
											rs2.open "SELECT * FROM tbldoi  where iddoi="&sessionpage&" ", conn 
											if not rs2.eof then
										%>
										&nbsp;ĐỜI THỨ <%=rs2("name")%>
										<% end if %>
		</td>
		 <td width="325" bgcolor="#DEDBCE" class="doithu">
										<%
											openconn
											sessionpage=request("sessionpage")
											'sessionpage = formatSQLInput(Request.QueryString("sessionpage"))
											sessionpage=replace(request.QueryString("sessionpage"),"'","''")
											set rs2= server.CreateObject("adodb.recordset")
											rs2.open "SELECT * FROM tbldoi  where iddoi="&sessionpage&" ", conn 
											if not rs2.eof then
										%>
		 								&nbsp;CON CỦA ĐỜI THỨ <%=rs2("name")%>
										<%
											end if
										%>
		 </td>
		<td width="80" bgcolor="#DEDBCE" class="doithu">&nbsp;GIỚI TÍNH</td>
		<td width="100" bgcolor="#DEDBCE" class="doithu">&nbsp;TÌNH TRẠNG</td>
        </tr>
      <% 	
	  		 openconn	
			 sessionpage=replace(request.QueryString("sessionpage"),"'","''")
	  		 set rs=server.CreateObject("adodb.recordset")
	 		 rs.open"Select * from tblgiapha where iddoi="&sessionpage&" order by idparrent ASC",conn,3,1
			 do while not rs.eof
	 %>
	  <tr bgcolor="#E3E2DE">
        <td colspan="2">&nbsp;<b><a href="../Nhan-vat/?sessionpage=<%=rs("idmodule")%>" class="giapha2" title="Xem thông tin về <% if rs("gioitinh")=1 then %>ông <%else%>bà <%end if%><%= rs("name") %>"><%= rs("name") %></a></b>
		<input type="hidden" name="txtBlockID" value="<%=RS("idmodule")%>">
		</td>
		 <td class="giapha20" align="center"><% if rs("gioitinh")=0 then %>&nbsp;Không rõ <% elseif rs("gioitinh")=1 then %>&nbsp;Nam<% else %>Nữ<% end if %></td>
		 <td class="giapha20" align="center"><% if rs("tinhtrang")=0 then %>&nbsp;Không rõ <% elseif rs("tinhtrang")=1 then %>&nbsp;Còn sống<% else %>Đã mất<% end if %></td>
        </tr>
				<%
					openconn
					set rs1= server.CreateObject("adodb.recordset")
					rs1.open "select * from tblgiapha where idparrent="&rs("idmodule")&" ", conn,3,1 
					if not rs1.eof then
					do while not rs1.eof
				%>
		 <tr>
        <td></td>
		<td class="giapha2">&nbsp;<a href="../Nhan-vat/?sessionpage=<%=rs1("idmodule")%>" class="giapha2" title="Xem thông tin về <% if rs1("gioitinh")=1 then %>ông <%else%>bà <%end if%><%= rs1("name") %>"><%= rs1("name") %></a></td>
		 <td class="giapha20" align="center"><% if rs1("gioitinh")=0 then %>&nbsp;Không rõ <% elseif rs1("gioitinh")=1 then %>&nbsp;Nam<% else %>Nữ<% end if %></td>
		 <td class="giapha20" align="center"><% if rs1("tinhtrang")=0 then %>&nbsp;Không rõ <% elseif rs1("tinhtrang")=1 then %>&nbsp;Còn sống<% else %>Đã mất<% end if %></td>
        </tr>
				<%
					rs1.movenext
					loop
					end if
				%>
				<% 
					RS.MoveNext
					loop
				%>
    </table>    
    </td>
  </tr>
</table></td></tr>
  <tr><td height="20"></td></tr>
  <tr><td align="center"><img src="../images/bggiaphaft.png" height="38"/></td></tr>
</table>
</div>
</body>