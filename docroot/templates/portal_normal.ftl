<!DOCTYPE html>

<#include init />

<html class="${root_css_class} ic2" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	
	<link rel="stylesheet" href="${css_folder}/adminlte/font-awesome/css/font-awesome.min.css">
	  <!-- Ionicons -->
	  <link rel="stylesheet" href="${css_folder}/adminlte/ionicons.min.css">
	  
	  <!-- Theme style -->

	  <link rel="stylesheet" href="${css_folder}/adminlte/AdminLTE.css?v1.2">

	  <!-- AdminLTE Skins. Choose a skin from the css/skins
	   folder instead of downloading all of them to reduce the load. -->
	  <link rel="stylesheet" href="${css_folder}/adminlte/_all-skins.min.css">
	<link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
        
	${theme.include(top_head_include)}
	
	<!-- jQuery 3 -->
	<script src="${javascript_folder}/jquery-3.3.1.min.js"></script>
	
</head>

<body class="hold-transition skin-blue sidebar-mini">

<a href="#main-content" id="skip-to-content"><@liferay.language key="skip-to-content" /></a>

${theme.include(body_top_include)}

<#if is_signed_in && admin_user>
	<@liferay.dockbar />
	<#else>
</#if>

<div class="wrapper">
	<header class="main-header" role="banner">
		<!-- Logo -->
	    <a href="index2.html" class="logo">
	      <!-- mini logo for sidebar mini 50x50 pixels -->
	      
	      <span class="logo-mini">
	      	<img alt="${logo_description}" height="${site_logo_height}" src="${site_logo}" width="${site_logo_width}" />
	      </span>
	      <!-- logo for regular state and mobile devices -->
	      <span class="logo-lg">
	      	<img alt="${logo_description}" height="${site_logo_height}" src="${site_logo}" width="${site_logo_width}" />
	      </span>
	    </a>
	
	    <!-- Header Navbar: style can be found in header.less -->
	    <nav class="navbar navbar-static-top">
	      <!-- Sidebar toggle button-->
	      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
	        <span class="sr-only">Toggle navigation</span>
	      </a>
	      <!-- Navbar Right Menu -->
	      <div class="navbar-custom-menu">
	        <ul class="nav navbar-nav">
	          
	          <!-- User Account: style can be found in dropdown.less -->
	          <li class="dropdown user user-menu">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
	              <img src="${profilePic}" class="user-image" alt="User Image">
	              <span class="hidden-xs">${userName}</span>
	            </a>
	            <ul class="dropdown-menu">
	              <!-- User image -->
	              <li class="user-header">
	                <img src="${profilePic}" class="img-circle" alt="User Image">
	
	                <p>
	                  ${userName}
	                </p>
	              </li>
	              <!-- Menu Footer-->
	              <li class="user-footer">
	                <div class="pull-right">
	                  <a href="/c/portal/logout" class="btn btn-default btn-flat">Salir</a>
	                </div>
	              </li>
	            </ul>
	          </li>
	        </ul>
	      </div>
	    </nav>
		
		<#if !is_signed_in>
			<a href="${sign_in_url}" data-redirect="${is_login_redirect_required?string}" id="sign-in" rel="nofollow">${sign_in_text}</a>
		</#if>

		
	</header>
	
	<!-- Left side column. contains the logo and sidebar -->
	  <aside class="main-sidebar">
	    <!-- sidebar: style can be found in sidebar.less -->
	    <section class="sidebar">
	      <!-- sidebar menu: : style can be found in sidebar.less -->
	      <#if has_navigation || is_signed_in>
			<#include "${full_templates_path}/navigation.ftl" />
		  </#if>
	      
	    </section>
	    <!-- /.sidebar -->
	  </aside>
	
	<div id="content" class="content-wrapper">
		<!-- Content Header (Page header) -->
	    <section class="content-header">
	      <h1>
	        ${the_title}
	      </h1>
	      <!--<ol class="breadcrumb">
	        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
	        <li class="active">Dashboard</li>-->
	      </ol>
	    </section>
		
		<!-- Main content -->
    	<section class="content">
			<#if selectable>
				${theme.include(content_include)}
			<#else>
				${portletDisplay.recycle()}
	
				${portletDisplay.setTitle(the_title)}
	
				${theme.wrapPortlet("portlet.ftl", content_include)}
			</#if>
		</section>
	</div>

	<footer class="main-footer" >
		<div class="pull-right hidden-xs">
	      <b>Version</b> 1.0.0
	    </div>
	    <strong>Copyright &copy; 2019 Diego Galeano, Laura Prada.</strong> Derechos reservados.
	</footer>
</div>

${theme.include(body_bottom_include)}

${theme.include(bottom_include)}

<script src="${javascript_folder}/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="${javascript_folder}/adminlte/adminlte.min.js"></script>
<!-- Sparkline -->
<script src="${javascript_folder}/adminlte/jquery.sparkline.min.js"></script>
<!-- jvectormap  -->
<script src="${javascript_folder}/adminlte/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${javascript_folder}/adminlte/jquery-jvectormap-world-mill-en.js"></script>
<!-- ChartJS -->
<script src="${javascript_folder}/adminlte/Chart.min.js"></script>

</body>

</html>