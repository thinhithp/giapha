<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file = "functions.asp" -->
<!--#include file = "connection.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
		<% 	
	  		 openconn	
	  		 set rs=server.CreateObject("adodb.recordset")
	 		 rs.open"Select * from tblconfig",conn
		 %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="description" content="Gia phả là tài liệu ghi chép liên tục lai lịch, thân thế, sự nghiệp của từng người trong gia tộc, theo một hệ thống trên dưới, trưởng thứ, nội ngoại nhất định. Gia phả là vật thiêng liêng của tộc họ, nó đánh thức ở con người sự hướng về cội nguồn. Với dịch vụ phả hệ trực tuyến, là công cụ đắc lực để lưu trữ gia phả một cách an toàn và khoa học nhất, một phương pháp kết nối cộng đồng thành viên trong dòng họ đơn giản mà không bị ảnh hưởng bởi khoảng cách về thời gian, trở ngại về không gian..."/>
<title><%=rs("sitename")%></title>
<link type="text/css" rel="stylesheet" href=" css/style.css">
<script type="text/javascript" src=" Video/jquery-1.js"></script>
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
<body style="background-image: url( images/bg-banner.jpg); background-repeat: repeat;">
<div style="width:100%; background-image:url( images/bgtren.png); background-size: 100%; background-origin: content; background-repeat: no-repeat; margin:0 0 0 0;">
<table width="830" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr><td height="450"></td></tr>
  <tr>
    <td>
	<table width="830" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><a href="/Tin-tuc/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image1','','../images/mntintuc10.png',1)"><img src="../images/mntintuc1.png" width="150" name="Image1" border="0"></a></td>
	<td width="20"></td>
    <td><a href="/Pha-ky/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image2','',' images/mnphaky10.png',1)"><img src=" images/mnphaky1.png" width="150" name="Image2" border="0"></a></td>
	<td width="20"></td>
    <td><a href="/Pha-do/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image3','',' images/mnphado10.png',1)"><img src=" images/mnphado1.png" width="150" name="Image3" border="0"></a></td>
	<td width="20"></td>
    <td><a href="/Tu-duong/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image4','',' images/mntuduong10.png',1)"><img src=" images/mntuduong1.png" width="150" name="Image4" border="0"></a></td>
	<td width="20"></td>
    <td><a href="/Toc-uoc/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image5','',' images/mntocuoc10.png',1)"><img src=" images/mntocuoc1.png" width="150" name="Image5" border="0"></a></td>
  </tr>
</table>
	</td>
  </tr>
  <tr><td height="22"></td></tr>
  <tr><td class="tintuc2">Địa chỉ: <span class="tintuc20"><%=rs("diachidongho")%></span></td></tr>
  <tr><td height="10"></td></tr>
  <tr><td class="tintuc2">Tộc trưởng: <span class="tintuc20"><%=rs("nguoibiensoan")%></span> - Điện thoại: <span class="tintuc20"><%=rs("tendongho")%></span></td></tr>
  <tr><td height="20"></td></tr>
  <tr><td class="tintuc2">Trong xã hội công nghệ thông tin hiện nay, internet đã trở thành phổ biến, dễ sử dụng. Một số dòng họ đã gửi gia phả lên trang web Việt nam gia phả, một số lập trang web để lưu trữ gia phả của dòng họ mình. Vì vậy website www.hobuixuanbang.com là mạng gia phả riêng của dòng họ Bùi tại làng Xuân Bảng để con cháu các chi nhánh của họ ta ở khắp mọi miền đất nước đã có thể đọc và hiểu biết về sự nghiệp của các đời trước cũng như quan hệ huyết thống giữa các thành viên trong họ.</td></tr>
  <tr><td height="20"></td></tr>
  <tr><td class="tintuc2">Gia phả là tài liệu ghi chép liên tục lai lịch, thân thế, sự nghiệp của từng người trong gia tộc, theo một hệ thống trên dưới, trưởng thứ, nội ngoại nhất định. Gia phả là vật thiêng liêng của tộc họ, nó đánh thức ở con người sự hướng về cội nguồn. Với dịch vụ phả hệ trực tuyến, là công cụ đắc lực để lưu trữ gia phả một cách an toàn và khoa học nhất, một phương pháp kết nối cộng đồng thành viên trong dòng họ đơn giản mà không bị ảnh hưởng bởi khoảng cách về thời gian, trở ngại về không gian...</td></tr>
  <tr><td height="20"></td></tr>
  <tr><td class="tintuc2">LIÊN HỆ THIẾT KẾ WEBSITE GIA PHẢ:</td></tr>
  <tr><td height="10"></td></tr>
  <tr><td class="tintuc2">Quản lý website: <span class="tintuc20"><%=rs("nguoilienhe")%></span> - Điện thoại: <span class="tintuc20"><%=rs("dienthoai")%></span> - Email: <span class="tintuc20"><%=rs("email")%></span></td></tr>
  <tr><td height="20"></td></tr>
  <tr><td align="center"><div style="margin-bottom:0"><img src=" images/bggiaphaft.png" height="38"/></div></td></tr>
</table>
</div>
</body>