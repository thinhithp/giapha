<%session.CodePage=65001%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="Javascript">
function ShowCat(nCAT) {
	var i, s, e;
	
	for (i=1;i<7;i++) {
		s = 'CAT_' + i;
		e=document.all[s];
		
		if (i==nCAT) {
			e.style.display='';
		} else {
			e.style.display='none';
		}
		
	}			
}
</script>
<SCRIPT LANGUAGE="JavaScript">
<!-- Hide

function killErrors() {
return true;
}

window.onerror = killErrors;

// -->
</SCRIPT>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="180" bgcolor="#EFEFE7">
   <tr>
    <td width="180" style="border-right:1px solid #CCCCCC; border-top:1px solid #CCCCCC; border-bottom:1px solid #CCCCCC; ">
    <table border="0" cellpadding="3" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
      <tr>
        <td width="100%"><div style="cursor:hand" onClick="ShowCat(1);">
			<table width="180" border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<td><img border="0" src="images/icontintuc.png" height="30"></td>
				<td><font class="menu">Quản lý tin tức</font></td>
			  </tr>
			</table>
          </div></td>
      </tr>         
      <tr>
        <td width="100%">
        <span id="CAT_1" style="display:none">
		<a href="?hbxb=1&Them-tin-moi.html" class="menu1">- Thêm tin mới</a><br>
		<a href="?hbxb=2&Quan-ly-tin-tuc.html" class="menu1">- Quản lý tin tức</a>
        </span>
        </td>
      </tr>      
      </table>
    </td>
  </tr>
<tr>
    <td width="100%" style="border-right:1px solid #CCCCCC; border-top:1px solid #CCCCCC; border-bottom:1px solid #CCCCCC; ">
    <table border="0" cellpadding="3" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
      <tr>
        <td width="100%"><div style="cursor:hand" onClick="ShowCat(2);">
			<table width="180" border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<td><img border="0" src="images/icongiapha.png" height="30"></td>
				<td><font class="menu">Quản lý gia phả</font></td>
			  </tr>
			</table>
          </div></td>
      </tr>         
      <tr>
        <td width="100%">
        <span id="CAT_2" style="display:none">
		<a href="?hbxb=4&Cau-hinh-gia-pha.html" class="menu1">- Cấu hình gia phả</a><br>
		<a href="?hbxb=5&Pha-ky-dong-ho.html" class="menu1">- Phả ký dòng họ</a><br>
		<a href="?hbxb=6&Tu-duong-huong-hoa.html" class="menu1">-  Từ đường, Hương hỏa</a><br>
		<a href="?hbxb=7&Toc-uoc-dong-ho.html" class="menu1">- Tộc ước dòng họ</a><br>
        </span>
        </td>
      </tr>      
      </table>
    </td>
  </tr> 
<tr>
    <td width="100%" style="border-right:1px solid #CCCCCC; border-top:1px solid #CCCCCC; border-bottom:1px solid #CCCCCC; ">
    <table border="0" cellpadding="3" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
      <tr>
        <td width="100%"><div style="cursor:hand" onClick="ShowCat(3);">
			<table width="180" border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<td><img border="0" src="images/iconphahe.png" height="30"></td>
				<td><font class="menu">Quản lý phả hệ</font></td>
			  </tr>
			</table>
          </div></td>
      </tr>         
      <tr>
        <td width="100%">
        <span id="CAT_3" style="display:none">
		<a href="?hbxb=8&Khoi-tao-thuy-to.html" class="menu1">- Khởi tạo thủy tổ</a><br>
		<a href="?hbxb=9&Quan-ly-doi.html" class="menu1">- Quản lý đời</a><br>
		<a href="?hbxb=12&sessionpage=1&Quan-ly-pha-he.html" class="menu1">-  Quản lý phả hệ</a><br>
        </span>
        </td>
      </tr>      
      </table>
    </td>
  </tr> 
    <tr>
    <td width="100%" style="border-right:1px solid #CCCCCC; border-top:1px solid #CCCCCC; border-bottom:1px solid #CCCCCC; ">
    <table border="0" cellpadding="3" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
      <tr>
        <td width="100%"><div style="cursor:hand" onClick="ShowCat(4);">
			<table width="180" border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<td><img border="0" src="images/iconvideo.png" height="30"></td>
				<td><font class="menu">Thư viện ảnh, video</font></td>
			  </tr>
			</table>
          </div></td>
      </tr>         
      <tr>
        <td width="100%">
        <span id="CAT_4" style="display:none">
		<a href="?hbxb=20&Quan-ly-anh.html" class="menu1">- Quản lý ảnh</a><br>
		<a href="?hbxb=23&Quan-ly-nhom-anh.html" class="menu1">- Quản lý nhóm ảnh</a><br>
		<a href="?hbxb=26&Quan-ly-video.html" class="menu1">-  Quản lý video</a><br>
        </span>
        </td>
      </tr>      
      </table>
    </td>
  </tr>  
<tr>
    <td width="100%" style="border-right:1px solid #CCCCCC; border-top:1px solid #CCCCCC; border-bottom:1px solid #CCCCCC; ">
    <table border="0" cellpadding="3" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
      <tr>
        <td width="100%"><div style="cursor:hand" onClick="ShowCat(5);">
			<table width="180" border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<td><img border="0" src="images/iconcauhinh.png" height="30"></td>
				<td><font class="menu">Quản lý website</font></td>
			  </tr>
			</table>
          </div></td>
      </tr>         
      <tr>
        <td width="100%">
        <span id="CAT_5" style="display:none">
		<a href="?hbxb=29&Quan-ly-website.html" class="menu1">- Cấu hình chung</a><br>
		<a href="?hbxb=30&Quan-ly-nguoi-dung.html" class="menu1">- Quản lý người dùng</a>
        </span>
        </td>
      </tr>      
      </table>
    </td>
  </tr>
  </table>