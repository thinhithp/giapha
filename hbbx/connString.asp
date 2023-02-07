<%
	Dim Conn, RS, RS1, RS2, rsF, rsHotnews, strSQL, strConn, SQLconfig, rsConfig
	Dim blnUseApplicationVariables
	Dim strMailDefault
	Dim strSMTP
	Dim strMailComponent
	Dim strMailSign
	Dim strMailName
	Dim strOrgName
	Dim strOrgAddress
	Dim strWebAddress
	Dim strIntrobaclv
	Dim strFAQsbaclv	
	blnUseApplicationVariables = true 'gan la false neu web server khong ho tro application	
	If InStr(Request.ServerVariables("URL"), "admin") Then
		strConn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("images/lvb.mdb")
	Else
		strConn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("../admin/images/lvb.mdb")
	End If
	Set RS = Server.CreateObject("ADODB.Recordset")
	Set RS1 = Server.CreateObject("ADODB.Recordset")
	Set RS2 = Server.CreateObject("ADODB.Recordset")
	Set rsF = Server.CreateObject("ADODB.Recordset")
	Set rsHotnews = Server.CreateObject("ADODB.Recordset")
	Set RSmn = Server.CreateObject("ADODB.Recordset")
	Set Conn = Server.CreateObject("ADODB.Connection")
	Conn.Open strConn	
	If isEmpty(Application("blnConfigurationSet")) OR isNull(Application("blnConfigurationSet")) OR Application("blnConfigurationSet") = false OR blnUseApplicationVariables = false Then
		SQLconfig = "SELECT TOP 1 * FROM tb_config"
		Set rsConfig=Conn.Execute(SQLconfig)		
		If not rsConfig.EOF then
			strMailDefault = Trim(rsConfig("mail_address"))
			strSMTP = Trim(rsConfig("mail_smtp"))
			strMailComponent = Trim(rsConfig("mail_dll"))
			strMailSign = Trim(rsConfig("mail_sign"))
			strMailName = Trim(rsConfig("mail_name"))
			strOrgName = Trim(rsConfig("org_name"))
			strOrgAddress = Trim(rsConfig("org_address"))
			strWebAddress = Trim(rsConfig("org_webaddress"))
			strIntrobaclv = rsConfig("org_intro")
			strFAQsbaclv = rsConfig("org_faqs")
			strTextScrollHome = rsConfig("textscroll")
			strTextStatusBar = rsConfig("textstatus")
			strScriptFile = rsConfig("scriptfile")
			blnShowQSearch = rsConfig("showqsearch")
			blnShowNewsLetter = rsConfig("shownewsletter")
			blnShowNews = rsConfig("shownews")
			blnShowTotal = rsConfig("showtotal")
			blnShowPoll = rsConfig("showPoll")
			blnShowNewsnganh = rsConfig("ShowNewsnganh")
			strImgLogo = rsConfig("imglogo")
			if strImgLogo="" then strImgLogo="lg.jpg" else strImgLogo="Face/"&strImgLogo
			strWebStyle = rsConfig("webstyle")				
			If blnUseApplicationVariables Then
				Application("strMailDefault") = strMailDefault
				Application("strSMTP") = strSMTP
				Application("strMailComponent") = strMailComponent
				Application("strMailSign") = strMailSign
				Application("strMailName") = strMailName
				Application("strOrgName") = strOrgName
				Application("strOrgAddress") = strOrgAddress
				Application("strWebAddress") = strWebAddress
				Application("strIntrobaclv") = strIntrobaclv
				Application("strFAQsbaclv") = strFAQsbaclv
				Application("strTextScrollHome") = strTextScrollHome
				Application("strTextStatusBar") = strTextStatusBar
				Application("strScriptFile") = strScriptFile
				Application("blnShowQSearch") = blnShowQSearch
				Application("blnShowNewsLetter") = blnShowNewsLetter
				Application("blnShowNews") = blnShowNews
				Application("blnShowNewsnganh") = blnShowNewsnganh
				Application("blnShowPoll") = blnShowPoll
				Application("blnShowPoll") = blnShowPoll
				Application("strImgLogo") = strImgLogo
				Application("strWebStyle") = strWebStyle				
				'Set the configuartion set application variable to true
				Application("blnConfigurationSet") = True				
				'Unlock the application
				Application.UnLock
			End If
		End If
		rsConfig.Close
		Set rsConfig = nothing
	ElseIf blnUseApplicationVariables Then
		strMailDefault = Application("strMailDefault")
		strSMTP = Application("strSMTP")
		strMailComponent = Application("strMailComponent")
		strMailSign = Application("strMailSign")
		strMailName = Application("strMailName")
		strOrgName = Application("strOrgName")
		strOrgAddress = Application("strOrgAddress")
		strWebAddress = Application("strWebAddress")
		strIntrobaclv = Application("strIntrobaclv")
		strFAQsbaclv = Application("strFAQsbaclv")
		strTextScrollHome = Application("strTextScrollHome")
		strTextStatusBar = Application("strTextStatusBar")
		strScriptFile = Application("strScriptFile")
		blnShowQSearch = Application("blnShowQSearch")
		blnShowNewsLetter = Application("blnShowNewsLetter")
		blnShowNews = Application("blnShowNews")
		blnShowTotal = Application("blnShowTotal")
		blnShowPoll = Application("blnShowPoll")
		blnShowNewsnganh = Application("blnShowNewsnganh")
		strImgLogo = Application("strImgLogo")
		strWebStyle = Application("strWebStyle")
	End if
%>