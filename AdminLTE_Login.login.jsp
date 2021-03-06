<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<% 	
  response.setHeader("Cache-Control", "no-store,no-cache, must-revalidate");
  response.setDateHeader("Expires", -1);
  response.setHeader("Pragma", "No-cache");
%>
<html class="special">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
  	<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
  	<base href="<%=request.getContextPath()%>/"/>
	<title>Error</title>
  	<link href="AdminLTE/css/app.css" rel="stylesheet">
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="AdminLTE/js/html5shiv.js"></script>
		<script src="AdminLTE/js/respond.min.js"></script>
	<![endif]-->	
</head>
<body>
 <div class="center">
 	<header class="header">
		<a class="logo" href="index.jsp"></a>
	</header>
	<html:form action="loginAction.do" enctype="multipart/form-data">
		<html:hidden property="lastURL"/>
		<div class="box box-primary" id="login-box">
			<div class="box-body">
			    <div class="form-group">
			    	<label for="userName" class="control-label">Username</label>
					<input id="userName" name="userName" autocomplete="off" type="text" class="wr-submitButtons:login form-control input-block-level">
			    </div>
			    <div class="form-group">
			    	<label for="password" class="control-label">Password</label>
					<input id="password" name="password" autocomplete="off" type="password" class="wr-submitButtons:login form-control input-block-level">
		        </div>
		        <div class="form-group">
			    	<label for="rememberCredentials" class="checkbox">
						<html:checkbox styleClass="wr-submitButtons:login" property="rememberCredentials" value="true"/> Remember credentials
					</label>
		        </div>
		        <div class="form-group form-btn">
					<button class="btn btn-primary btn-block" id="button:login" type="submit">Login</button>
				</div>
			</div>
		</div>
	</html:form>
 </div>
<script src="WRResources/ajax/jquery/jquery.min.js" type="text/javascript" rel="javascript"></script>	
<script src="WRResources/script.js" type="text/javascript" rel="javascript"></script>
</body>
</html> 
