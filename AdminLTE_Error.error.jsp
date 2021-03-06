<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
<%@ page import="com.webratio.struts.WRGlobals" %>
<%@ page import="com.webratio.rtx.RTXManager" %>
<%@ page import="com.webratio.struts.exceptions.ErrorInterpreter" %> 
<%
  RTXManager rtx = (RTXManager) application.getAttribute(WRGlobals.RTX_KEY); 
ErrorInterpreter interpreter = new ErrorInterpreter(request);
%>
<html class="special">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
  	<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
  	<base href="<%=request.getContextPath()%>/"/>
	<title>Error</title>  
  <c:if test="${not webratio:isWindow(pageContext)}">
  	<link href="AdminLTE/css/app.css" rel="stylesheet">
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="AdminLTE/js/html5shiv.js"></script>
		<script src="AdminLTE/js/respond.min.js"></script>
	<![endif]-->
  </c:if>
</head>
<body>
<c:if test="${not webratio:isWindow(pageContext)}">
	<div class="center">
	 	<header class="header">
			<a class="logo" href="index.jsp"></a>
		</header>
		<div class="box box-danger" id="error-box">
			<div class="box-header">
				<h1 class="box-title">
				<span class="glyphicon glyphicon-warning-sign text-danger"></span>
				Oops! Something went wrong.
				</h1>
			</div>
			<div class="box-body">
</c:if>
		
		    	<h3><%=interpreter.getMessage(ErrorInterpreter.XML_FORMAT)%></h3>
		    	<% if (interpreter.hasOccurred()) { %>
					<div class="callout callout-danger">
						<h4>Occurred on:</h4>
						<p><%=interpreter.getOccurred()%></p>
					</div>
				<% } %>
				<% if (interpreter.hasDetails()) { %>
					<div class="callout callout-danger">
						<h4>Details:</h4>
						<ul>
						<% for (java.util.Iterator it = interpreter.getDetails(ErrorInterpreter.XML_FORMAT).iterator(); it.hasNext(); ) { %>
							<li><%=it.next()%></li>
						<% } %>
						</ul>
					</div>
				<% } %>
				<% if (interpreter.hasFixes()) { %>
					<div class="callout callout-info">
						<h4>Suggestions:</h4>
						<ul>
						<% for (java.util.Iterator it = interpreter.getFixes(ErrorInterpreter.XML_FORMAT).iterator(); it.hasNext(); ) { %>
							<li><%=it.next()%></li>
						<% } %>
						</ul>
					</div>
				<% } %>
			<%if(rtx.getConfiguration().isDevelopmentMode()){%>
			<!--
			<%=interpreter.getExceptionStackTrace(ErrorInterpreter.XML_FORMAT)%>
			-->
			<%}%>
<c:if test="${not webratio:isWindow(pageContext)}">
			</div>
		</div>
	</div>
</c:if>
</body>
</html> 
