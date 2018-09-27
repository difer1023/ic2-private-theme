<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	
	<link rel="stylesheet" href="${css_folder}/adminlte/font-awesome/css/font-awesome.min.css">
	  <!-- Ionicons -->
	  <link rel="stylesheet" href="${css_folder}/adminlte/ionicons.min.css">
	  
	  <!-- Theme style -->
	  <link rel="stylesheet" href="${css_folder}/adminlte/AdminLTE.css?v1.3">
	  <!-- AdminLTE Skins. Choose a skin from the css/skins
	   folder instead of downloading all of them to reduce the load. -->
	  <link rel="stylesheet" href="${css_folder}/adminlte/_all-skins.min.css">
	<link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
        
	${theme.include(top_head_include)}
	
	<!-- jQuery 3 -->
	<script src="${javascript_folder}/jquery-3.3.1.min.js"></script>
	
	<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="display:none;">
		<g>
			<symbol id="icon-ic2">
				<path d="M7.963,37.336c0-0.913,0.249-1.162,1.162-1.162h3.071c0.913,0,1.162,0.332,1.162,1.162v55.771
					c0,0.912-0.249,1.162-1.162,1.162H9.125c-0.913,0-1.162-0.25-1.162-1.162V37.336z"/>
				<path d="M55.52,95.348c-16.267-0.414-28.965-14.109-28.965-30.126c0-16.018,12.698-29.628,28.965-30.126v4.813
					c-13.197,0.498-23.488,12.699-23.488,25.313c0,12.698,10.208,24.897,23.488,25.313V95.348z M57.178,35.096
					c7.719,0.249,15.852,3.569,20.832,8.548c0.58,0.581,0.58,0.996,0,1.577l-1.992,2.241c-0.58,0.581-1.162,0.581-1.742,0
					c-3.486-3.735-9.627-7.304-17.098-7.553V35.096z M57.178,90.536c7.637-0.25,13.529-3.818,17.346-7.719
					c0.582-0.582,1.08-0.498,1.578,0.082l1.992,2.158c0.58,0.664,0.58,1.08-0.084,1.742c-5.063,5.063-13.029,8.301-20.832,8.549
					V90.536z"/>
				<path d="M84.567,7.073c-2.72,0.113-5.202,1.186-7.247,3.42c-0.321,0.319-0.562,0.239-0.8-0.002l-0.878-0.962
					c-0.239-0.241-0.318-0.441,0.002-0.72c2.406-2.393,5.289-3.945,8.93-4.055L84.567,7.073z M85.374,4.756
					c8.158,0.222,11.019,7.068,6.366,12.335l-14.002,16.16l-1.96-0.005c-0.239,0-0.319-0.081-0.318-0.321l0.001-0.36
					c0-0.28,0.081-0.439,0.321-0.759l14.121-16.119c2.93-3.312,1.663-8.394-4.536-8.611L85.374,4.756z M80.744,30.979l12.997,0.035
					c0.44,0.001,0.561,0.122,0.56,0.522l-0.004,1.2c-0.001,0.44-0.121,0.56-0.562,0.558l-14.957-0.041L80.744,30.979z"/>
			</symbol>
		</g>
	</svg>
</head>

<body class="hold-transition skin-blue sidebar-mini">

<a href="#main-content" id="skip-to-content"><@liferay.language key="skip-to-content" /></a>

${theme.include(body_top_include)}

<#if is_signed_in>
	<@liferay.dockbar />
</#if>

<div class="wrapper">
	<header class="main-header" role="banner">
		<!-- Logo -->
	    <a href="index2.html" class="logo">
	      <!-- mini logo for sidebar mini 50x50 pixels -->
	      
	      <span class="logo-mini"><svg viewbox="0 0 100 100" x="0" y="0"><use xlink:href="#icon-ic2" ></use></svg></span>
	      <!-- logo for regular state and mobile devices -->
	      <span class="logo-lg"><svg viewbox="0 0 100 100" x="0" y="0"><use xlink:href="#icon-ic2" ></use></svg></span>
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
	              <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
	              <span class="hidden-xs">Alexander Pierce</span>
	            </a>
	            <ul class="dropdown-menu">
	              <!-- User image -->
	              <li class="user-header">
	                <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
	
	                <p>
	                  Alexander Pierce - Web Developer
	                  <small>Member since Nov. 2012</small>
	                </p>
	              </li>
	              <!-- Menu Body -->
	              <li class="user-body">
	                <div class="row">
	                  <div class="col-xs-4 text-center">
	                    <a href="#">Followers</a>
	                  </div>
	                  <div class="col-xs-4 text-center">
	                    <a href="#">Sales</a>
	                  </div>
	                  <div class="col-xs-4 text-center">
	                    <a href="#">Friends</a>
	                  </div>
	                </div>
	                <!-- /.row -->
	              </li>
	              <!-- Menu Footer-->
	              <li class="user-footer">
	                <div class="pull-left">
	                  <a href="#" class="btn btn-default btn-flat">Profile</a>
	                </div>
	                <div class="pull-right">
	                  <a href="#" class="btn btn-default btn-flat">Sign out</a>
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
	      <ol class="breadcrumb">
	        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
	        <li class="active">Dashboard</li>
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
	      <b>Version</b> 2.4.0
	    </div>
	    <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
	    reserved.
	</footer>
</div>

${theme.include(body_bottom_include)}

${theme.include(bottom_include)}


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