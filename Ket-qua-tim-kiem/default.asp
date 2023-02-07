<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
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
</head>
<body style="background-image: url(../images/bg-banner.jpg); background-repeat: repeat;">
<div style="width:100%; background-image:url(../images/bgtren.png); background-size: 100%; background-origin: content; background-repeat: no-repeat; margin:0 0 0 0;">

				<%
					thuoc=request("thuoc")
				%>
					<%
					If thuoc="0" then
					timkiem=request("timkiem")
					gioitinh=request("gioitinh")
					tinhtrang=request("tinhtrang")
					openconn
					set rs= server.CreateObject("adodb.recordset")
					If tinhtrang="3" then
						If gioitinh="3" then
							rs.open "SELECT * from tblgiapha where name like N'%"&timkiem&"%'", conn,3,1 
						else
							rs.open "SELECT * from tblgiapha where name like N'%"&timkiem&"%' and gioitinh like '%"&gioitinh&"%' ", conn,3,1 
						End if
					Else
						If gioitinh="3" then
							rs.open "SELECT * from tblgiapha where name like N'%"&timkiem&"%' and tinhtrang like '%"&tinhtrang&"%' ", conn,3,1 
						else
							rs.open "SELECT * from tblgiapha where name like N'%"&timkiem&"%' and tinhtrang like '%"&tinhtrang&"%' and gioitinh like '%"&gioitinh&"%'", conn,3,1 
						End if
					End if
					 If Request.QueryString("tab") = "" Then
					 intCurrentPage = 1
					 Else
					 intCurrentPage = CInt(Request.QueryString("tab"))
					 End If
					 RS.PageSize = 10
					 If rs.PageCount > 0 then
					 rs.AbsolutePage = intCurrentPage
					 Else
					 intCurrentPage = 0
					 End If
					 tt=1
					 j=1
					 i=1
					 'do while not rs.eof
				%>
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
		<td align="left"><font class="giapha"><b>KẾT QUẢ TÌM KIẾM</b></font></td>
		<td width="300"></td>
		<td class="giapha20">XEM THEO:&nbsp;&nbsp;</td>
		<td><a href="../Danh-sach/?sessionpage=1" title="Xem phả đồ theo danh sách"><img src="../images/danhsach.png" border="0" width="30"></a></td>
		<td><a href="../Danh-sach/?sessionpage=1" class="giapha2" title="Xem phả đồ theo danh sách">&nbsp;Danh sách</a></td>
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
<tr><td height="10"></td></tr>
  <tr>
    <td width="830" colspan="2">
    <table border="1" cellpadding="3" cellspacing="0" style="border-collapse: collapse" bordercolor="#B5B5B3" width="830">
      <tr>
        <td width="30" bgcolor="#DEDBCE" class="doithu" align="center">&nbsp;THỨ TỰ</td>
        <td width="100" bgcolor="#DEDBCE" class="doithu">&nbsp;HỌ VÀ TÊN</td>
		 <td width="50" bgcolor="#DEDBCE" class="doithu" align="center">&nbsp;ĐỜI THỨ</td>
		 <td width="100" bgcolor="#DEDBCE" class="doithu">&nbsp;CON ÔNG/BÀ</td>
		<td width="60" bgcolor="#DEDBCE" class="doithu" align="center">&nbsp;GIỚI TÍNH</td>
		<td width="80" bgcolor="#DEDBCE" class="doithu" align="center">&nbsp;TÌNH TRẠNG</td>
       </tr>
				<% 
					do while not rs.eof
				%>
		 <tr>
		 <td class="giapha20" align="center"><%=tt%></td>
        <td class="giapha2">&nbsp;<a href="../Nhan-vat/?sessionpage=<%=rs("idmodule")%>" class="giapha2" title="Xem thông tin về <%= rs("name") %>"><%= rs("name") %></a></td>
		<td class="giapha20" align="center"><%=rs("iddoi")%></td>
		<td class="giapha2">&nbsp;
									<%
										openconn
										set rs5= server.CreateObject("adodb.recordset")
										rs5.open "select * from tblgiapha where idmodule='"&rs("idparrent")&"' ", conn 
										if not rs5.eof then
									%>
									<a href="../Nhan-vat/?sessionpage=<%=rs5("idmodule")%>" class="giapha2" title="Xem thông tin về <%= rs5("name") %>"><%=rs5("name")%></A>
									<%
									 end if
									 rs5.close
									 %>
		</td>
		 <td class="giapha20" align="center"><% if rs("gioitinh")=0 then %>&nbsp;Không rõ <% elseif rs("gioitinh")=1 then %>&nbsp;Nam<% else %>Nữ<% end if %></td>
		 <td class="giapha20" align="center"><% if rs("tinhtrang")=0 then %>&nbsp;Không rõ <% elseif rs("tinhtrang")=1 then %>&nbsp;Còn sống<% else %>Đã mất<% end if %></td>
        </tr>
				<% 
				if j=RS.PageSize then
					exit do
				end if 
				tt=tt+1
				j=j+1					
				i = i + 1
				RS.MoveNext
				loop
				%>
    </table>    
    </td>
  </tr>
		<tr align="center">
			<td class="tintuc3" colspan="4">
			<%
					If rs.PageCount > 1 then
					'Print Previous Page if required
					If intCurrentPage <> 1 then
					Response.Write "<a href=""?timkiem="&timkiem&"&tab=" & intCurrentPage - 1 & """>Trang tr&#432;&#7899;c</a>"
					Else
					Response.Write "<font color=""#666666"">Trang tr&#432;&#7899;c</font>"
					End If
					'Print direct access page numbers.
					For intCount = 1 to rs.PageCount	
					If intCount = 1 then
					Response.Write " | "
					End If
					If intCount = intCurrentPage then
						Response.Write "<font color=""#FF0000"">"&intCount & "</font> | "
					Else
						Response.Write "<a href=""?timkiem="&timkiem&"&tab=" & intCount & """>" & intCount & "</a> | "
					End If
					Next
					'Print Next Page if required
					If intCurrentPage <> rs.PageCount then
						Response.Write "<a href=""?timkiem="&timkiem&"&tab=" & intCurrentPage + 1 & """>Trang sau</a>"
					Else
						Response.Write "<font color=""#666666"">Trang sau</font>"
					End If
					End If
					Response.Write "<br>Trang " & intCurrentPage & " / " & rs.PageCount 
				%>
			</td>
		</tr>
</table></td></tr>
  <tr><td height="50"></td></tr>
  <tr><td align="center"><img src="../images/bggiaphaft.png" height="38"/></td></tr>
</table>
<%end if%>
					<%
					If thuoc="1" then
					timkiem=request("timkiem")
					gioitinh=request("gioitinh")
					tinhtrang=request("tinhtrang")
					openconn
					set rs= server.CreateObject("adodb.recordset")
					If tinhtrang="3" then
						If gioitinh="3" then
							rs.open "SELECT * from tblgiaphangoai where name like N'%"&timkiem&"%'", conn,3,1 
						else
							rs.open "SELECT * from tblgiaphangoai where name like N'%"&timkiem&"%' and gioitinh like '%"&gioitinh&"%' ", conn,3,1 
						End if
					Else
						If gioitinh="3" then
							rs.open "SELECT * from tblgiaphangoai where name like N'%"&timkiem&"%' and tinhtrang like '%"&tinhtrang&"%' ", conn,3,1 
						else
							rs.open "SELECT * from tblgiaphangoai where name like N'%"&timkiem&"%' and tinhtrang like '%"&tinhtrang&"%' and gioitinh like '%"&gioitinh&"%'", conn,3,1 
						End if
					End if
					 If Request.QueryString("tab") = "" Then
					 intCurrentPage = 1
					 Else
					 intCurrentPage = CInt(Request.QueryString("tab"))
					 End If
					 RS.PageSize = 10
					 If rs.PageCount > 0 then
					 rs.AbsolutePage = intCurrentPage
					 Else
					 intCurrentPage = 0
					 End If
					 tt=1
					 j=1
					 i=1
					 'do while not rs.eof
				%>
<table width="830" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr><td height="360"></td></tr>
  <tr>
    <td>
	<table width="830" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><a href="http://hobuixuanbang.com" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image1','','../images/mntrangchu10.png',1)"><img src="../images/mntrangchu1.png" width="150" name="Image1" border="0"></a></td>
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
		<td align="left"><font class="giapha"><b>KẾT QUẢ TÌM KIẾM</b></font></td>
		<td width="300"></td>
		<td class="giapha20">XEM THEO:&nbsp;&nbsp;</td>
		<td><a href="../Danh-sach/?sessionpage=1" title="Xem phả đồ theo danh sách"><img src="../images/danhsach.png" border="0" width="30"></a></td>
		<td><a href="../Danh-sach/?sessionpage=1" class="giapha2" title="Xem phả đồ theo danh sách">&nbsp;Danh sách</a></td>
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
<tr><td height="10"></td></tr>
  <tr>
    <td width="830" colspan="2">
    <table border="1" cellpadding="3" cellspacing="0" style="border-collapse: collapse" bordercolor="#B5B5B3" width="830">
      <tr>
        <td width="30" bgcolor="#DEDBCE" class="doithu" align="center">&nbsp;THỨ TỰ</td>
        <td width="100" bgcolor="#DEDBCE" class="doithu">&nbsp;HỌ VÀ TÊN</td>
		 <td width="50" bgcolor="#DEDBCE" class="doithu" align="center">&nbsp;QUAN HỆ</td>
		 <td width="100" bgcolor="#DEDBCE" class="doithu">&nbsp;CỦA</td>
		<td width="60" bgcolor="#DEDBCE" class="doithu" align="center">&nbsp;GIỚI TÍNH</td>
		<td width="80" bgcolor="#DEDBCE" class="doithu" align="center">&nbsp;TÌNH TRẠNG</td>
       </tr>
				<% 
					do while not rs.eof
				%>
		 <tr>
		 <td class="giapha20" align="center"><%=tt%></td>
        <td class="giapha2">&nbsp;<a href="../Nhan-vat-ngoai/?sessionpage=<%=rs("idmodule")%>" class="giapha2" title="Xem thông tin về <%= rs("name") %>"><%= rs("name") %></a></td>
		<td class="giapha20" align="center"><% If rs("kieu")=1 then%><% If rs("gioitinh")=1 then%>Chồng<%else%>Vợ<%end if%><%else%>Con<%end if%></td>
		<td class="giapha2">&nbsp;
									<%
										openconn
										set rs5= server.CreateObject("adodb.recordset")
										rs5.open "select b.*,a.name AS tengoi from tblgiaphangoai a INNER JOIN tblgiapha b ON a.idgiapha = b.idmodule where b.idmodule='"&rs("idgiapha")&"' ", conn 
										if not rs5.eof then
									%>
									<a href="../Nhan-vat/?sessionpage=<%=rs5("idmodule")%>" class="giapha2" title="Xem thông tin về <%= rs5("name") %>"><%=rs5("name")%></A>
									<%
									 end if
									 rs5.close
									 %>
		</td>
		 <td class="giapha20" align="center"><% if rs("gioitinh")=0 then %>&nbsp;Không rõ <% elseif rs("gioitinh")=1 then %>&nbsp;Nam<% else %>Nữ<% end if %></td>
		 <td class="giapha20" align="center"><% if rs("tinhtrang")=0 then %>&nbsp;Không rõ <% elseif rs("tinhtrang")=1 then %>&nbsp;Còn sống<% else %>Đã mất<% end if %></td>
        </tr>
				<% 
				if j=RS.PageSize then
					exit do
				end if 
				tt=tt+1
				j=j+1					
				i = i + 1
				RS.MoveNext
				loop
				%>
    </table>    
    </td>
  </tr>
		<tr align="center">
			<td class="tintuc3" colspan="4">
			<%
					If rs.PageCount > 1 then
					'Print Previous Page if required
					If intCurrentPage <> 1 then
					Response.Write "<a href=""?timkiem="&timkiem&"&tab=" & intCurrentPage - 1 & """>Trang tr&#432;&#7899;c</a>"
					Else
					Response.Write "<font color=""#666666"">Trang tr&#432;&#7899;c</font>"
					End If
					'Print direct access page numbers.
					For intCount = 1 to rs.PageCount	
					If intCount = 1 then
					Response.Write " | "
					End If
					If intCount = intCurrentPage then
						Response.Write "<font color=""#FF0000"">"&intCount & "</font> | "
					Else
						Response.Write "<a href=""?timkiem="&timkiem&"&tab=" & intCount & """>" & intCount & "</a> | "
					End If
					Next
					'Print Next Page if required
					If intCurrentPage <> rs.PageCount then
						Response.Write "<a href=""?timkiem="&timkiem&"&tab=" & intCurrentPage + 1 & """>Trang sau</a>"
					Else
						Response.Write "<font color=""#666666"">Trang sau</font>"
					End If
					End If
					Response.Write "<br>Trang " & intCurrentPage & " / " & rs.PageCount 
				%>
			</td>
		</tr>
</table></td></tr>
  <tr><td height="50"></td></tr>
  <tr><td align="center"><img src="../images/bggiaphaft.png" height="38"/></td></tr>
</table>
<%end if%>
</div>
</body>