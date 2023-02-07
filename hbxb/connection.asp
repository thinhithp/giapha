<%
	Dim conn
 Sub openConn()
	set conn = server.createobject("ADODB.connection")
	connstr="provider=SQLOLEDB;Database=hobuixuanbang;server=localhost;uid=hobuixuanbang;pwd=S#d4F%g6h&J$"
	conn. open connstr
 end Sub

 Sub destroyconn()
	conn.close
	set conn = nothing
 End Sub
 
%>
