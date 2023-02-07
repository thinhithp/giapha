<%if session("username")="" then%>
<script language="javascript">
	alert("Bạn vui lòng đăng nhập để vào hệ thống quản trị!");
	window.location="../hbxb/";
</script>
<%end if%>
<% 
if request("action")="submit" then
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
	 sql="insert into tblgiaphangoai(idgiapha,name,kieu,positions,tentu,gioitinh,diachi,namsinh,tinhtrang,nammat,huongtho,noiantang,tieusu,nghenghiep,dienthoai,email) values('"&idgiapha&"',N'"&title&"','"&kieu&"','"&posotion&"',N'"&tentu&"','"&gioitinh&"',N'"&diachi&"',N'"&namsinh&"','"&tinhtrang&"',N'"&nammat&"','"&huongtho&"',N'"&noiantang&"',N'"&tieusu&"',N'"&nghenghiep&"',N'"&dienthoai&"',N'"&email&"')"
	 conn.execute(sql)
	 response.Redirect("?hbxb=16&sessionpage="&idgiapha&"")
%>
<%end if%>
<form name="frmAddNews" method="post">
<input type="hidden" name="action" value="submit">
									<%
										openconn
			 							sessionpage=replace(request.QueryString("sessionpage"),"'","''")
										set rskieu= server.CreateObject("adodb.recordset")
										rskieu.open "select * from tblgiapha where idmodule="&sessionpage&" ", conn 
									%>	
<table border="0" cellpadding="7" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600">
    <tr>
									
    <td width="600" align="left"><font style="text-transform:uppercase" class="title1">THÊM <% if rskieu("gioitinh")=1 then%>VỢ<%else%>CHỒNG<%end if%> CỦA <% if rskieu("gioitinh")=1 then%>ÔNG <%else%>BÀ <%end if%><%=rskieu("name")%></font></td>
  </tr>
  <tr>
    <td width="100%">
   	 <table border="0" cellpadding="3" cellspacing="0" style="border-collapse: collapse" width="600">
		   <tr>
			<td width="150" class="tintuc1">Là <% if rskieu("gioitinh")=1 then%>vợ<%else%>chồng<%end if%> của</td>
									 <td width="300" align="left">
				<select name="idgiapha" style="width:200" class="tintuc1">
									<%
										openconn
			 							sessionpage=replace(request.QueryString("sessionpage"),"'","''")
										set rs2= server.CreateObject("adodb.recordset")
										rs2.open "select * from tblgiapha where idmodule="&sessionpage&" ", conn 
										if not rs2.eof then
									%>
									<option class="tintuc1" value='<%=rs2("idmodule")%>'>&nbsp;&nbsp;-- <%=rs2("name")%> --</option>
									 <%
									 end if
									 rs2.close
									 %>
								</select>
			</td>
		  </tr>
		  <tr><td></td><td class="tintuc1"><input name="kieu" type="text" style="width:0" value="1">
									<%
										openconn
			 							sessionpage=replace(request.QueryString("sessionpage"),"'","''")
										set rs2= server.CreateObject("adodb.recordset")
										rs2.open "select * from tblgiapha where idmodule="&sessionpage&" ", conn 
										if not rs2.eof then
									%>
									<% if rskieu("gioitinh")=1 then%>Ông <%else%>Bà <%end if%><b><%=rs2("name")%></b> thuộc <b>Đời thứ <%=rs2("iddoi")%></b>
									 <%
									 end if
									 rs2.close
									 %>
		  </td></tr>
		  <tr>
			<td width="150" class="tintuc1">Họ và tên</td>
			<td width="300" align="left">
			<input name="title" class="tintuc1" type="text" style="width:200"></td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">Tên tự (Tên Hiệu/Thụy)</td>
			<td width="300" align="left">
			<input name="tentu" class="tintuc1" type="text" style="width:200"></td>
		  </tr>
		 <tr>
			<td width="150" class="tintuc1">Giới tính</td>
			<td width="300" align="left">
			<select name="gioitinh" style=" width:200" class="tintuc1">
			<% if rskieu("gioitinh")=1 then%><option class="tintuc1" value='2'>Nữ</option><%else%><option class="tintuc1" value='1'>Nam</option><%end if%>
			</select>
			</td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">Là <% if rskieu("gioitinh")=1 then%>vợ<%else%>chồng<%end if%> thứ</td>
			<td width="300" align="left" class="tintuc1">
			<input name="posotion" class="tintuc1" type="text" style="width:50">
									<%
										openconn
			 							sessionpage=replace(request.QueryString("sessionpage"),"'","''")
										set rs2= server.CreateObject("adodb.recordset")
										rs2.open "select * from tblgiapha where idmodule="&sessionpage&" ", conn 
										if not rs2.eof then
									%>
									của <% if rskieu("gioitinh")=1 then%>ông<%else%>bà<%end if%> <b><%=rs2("name")%></b>
									 <%
									 end if
									 rs2.close
									 %>
			</td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">Quê quán</td>
			<td width="450" align="left">
			<input name="diachi" class="tintuc1" type="text" style="width:390"></td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">Ngày sinh/Năm sinh</td>
			<td width="300" align="left">
			<input name="namsinh" class="tintuc1" type="text" style="width:200"></td>
		  </tr>
		 <tr>
			<td width="150" class="tintuc1">Tình trạng</td>
			<td width="300" align="left">
			<select name="tinhtrang" class="tintuc1" style=" width:200">
									<option class="tintuc1" value='0'>Không rõ</option>
									<option class="tintuc1" value='1'>Còn sống</option>
									<option class="tintuc1" value='2'>Đã mất</option>
			</select>
			</td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">Ngày mất/Năm mất</td>
			<td width="300" align="left">
			<input name="nammat" class="tintuc1" type="text" style="width:200"></td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">Hưởng thọ/Hưởng dương</td>
			<td width="300" align="left" class="tintuc1">
			<input name="huongtho" class="tintuc1" type="text" style="width:50"> tuổi</td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">Nơi an táng</td>
			<td width="400" align="left">
			<input name="noiantang" class="tintuc1" type="text" style="width:390"></td>
		  </tr>
		  <tr>
			<td width="600" colspan="2" align="left" class="tintuc1">Tiểu sử, Sự nghiệp, Công đức, Ghi chú</td>
		  </tr>
		  <tr>
			<td width="600" colspan="2" align="left">
				<%
					oFCKeditor.Create "tieusu"
				%>	
			</td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">Nghề nghiệp/Chức vụ</td>
			<td width="450" align="left">
			<input name="nghenghiep" class="tintuc1" type="text" style="width:390"></td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">Điện thoại</td>
			<td width="450" align="left">
			<input name="dienthoai" class="tintuc1" type="text" style="width:200"></td>
		  </tr>
		  <tr>
			<td width="150" class="tintuc1">Email</td>
			<td width="450" align="left">
			<input name="email" class="tintuc1" type="text" style="width:200"></td>
		  </tr>
        <tr align="center">
			<td width="150" class="tintuc1"></td>
          	<td align="left">
				<input type="submit" class="tintuc2" name="submit" value="Thêm mới">
            </td>
        </tr>
	</table>
	</td>
	</tr>
</table>
									 <%
									 rskieu.close
									 %>
</form>