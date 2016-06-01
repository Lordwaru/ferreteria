<!DOCTYPE html>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%> 
<webratio:Page page="page52"/>
<html lang="${LanguageISOCtxParam}">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
	    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
		<title>Actualizar</title>
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
			<html:form action="form_page52.do${wrAjax ? '#!ajax=true' : ''}" styleId="page52FormBean" enctype="multipart/form-data">
			<html:hidden property="lastURL" styleId="lastURL_page52"/>
				<input type="hidden" name="ln31" value="<webratio:Link link="ln31"/>">
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
									<li><a href="<webratio:Link escapeXml="true" link="page43.link"/>">Contacto</a></li>
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
									<li class="active treeview">
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
						<h1>Actualizar</h1>
                    <ol class="breadcrumb">
                    	<li>
                    		<a href="page25.do">
                    		<span class="glyphicon glyphicon-home"></span> Home</a>
                    	</li>
						 <li><c:if test="${webratio:isTargetAccessible('page50.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page50.link"/>">
   Operaciones Clientes
</a>
			</c:if>
 </li>
						<li class="active">Actualizar</li>
                    </ol>
                </section>
                <section class="content">
					<div class="row">
						<div class="col-md-12">
							<div id="main-content" role="main">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
<div class="box box-default ">
	<div class="box-header">
		<h3 class="box-title">
			Alta Cliente
		</h3>
	</div>
	<div class="box-body">
<div class="EntryUnit ">
	<html:hidden property="enu15Key" styleId="enu15Key"></html:hidden>
		<html:hidden property="fld76" styleId="fld76"/>
	<div class="form-horizontal ">
	    <c:set var="btFieldError"><html:errors property="enu15"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<span class="glyphicon glyphicon-ban-circle"></span>
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu15"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="fld69"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld69" class="control-label col-md-2">Nombre de usuario</label>
					<div class="controls col-md-10">
					<html:text   styleId="fld69" styleClass="wr-submitButtons:ln31  form-control " property="fld69" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld69"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld70"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld70" class="control-label col-md-2">Contrase&ntilde;a</label>
					<div class="controls col-md-10">
					<input type="password" autocomplete="off" id="fld70" class="wr-submitButtons:ln31 form-control " name="fld70"/>
					<c:set var="btFieldError"><html:errors property="fld70"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld71"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld71" class="control-label col-md-2">Correo electr&oacute;nico</label>
					<div class="controls col-md-10">
					<html:text   styleId="fld71" styleClass="wr-submitButtons:ln31  form-control " property="fld71" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld71"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld72"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld72" class="control-label col-md-2">Direcci&oacute;n</label>
					<div class="controls col-md-10">
					<html:text   styleId="fld72" styleClass="wr-submitButtons:ln31  form-control " property="fld72" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld72"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld73"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld73" class="control-label col-md-2">T&eacute;lefono</label>
					<div class="controls col-md-10">
					<html:text   styleId="fld73" styleClass="wr-submitButtons:ln31  form-control " property="fld73" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld73"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld74"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld74" class="control-label col-md-2">Nombre</label>
					<div class="controls col-md-10">
					<html:text   styleId="fld74" styleClass="wr-submitButtons:ln31  form-control " property="fld74" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld74"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld75"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld75" class="control-label col-md-2">Apellidos</label>
					<div class="controls col-md-10">
					<html:text   styleId="fld75" styleClass="wr-submitButtons:ln31  form-control " property="fld75" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld75"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld10"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld10" class="control-label col-md-2">Sexo</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld10" styleClass="wr-submitButtons:ln31 form-control " property="sfld10" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld10List" labelProperty="sfld10LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld10"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld11"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld11" class="control-label col-md-2">Tipo</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld11" styleClass="wr-submitButtons:ln31 form-control " property="sfld11" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld11List" labelProperty="sfld11LabelList_locale"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld11"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
	<div class="row"><div class="col-md-offset-2 col-md-10">
		<div class="form-group form-btn">
			<c:if test="${webratio:isTargetAccessible('ln31', pageContext)}">
					 <c:if test="${webratio:isTargetAccessible('ln31', pageContext)}">
			<button title="Guardar cambios" onclick="$('#page52FormBean')[0].target='_self'" class="btn  btn-default " id="button:ln31" name="button:ln31" type="submit" value="Guardar cambios">
			Guardar cambios</button>
	</c:if>
			</c:if>
		</div>
	</div></div>
</div>	
	</div>
</div>
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
		</html:form>
		<script type="text/javascript">
			if (typeof wr !== "undefined" && wr.getApp().isConfigurable()) {
				wr.getApp().mergeConfig({
					"ui+": {
						autoFocusFirstWindow: true
					}
				});
			}
		</script>
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