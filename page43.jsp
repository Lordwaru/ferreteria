<!DOCTYPE html>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%> 
<webratio:Page page="page43"/>
<html lang="${LanguageISOCtxParam}">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
	    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
		<title>Contactanos</title>
		<c:set var="wrAjaxDebugLevel" value="minimal"/>
			<c:if test="${(wrBoxed or wrAjaxCalling)}">
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/smoothness/jquery-ui.min.css"/>" type="text/css" rel="stylesheet" data-wr-resname="jquery-ui-style" data-wr-resver="1.9.2">
			</c:if>
			<c:if test="${(wrBoxed or wrAjaxCalling)}">
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/webratio/style.css"/>" type="text/css" rel="stylesheet" data-wr-resname="wr-ui-style" data-wr-resver="7.2.12">
			</c:if>
	<link href="<webratio:Resource path="builtin/960_Fluid_Nestable_12.css"/>" type="text/css" rel="stylesheet" data-wr-resname="wr-960gs-12">
	<link href="<webratio:Resource path="builtin/grid_elements.css"/>" type="text/css" rel="stylesheet" data-wr-resname="wr-ui-gridsystem">
	<link href="<webratio:Resource path="AdminLTE/css/app.css"/>" type="text/css" rel="stylesheet" data-wr-resname="app-css">
<script>if (typeof wr !== "undefined") { wr.ui.html.resx.refreshLoaded(); }</script>
		<c:set var="wrAjaxDebugLevel" value="minimal"/>
	<script src="<webratio:Resource path="WRResources/ajax/jquery/jquery.min.js"/>" data-wr-resname="jquery" data-wr-resver="1.7.2"></script>
	<script src="<webratio:Resource path="WRResources/script.js"/>" data-wr-resname="wr-utils-supportscripts" data-wr-resver="7.2.12"></script>
			<c:if test="${(wrBoxed or wrAjaxCalling)}">
	<script src="<webratio:Resource path="WRResources/ajax/jquery-ui/jquery-ui.min.js"/>" data-wr-resname="jquery-ui" data-wr-resver="1.9.2"></script>
			</c:if>
			<c:if test="${(wrBoxed or wrAjaxCalling) and not(empty webratio:expandLayoutResourceContent('BUILTIN/wr-runtime', 'WRResources/ajax/webratio/', pageContext))}">
	<script src="<webratio:Resource path="${webratio:expandLayoutResourceContent('BUILTIN/wr-runtime', 'WRResources/ajax/webratio/', pageContext)}"/>" data-wr-resname="wr-runtime" data-wr-resver="7.2.12"></script>
<c:if test="${not wrAjax and not webratio:isWindow(pageContext)}">
	<script type="text/javascript">
		<c:choose>
			<c:when test="${wrBoxed}">
				(wr._configs = (wr._configs || {}))["${wrClientAppName}"] = (function() {
					var app = new wr.app.App("${wrClientAppName}");
					app.configure({
			</c:when>
			<c:otherwise>
				(function() { 
					wr.getApp().mergeConfig({
			</c:otherwise>
		</c:choose>
			log: {
				implementation: "wr.log.LogPlugin",
				appenders: [
					"wr.log.HtmlAppender"
				],
				categories: {
					<c:choose>
						<c:when test="${wrAjaxDebugLevel eq 'full'}">
							"": wr.log.Level.DEBUG
						</c:when>
						<c:otherwise>
							"": wr.log.Level.WARN,
							"wr.logic.AjaxRequestActor._response": wr.log.Level.DEBUG,
							"wr.ui.html.ElementViewer._code": wr.log.Level.DEBUG,
							"wr.widgets": wr.log.Level.DEBUG
						</c:otherwise>
					</c:choose>
				}
			},
		ui: {
			implementation: "wr.ui.UIPlugin",
			factories: {
				"display": "wr.ui.DisplayControlFactory",
				"window": "wr.ui.WindowControlFactory",
				"default": "wr.ui.ViewerBasedControlFactory"
			},
			display: { 
				factory: "display", 
				viewer: "wr.ui.web.BrowserViewer",
				views: {
					"${wrCurrentWindowName}": {
						factory: "window",
						viewer: "${wrBoxed ? 'wr.ui.web.BoxViewer' : 'wr.ui.web.WindowViewer'}",
						viewerConfig: { <c:if test="${wrBoxed}">boxSelector: "#wr-${wrClientAppName}"</c:if> },
						views: {
							"${wrCurrentWindowName}_page": {
								viewer: "wr.ui.html.ContainerElementViewer",
								viewerConfig: { containersFilter: ".wr-ajaxDiv" }
							}
						}
					}
				}
			}
		},
		nav: {
			implementation: "wr.nav.NavPlugin",
			routers: [ {
				name: "wr.nav.PropagationRouter",
				priority: -50
			}, {
				name: "wr.nav.HttpWebRouter",
				priority: -100
			} ]
		},
		logic: {
			implementation: "wr.logic.LogicPlugin"
		},
		oldajax: {
			implementation: "wr.LegacyAjaxPlugin",
				containersFilter: ".wr-ajaxDiv"
			}
		<c:choose>
			<c:when test="${wrBoxed}">
					}).chain(function() {
						app.init();
					}).chain(function() {
						app.start();
					});
				});
			</c:when>
			<c:otherwise>
					});
				})();
			</c:otherwise>
		</c:choose>
	</script>
</c:if>
			</c:if>
			<!--[if lt IE 9]>
	<script src="<webratio:Resource path="AdminLTE/js/html5shiv.min.js"/>" data-wr-resname="aFarkas-html5shiv"></script>
			<![endif]-->
			<!--[if lt IE 9]>
	<script src="<webratio:Resource path="AdminLTE/js/respond.min.js"/>" data-wr-resname="Scott-Jehl-respond"></script>
			<![endif]-->
	<script src="<webratio:Resource path="AdminLTE/js/bootstrap.min.js"/>" data-wr-resname="bootstrap-js"></script>
	<script src="<webratio:Resource path="AdminLTE/js/app.min.js"/>" data-wr-resname="app-js"></script>
<script>if (typeof wr !== "undefined") { wr.ui.html.resx.refreshLoaded(); }</script>
	</head>
<body class="skin-blue fixed">
	<a href="#main-content" class="sr-only">Skip to main content</a>
	<c:if test="${wrBoxed}">
		<div <c:if test="${not wrAjax}">id="wr-${wrClientAppName}" data-wr-appid="${wrClientAppName}"</c:if> class="wr-appui wr-appui-${wrClientAppName}">
	</c:if>
	<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
		<header class="top-header">
			<a class="logo" href="page25.do">
				<span class="sr-only">WebRatio</span>
			</a>
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
            </nav>
        </header>
		<div class="wrapper row-offcanvas row-offcanvas-left">
            <aside class="left-side sidebar-offcanvas">
                <section class="sidebar">
                    <ul class="sidebar-menu" role="menu">
			<c:if test="${webratio:isTargetAccessible('page27.link', pageContext)}">
									<li class="treeview">
										<a href="<webratio:Link escapeXml="true" link="page27.link" position="index"/>">
											<span>Quienes Somos</span>
											<span class="pull-right caret"></span>
										</a>
										<ul class="treeview-menu" role="menu">
			<c:if test="${webratio:isTargetAccessible('page27.link', pageContext)}">
															<li>
																<a href="<webratio:Link escapeXml="true" link="page27.link" position="index"/>">
																	<span>Mision</span>
																</a>
															</li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('page26.link', pageContext)}">
															<li>
																<a href="<webratio:Link escapeXml="true" link="page26.link" position="index"/>">
																	<span>Vision</span>
																</a>
															</li>
			</c:if>
										</ul>
									</li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('page28.link', pageContext)}">
									<li class="treeview">
										<a href="<webratio:Link escapeXml="true" link="page28.link" position="index"/>">
											<span>Catalogo/Servicios</span>
											<span class="pull-right caret"></span>
										</a>
										<ul class="treeview-menu" role="menu">
			<c:if test="${webratio:isTargetAccessible('page28.link', pageContext)}">
															<li>
																<a href="<webratio:Link escapeXml="true" link="page28.link" position="index"/>">
																	<span>Productos</span>
																</a>
															</li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('page29.link', pageContext)}">
															<li>
																<a href="<webratio:Link escapeXml="true" link="page29.link" position="index"/>">
																	<span>Servicios</span>
																</a>
															</li>
			</c:if>
										</ul>
									</li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('page43.link', pageContext)}">
									<li class="active"><a href="<webratio:Link escapeXml="true" link="page43.link"/>">Contacto</a></li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('page55.link', pageContext)}">
									<li class="treeview">
										<a href="<webratio:Link escapeXml="true" link="page55.link" position="index"/>">
											<span>Operaciones de Productos</span>
											<span class="pull-right caret"></span>
										</a>
										<ul class="treeview-menu" role="menu">
			<c:if test="${webratio:isTargetAccessible('page55.link', pageContext)}">
															<li>
																<a href="<webratio:Link escapeXml="true" link="page55.link" position="index"/>">
																	<span>Alta de Productos</span>
																</a>
															</li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('page54.link', pageContext)}">
															<li>
																<a href="<webratio:Link escapeXml="true" link="page54.link" position="index"/>">
																	<span>Consulta Productos</span>
																</a>
															</li>
			</c:if>
										</ul>
									</li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('page50.link', pageContext)}">
									<li class="treeview">
										<a href="<webratio:Link escapeXml="true" link="page50.link" position="index"/>">
											<span>Operaciones Clientes</span>
											<span class="pull-right caret"></span>
										</a>
										<ul class="treeview-menu" role="menu">
			<c:if test="${webratio:isTargetAccessible('page50.link', pageContext)}">
															<li>
																<a href="<webratio:Link escapeXml="true" link="page50.link" position="index"/>">
																	<span>Alta Clientes</span>
																</a>
															</li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('page51.link', pageContext)}">
															<li>
																<a href="<webratio:Link escapeXml="true" link="page51.link" position="index"/>">
																	<span>Consultar Clientes</span>
																</a>
															</li>
			</c:if>
										</ul>
									</li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('lou5.link', pageContext)}">
<c:if test="${webratio:getStartOperation(pageContext) eq 'lou5'}">
									<li class="active"><a href="<webratio:Link escapeXml="true" link="lou5.link"/>">Cerrar sesi&oacute;n</a></li>
								</c:if>
<c:if test="${webratio:getStartOperation(pageContext) ne 'lou5'}">
									<li><a href="<webratio:Link escapeXml="true" link="lou5.link"/>">Cerrar sesi&oacute;n</a></li>
								</c:if>
			</c:if>
                    </ul>
                </section>
            </aside>
            <aside class="right-side">
                <section class="content-header clearfix">
						<h1>Contactanos</h1>
                    <ol class="breadcrumb">
                    	<li>
                    		<a href="page25.do">
                    		<span class="glyphicon glyphicon-home"></span> Home</a>
                    	</li>
						 <li><c:if test="${webratio:isTargetAccessible('page43.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page43.link"/>">
   Contacto
</a>
			</c:if>
 </li>
						<li class="active">Contactanos</li>
                    </ol>
                </section>
                <section class="content">
					<div class="row">
						<div class="col-md-12">
							<div id="main-content" role="main">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
<c:if test="${not(empty mssu28) and (mssu28.dataSize gt 0)}">
	<div class="alert alert-info ">
		<span class="glyphicon glyphicon-info-sign"></span>
		<c:forEach var="current" varStatus="status" items="${mssu28.data}">
			<c:set var="index" value="${status.index}"/>
			<p>
					<c:out value="${current}"/>
				</p>
		</c:forEach>
	</div>
</c:if>
				</div>
					<div class="clear"></div>
</div>
							</div>
						</div>
					</div>
                </section>
                <footer class="footer-bottom text-center" role="contentinfo">
					<p class="footer-info">Generated by <a href="http://www.webratio.com" target="_blank" title="High Productivity Web and Mobile App Dev Platform">WebRatio<sup>&reg;</sup></a></p>
				</footer>
            </aside>
        </div>
</webratio:CollectScripts>
<c:if test="${wrBoxed}">
		</div>
		<c:if test="${not wrAjax}">
			<script type="text/javascript">
				jQuery(function($) {
					wr.ui.html.addRemoveListener($("#wr-${wrClientAppName}")[0], $.proxy(wr.runScoped, this, "${wrClientAppName}", wr.LegacyAjaxPlugin.exit));
				});
				wr._configs["${wrClientAppName}"]();
			</script>
		</c:if>
		<c:if test="${not(empty inlineScripts)}">
			<script type="text/javascript">
				wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
					${inlineScripts}
				});
			</script>
		</c:if>
</c:if>
</body>
</html>