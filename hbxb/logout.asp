<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<%

	Session.Abandon();
	Session("admin")=false;
	Session("user")="";	
	Response.Redirect("login.asp");

%>