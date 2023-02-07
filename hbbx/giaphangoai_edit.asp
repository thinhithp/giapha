<%if session("username")="" then%>
<script language="javascript">
	alert("Bạn vui lòng đăng nhập để vào hệ thống quản trị!");
	window.location="../hbxb/";
</script>
<%end if%>
   	<% 	
	  		 openconn	
	  		 set rs1=server.CreateObject("adodb.recordset")
	 		 rs1.open"Select * from tblgiaphangoai where idmodule = '"&request.QueryString("id")&"'",conn
	 %>
<% 
if request("action")="submit" then
	id=replace(request("id"),"'","''")
	idgiapha=replace(request("idgiapha"),"'","''")
	title=replace(request("title"),"'","''")
	kieu=replace(request("kieu"),"'","''")
	posotion=replace(request("posotion"),"'","''")
	tentu=replace(request("tentu"),"'","''")
	gioitinh=replace(request("gioitinh"),"'","''")
	diachi=replace(request("diachi"),"'","''")
	namsinh=replace(request("namsinh"),"'","''")
	tinhtrang=replace(request("tinhtrang"),"'","''")
	nammat=replace(request("nammat"),"'","''")
	huongtho=replace(request("huongtho"),"'","''")
	noiantang=replace(request("noiantang"),"'","''")
	tieusu=replace(request("tieusu"),"'","''")
	nghenghiep=replace(request("nghenghiep"),"'","''")
	dienthoai=replace(request("dienthoai"),"'","''")
	email=replace(request("email"),"'","''")
	 openconn
	 set rs=server.CreateObject("adodb.recordset")
	 sql=" update tblgiaphangoai set idgiapha='"&idgiapha&"',name=N'"&title&"',kieu='"&kieu&"',positions='"&posotion&"',tentu=N'"&tentu&"',gioitinh='"&gioitinh&"',diachi=N'"&diachi&"',namsinh=N'"&namsinh&"',tinhtrang='"&tinhtrang&"',nammat=N'"&nammat&"',huongtho='"&huongtho&"',noiantang=N'"&noiantang&"',tieusu=N'"&tieusu&"',nghenghiep=N'"&nghenghiep&"',dienthoai=N'"&dienthoai&"',email=N'"&email&"' where idmodule='"&id&"'"
	 conn.execute(sql)
	 response.Redirect("?hbxb=16&sessionpage="&rs1("idgiapha")&"")
%>
<%end if%>
<form name="frmAddNews" method="post">
<input type="hidden" name="action" value="submit">
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600">
  <tr>
    <td width="600" align="left"><font class="title1" style="text-transform:uppercase">SỬA THÔNG TIN <% if rs1("gioitinh")=1 then%>ÔNG <%else%>BÀ <%end if%><%=rs1("name")%></font></td>
  </tr>
  <tr>
    <td width="600">
	 <table border="0" cellpadding="3" cellspacing="0" style="border-collapse: collapse" width="600">
		  <tr>
			<td width="150" class="tintuc1">Là <% if rs1("gioitinh")=1 then%>chồng <%else%>vợ <%end if%> của</td>
			<td width="450" align="left">
				<select name="idgiapha" style="width:200" class="tintuc1">
									<%
										openconn
			 							id=replace(request.QueryString("id"),"'","''")
										set rs4= server.CreateObject("adodb.recordset")
										rs4.open "select * from tblgiapha where idmodule = "&rs1("idgiapha")&"", conn 
										if not rs4.eof then
									%>
									<option class="tintuc1" value='<%=rs4("idmodule")%>'>&nbsp;&nbsp;-- <%=rs4("name")%> --</option>
									<%
									 end if
									 rs4.close
									 %>
								</select>
			</td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">Họ và tên</td>
			<td width="450" align="left">
			<input name="title" class="tintuc1" type="text" value="<%=rs1("name")%>" style="width:200">
			<input name="kieu" type="text" value="1" style="width:0"></td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">Tên tự (Tên Hiệu/Thụy)</td>
			<td width="450" align="left">
			<input name="tentu" class="tintuc1" type="text" value="<%=rs1("tentu")%>" style="width:200"></td>
		  </tr>
		 <tr>
			<td width="150" class="tintuc1">Giới tính</td>
			<td width="450" align="left" class="tintuc1">
			<select name="gioitinh" class="tintuc1" style=" width:200">
									<% if rs1("gioitinh")=0 then %><option class="tintuc1" value='0'>Không rõ</option>
									<option class="tintuc1" value='1'>Nam</option>
									<option class="tintuc1" value='2'>Nữ</option>
									<% elseif rs1("gioitinh")=1 then %><option class="tintuc1" value='1'>Nam</option>
									<option class="tintuc1" value='2'>Nữ</option>
									<option class="tintuc1" value='0'>Không rõ</option>
									<% elseif rs1("gioitinh")=2 then %><option class="tintuc1" value='2'>Nữ</option>
									<option class="tintuc1" value='1'>Nam</option>
									<option class="tintuc1" value='0'>Không rõ</option>
									<% end if %>
			</select>
			</td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">Là <% if rs1("gioitinh")=1 then%>chồng <%else%>vợ <%end if%> thứ</td>
			<td width="450" align="left" class="tintuc1">
			<input name="posotion" class="tintuc1" type="text" style="width:50" value="<%=rs1("positions")%>">
									<%
										openconn
			 							sessionpage=replace(request.QueryString("sessionpage"),"'","''")
										set rs2= server.CreateObject("adodb.recordset")
										rs2.open "select * from tblgiapha where idmodule="&rs1("idgiapha")&" ", conn 
										if not rs2.eof then
									%>
									của <% if rs2("gioitinh")=1 then%>ông <%else%>bà <%end if%> <b><%=rs2("name")%></b>
									 <%
									 end if
									 rs2.close
									 %>
			</td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">Quê quán</td>
			<td width="450" align="left">
			<input name="diachi" class="tintuc1" type="text" value="<%=rs1("diachi")%>" style="width:390"></td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">Ngày sinh/Năm sinh</td>
			<td width="450" align="left">
			<input name="namsinh" class="tintuc1" type="text" value="<%=rs1("namsinh")%>" style="width:200"></td>
		  </tr>
		 <tr>
			<td width="150" class="tintuc1">Tình trạng</td>
			<td width="450" align="left">
			<select name="tinhtrang" class="tintuc1" style=" width:200">
									<% if rs1("tinhtrang")=0 then %><option class="tintuc1" value='0'>Không rõ</option>
									<option class="tintuc1" value='1'>Còn sống</option>
									<option class="tintuc1" value='2'>Đã mất</option>
									<% elseif rs1("tinhtrang")=1 then %><option class="tintuc1" value='1'>Còn sống</option>
									<option class="tintuc1" value='2'>Đã mất</option>
									<option class="tintuc1" value='0'>Không rõ</option>
									<% elseif rs1("tinhtrang")=2 then %><option class="tintuc1" value='2'>Đã mất</option>
									<option class="tintuc1" value='1'>Còn sống</option>
									<option class="tintuc1" value='0'>Không rõ</option>
									<% end if %>
			</select>
			</td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">Ngày mất/Năm mất</td>
			<td width="450" align="left">
			<input name="nammat" class="tintuc1" type="text" value="<%=rs1("nammat")%>" style="width:200"></td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">Hưởng thọ/Hưởng dương</td>
			<td width="450" align="left" class="tintuc1">
			<input name="huongtho" class="tintuc1" type="text" value="<%=rs1("huongtho")%>" style="width:50"> tuổi</td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">Nơi an táng</td>
			<td width="450" align="left">
			<input name="noiantang" class="tintuc1" type="text" value="<%=rs1("noiantang")%>" style="width:390"></td>
		  </tr>
		  <tr>
			<td width="600" colspan="2" align="left" class="tintuc1">Tiểu sử, Sự nghiệp, Công đức, Ghi chú</td>
		  </tr>
		  <tr>
			<td width="600" colspan="2" align="left">
				<%
					oFCKeditor.value = rs1("tieusu")
					oFCKeditor.Create "tieusu"
				%>	
			</td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">Nghề nghiệp/Chức vụ</td>
			<td width="450" align="left">
			<input name="nghenghiep" class="tintuc1" type="text" value="<%=rs1("nghenghiep")%>" style="width:390"></td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">Điện thoại</td>
			<td width="450" align="left">
			<input name="dienthoai" class="tintuc1" type="text" value="<%=rs1("dienthoai")%>" style="width:200"></td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">Email</td>
			<td width="450" align="left">
			<input name="email" class="tintuc1" type="text" value="<%=rs1("email")%>" style="width:200"></td>
		  </tr>
		  <tr align="center">
			<td width="150" class="tintuc1"></td>
          	<td width="450" align="left">
				<input type="submit" name="submit" class="tintuc2" value="Sửa đổi">
            </td>
        </tr>
	</table>
	</td>
	</tr>

</table>
</form>