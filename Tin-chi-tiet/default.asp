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
    <td><a href="/Pha-ky/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image2','','../images/mnphaky10.png',1)"><img src="../images/mnphaky1.png" width="150" name="Image2" border="0"></a></td>
	<td width="20"></td>
    <td><a href="/Pha-do/" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image3','','../images/mnphado10.png',1)"><img src="../images/mnphado1.png" width="150" name="Image3" border="0"></a></td>
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
		<td align="left"><font class="giapha"><b>TIN TỨC DÒNG HỌ</b></font></td>
		<td align="right"><a href="javascript:history.go(-1)" class="giapha2"><img src="../images/back.png" border="0" height="35"> Về trang trước</a></td>
	  </tr>
	</table>
	</td></tr>
  <tr><td height="10"></td></tr>
  <tr><td>
  <table width="830" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top" width="552">
				<%
					openconn
					'hbxb = formatSQLInput(Request.QueryString("hbxb"))
					sessionpage=replace(request.QueryString("sessionpage"),"'","''")
					set rs= server.CreateObject("adodb.recordset")
					rs.open "SELECT * FROM tblcat where idcat='"&sessionpage&"'", conn 
					if not rs.eof then
					%>
<table width="552" border="0" cellspacing="0" cellpadding="0" align="center">
				<tr>
					<td><div align="left" class="tieudetin"><%=rs("title")%></div></td>
				</tr>
				<tr height="10"><td></td></tr>
				<tr>
					<td valign="top"><%if rs("image") <> "" then%><img src="../<%=rs("image")%>" width="200" style="border:1px solid #CCCCCC; padding:2px; margin-left:0px; margin-right:10px" align="left"><%end if%>
						<div class="tintuc1"><%=rs("quotation")%></div></td>
				</tr>
				<tr><td height="10"></td></tr>
				<tr><td><%=rs("content")%></td></tr>
				<tr height="30"><td></td></tr>
				<tr align="right">
				<td>
				<table width="200" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td><a class="xemtrang" href="javascript:window.print()"><img src="../images/icon_print.gif" height="20" border="0"/></a></td>
					<td><a class="xemtrang" href="javascript:window.print()">&nbsp;Bản in</a></td>
					<td width="10"></td>
					<td><a href="#" class="xemtrang"><img src="../images/icon_top.gif" border="0"/></a></td>
					<td><a href="#" class="xemtrang">&nbsp;Lên đầu trang</a></td>
				  </tr>
				</table>
					</td>
				</tr>
				<%
					end if
					rs.close
				%>
				<tr height="10"><td></td></tr>
				<tr><td>
				<table width="552" border="0" cellspacing="0" cellpadding="0">
				<%
					openconn
					sessionpage=replace(request.QueryString("sessionpage"),"'","''")
					set rs1= server.CreateObject("adodb.recordset")
					rs1.open "select top 10 * from tblcat where idcat <> '"&sessionpage&"' order by idcat desc", conn 
					if not rs1.eof then
					%>
				<tr>
					<td class="menu" align="left"><img src="../Images/tieudiem.png"></td>
				</tr>
				<tr><td height="5"></td></tr>
				<%					
					do while not rs1.eof
				%>
				<tr><td><div align="left"><a href="?sessionpage=<%=rs1("idcat")%>&<%=ConvertiTitoloInNomeScript(rs1("title"))%>.html" class="tintuc">-&nbsp;<%=rs1("title")%></a></div>
				</td></tr>
				<%
					rs1.movenext
					loop
					end if
				%>					
				</table>				
				</td></tr>
			</table>
	</td>
    <td width="20"></td>
    <td width="258" valign="top">
	<!--#include file = "../right.asp" -->
	</td>
  </tr>
</table>
</td></tr>
  <tr><td height="20"></td></tr>
  <tr><td align="center"><img src="../images/bggiaphaft.png" height="38"/></td></tr>
</table>
</div>
</body>