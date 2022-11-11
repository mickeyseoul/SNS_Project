<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>
<!-- updateBackgroundForm.jsp<br> -->

<!DOCTYPE html>
<html lang="en">

<script type="text/javascript" src="<%= request.getContextPath() %>/resources/js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//alert("ready");
	
	//파일 클릭했을 때 보여지는 이미지
	$("#gdsImg").change(function(){
		if(this.files && this.files[0]) { //파일을 등록했다면?
		    var reader = new FileReader;
		    reader.onload = function(data) {
		    	$(".select_img img").attr("src", data.target.result).width(500); //파일 크기 변환..
		   	}
	    	reader.readAsDataURL(this.files[0]);
		}
	  });
	 
	
});


</script>

<style>
#navProfile {
	border-radius: 100px;
	width: 40px;
	height: 40px;
}

#sideProfile {
	border-radius: 100px;
	width: 80px;
	height: 80px;
}

#content {
	width: 50%;
	margin-left: 25%;
}

.select_img{
	margin-top: 10px;
	margin-bottom: 10px;
	overflow: hidden;
	height: 160px; 
	width: 500px;
	
}

#img{
	margin-top: -20%;

}
</style>

<head>
<title>Material Able bootstrap admin template by Codedthemes</title>
<!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 10]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<meta name="keywords"
	content="flat ui, admin Admin , Responsive, Landing, Bootstrap, App, Template, Mobile, iOS, Android, apple, creative app">
<meta name="author" content="Codedthemes" />
<!-- Favicon icon -->
<link rel="icon"
	href="<%=request.getContextPath()%>/resources/assets/images/favicon.ico"
	type="image/x-icon">
<!-- Google font-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800"
	rel="stylesheet">
<!-- Required Fremwork -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/assets/css/bootstrap/css/bootstrap.min.css">
<!-- waves.css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/assets/pages/waves/css/waves.min.css"
	type="text/css" media="all">
<!-- themify-icons line icon -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/assets/icon/themify-icons/themify-icons.css">
<!-- feather icon -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/assets/icon/feather/css/feather.css">
<!-- Font Awesome -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/assets/icon/font-awesome/css/font-awesome.min.css">
<!-- Style.css -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/assets/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/assets/css/jquery.mCustomScrollbar.css">
</head>

<body>
	<!-- Pre-loader start -->
	<div class="theme-loader">
		<div class="loader-track">
			<div class="preloader-wrapper">
				<div class="spinner-layer spinner-blue">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>
				<div class="spinner-layer spinner-red">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>
				<div class="spinner-layer spinner-yellow">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>
				<div class="spinner-layer spinner-green">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Pre-loader end -->
	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">

			<!-- ### nav ### -->
			<nav class="navbar header-navbar pcoded-header">
				<div class="navbar-wrapper">
					<div class="navbar-logo">
						<a class="mobile-menu waves-effect waves-light"
							id="mobile-collapse" href="#!"> <i class="ti-menu"></i>
						</a>
						<div class="mobile-search waves-effect waves-light">
							<div class="header-search">
								<div class="main-search morphsearch-search">
									<div class="input-group">
										<span class="input-group-prepend search-close"><i
											class="ti-close input-group-text"></i></span> <input type="text"
											class="form-control" placeholder="Enter Keyword"> <span
											class="input-group-append search-btn"><i
											class="ti-search input-group-text"></i></span>
									</div>
								</div>
							</div>
						</div>
						<a href="index.html"> <img class="img-fluid"
							src="<%=request.getContextPath()%>/resources/assets/images/logo.png"
							alt="Theme-Logo" />
						</a> <a class="mobile-options waves-effect waves-light"> <i
							class="ti-more"></i>
						</a>
					</div>
					<div class="navbar-container container-fluid">
						<ul class="nav-left">
							<li>
								<div class="sidebar_toggle">
									<a href="javascript:void(0)"><i class="ti-menu"></i></a>
								</div>
							</li>
							<li><a href="#!" onclick="javascript:toggleFullScreen()"
								class="waves-effect waves-light"> <i class="ti-fullscreen"></i>
							</a></li>
						</ul>
						<ul class="nav-right">
							<li class="header-notification"><a href="#!"
								class="waves-effect waves-light"> <i class="ti-bell"></i> <span
									class="badge bg-c-red"></span>
							</a>
								<ul class="show-notification">
									<li>
										<h6>Notifications</h6> <label class="label label-danger">New</label>
									</li>
									<li class="waves-effect waves-light">
										<div class="media">
											<img class="d-flex align-self-center img-radius"
												src="<%=request.getContextPath()%>/resources/assets/images/avatar-2.jpg"
												alt="Generic placeholder image">
											<div class="media-body">
												<h5 class="notification-user">John Doe</h5>
												<p class="notification-msg">Lorem ipsum dolor sit amet,
													consectetuer elit.</p>
												<span class="notification-time">30 minutes ago</span>
											</div>
										</div>
									</li>
									<li class="waves-effect waves-light">
										<div class="media">
											<img class="d-flex align-self-center img-radius"
												src="<%=request.getContextPath()%>/resources/assets/images/avatar-4.jpg"
												alt="Generic placeholder image">
											<div class="media-body">
												<h5 class="notification-user">Joseph William</h5>
												<p class="notification-msg">Lorem ipsum dolor sit amet,
													consectetuer elit.</p>
												<span class="notification-time">30 minutes ago</span>
											</div>
										</div>
									</li>
									<li class="waves-effect waves-light">
										<div class="media">
											<img class="d-flex align-self-center img-radius"
												src="<%=request.getContextPath()%>/resources/assets/images/avatar-3.jpg"
												alt="Generic placeholder image">
											<div class="media-body">
												<h5 class="notification-user">Sara Soudein</h5>
												<p class="notification-msg">Lorem ipsum dolor sit amet,
													consectetuer elit.</p>
												<span class="notification-time">30 minutes ago</span>
											</div>
										</div>
									</li>
								</ul></li>
							<li class="user-profile header-notification"><a href="#!"
								class="waves-effect waves-light"> <!-- class="img-radius" -->
									<c:if test="${ login.profile eq null }">
										<img id="navProfile"
											src="<%=request.getContextPath()%>/resources/assets/images/members/profile.png"
											alt="User-Profile-Image">
									</c:if> <c:if test="${ login.profile ne null }">
										<img id="navProfile"
											src="<%= request.getContextPath() %>/resources/assets/images/members/${ login.profile }"
											alt="User-Profile-Image">
									</c:if> <span>${ login.name }</span> <i class="ti-angle-down"></i>
							</a>
								<ul class="show-notification profile-notification">
									<li class="waves-effect waves-light"><a
										href="settings.pro"> <i class="ti-settings"></i> 설정 및 개인정보
									</a></li>
									<!-- <li class="waves-effect waves-light"><a
										href="user-profile.html"> <i class="ti-user"></i> Profile
									</a></li> -->
									<li class="waves-effect waves-light"><a
										href="email-inbox.html"> <i class="ti-email"></i> 메세지
									</a></li>
									<!-- <li class="waves-effect waves-light"><a
										href="auth-lock-screen.html"> <i class="ti-lock"></i> Lock
											Screen
									</a></li> -->
									<li class="waves-effect waves-light"><a href="logout.mem">
											<i class="ti-layout-sidebar-left"></i> 로그아웃
									</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- ### nav 끝 ### -->
			<!-- ### nav 이외의 영역 ### -->
			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">
					<!-- ### 1 사이드바 ### -->
					<nav class="pcoded-navbar">
						<div class="sidebar_toggle">
							<a href="#"><i class="icon-close icons"></i></a>
						</div>
						<div class="pcoded-inner-navbar main-menu">
							<div class="">
								<div class="main-menu-header">
									<a href="myprofile.pro"> <!-- class="img-80 img-radius" -->
										<c:if test="${ login.profile eq null }">
											<img id="sideProfile"
												src="<%=request.getContextPath()%>/resources/assets/images/members/profile.png"
												alt="User-Profile-Image">
										</c:if> <c:if test="${ login.profile ne null }">
											<img id="sideProfile"
												src="<%= request.getContextPath() %>/resources/assets/images/members/${ login.profile }"
												alt="User-Profile-Image">
										</c:if>
									</a>
									<div class="user-details">
										<span id="more-details">${ login.name }<i
											class="fa fa-caret-down"></i></span>
									</div>
								</div>
								<div class="main-menu-content">
									<ul>
										<li class="more-details"><a href="user-profile.html"><i
												class="ti-user"></i>View Profile</a> <a href="#!"><i
												class="ti-settings"></i>Settings</a> <!-- <a href="auth-normal-sign-in.html"><i class="ti-layout-sidebar-left"></i>Logout</a> -->
										</li>
									</ul>
								</div>
							</div>
							<div class="p-15 p-b-0">
								<form class="form-material">
									<div class="form-group form-primary">
										<input type="text" name="footer-email" class="form-control">
										<span class="form-bar"></span> <label class="float-label"><i
											class="fa fa-search m-r-10"></i>Search Friend</label>
									</div>
								</form>
							</div>
							<div class="pcoded-navigation-label">Navigation</div>
							<ul class="pcoded-item pcoded-left-item">
								<li class=""><a href="index.html"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-home"></i><b>D</b></span> <span class="pcoded-mtext">Dashboard</span>
										<span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<div class="pcoded-navigation-label">UI Element</div>
							<ul class="pcoded-item pcoded-left-item">
								<li class="pcoded-hasmenu"><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-layout-grid2-alt"></i><b>BC</b></span> <span
										class="pcoded-mtext">Basic</span> <span class="pcoded-mcaret"></span>
								</a>
									<ul class="pcoded-submenu">
										<li class=" "><a href="breadcrumb.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Breadcrumbs</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="button.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Button</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a href="accordion.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Accordion</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="tabs.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Tabs</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="color.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Color</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="label-badge.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Label Badge</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="tooltip.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Tooltip And Popover</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="typography.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Typography</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="notification.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Notifications</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
									</ul></li>
							</ul>
							<div class="pcoded-navigation-label">Forms</div>
							<ul class="pcoded-item pcoded-left-item">
								<li class=""><a href="form-elements-component.html"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-layers"></i><b>FC</b></span> <span class="pcoded-mtext">Form</span>
										<span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<div class="pcoded-navigation-label">Tables</div>
							<ul class="pcoded-item pcoded-left-item">
								<li class=""><a href="bs-basic-table.html"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-receipt"></i><b>B</b></span> <span class="pcoded-mtext">Table</span>
										<span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<div class="pcoded-navigation-label">Chart And Maps</div>
							<ul class="pcoded-item pcoded-left-item">
								<li class=""><a href="chart-morris.html"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-bar-chart-alt"></i><b>C</b></span> <span
										class="pcoded-mtext">Charts</span> <span class="pcoded-mcaret"></span>
								</a></li>
								<li class=""><a href="map-google.html"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-map-alt"></i><b>M</b></span> <span class="pcoded-mtext">Maps</span>
										<span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<div class="pcoded-navigation-label">Pages</div>
							<ul class="pcoded-item pcoded-left-item">
								<li class="pcoded-hasmenu active pcoded-trigger"><a
									href="javascript:void(0)" class="waves-effect waves-dark">
										<span class="pcoded-micon"><i class="ti-id-badge"></i><b>A</b></span>
										<span class="pcoded-mtext">Pages</span> <span
										class="pcoded-mcaret"></span>
								</a>
									<ul class="pcoded-submenu">
										<li class=""><a href="auth-normal-sign-in.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Login</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a href="auth-sign-up.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Registration</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class="active"><a href="sample-page.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i
													class="ti-layout-sidebar-left"></i><b>S</b></span> <span
												class="pcoded-mtext">Sample Page</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
									</ul></li>
							</ul>
						</div>
					</nav>
					<div class="pcoded-content">
						<!-- Page-header start -->

						<!-- Page-header end -->
						<div class="pcoded-inner-content">
							<div class="main-body">
								<div class="page-wrapper">
									<div class="page-body">
										<div class="row">

											<!-- 컨텐츠 -->
											<div class="col-sm-12">
												<div class="card" id="content">
													<div class="card-header">
														<h4>배경 사진 업데이트</h4>
														<span></span>

														<div class="card-block">
															<p>
															<form action="updateImage.pro" method="post"
																enctype="multipart/form-data">
																<input type="hidden" name="name" value="background">
																<input type="hidden" name="no" value="${ login.no }">
																<input type="file" id="gdsImg" name="uploadBackground"><br>													
																<div class="select_img"><img id="img" src=""/></div>
																
																<button type="button" class="btn btn-default waves-effect" 
			                                        				 onclick="javascript:location.href='myprofile.pro'">취소</button>
																<input type="submit" value="사진등록" class="btn btn-primary waves-effect waves-light">
															</form>
															</p>
														</div>
													</div>
												</div>
												<!-- //컨텐츠 -->


											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="styleSelector"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- Warning Section Starts -->
		<!-- Older IE warning message -->
		<!--[if lt IE 10]>
        <div class="ie-warning">
            <h1>Warning!!</h1>
            <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
            <div class="iew-container">
                <ul class="iew-download">
                    <li>
                        <a href="http://www.google.com/chrome/">
                            <img src="assets/images/browser/chrome.png" alt="Chrome">
                            <div>Chrome</div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.mozilla.org/en-US/firefox/new/">
                            <img src="assets/images/browser/firefox.png" alt="Firefox">
                            <div>Firefox</div>
                        </a>
                    </li>
                    <li>
                        <a href="http://www.opera.com">
                            <img src="assets/images/browser/opera.png" alt="Opera">
                            <div>Opera</div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.apple.com/safari/">
                            <img src="assets/images/browser/safari.png" alt="Safari">
                            <div>Safari</div>
                        </a>
                    </li>
                    <li>
                        <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                            <img src="assets/images/browser/ie.png" alt="">
                            <div>IE (9 & above)</div>
                        </a>
                    </li>
                </ul>
            </div>
            <p>Sorry for the inconvenience!</p>
        </div>
    <![endif]-->
		<!-- Warning Section Ends -->
		<!-- Required Jquery -->
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/resources/assets/js/jquery/jquery.min.js "></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/resources/assets/js/jquery-ui/jquery-ui.min.js "></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/resources/assets/js/popper.js/popper.min.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/resources/assets/js/bootstrap/js/bootstrap.min.js "></script>
		<!-- waves js -->
		<script
			src="<%=request.getContextPath()%>/resources/assets/pages/waves/js/waves.min.js"></script>
		<!-- jquery slimscroll js -->
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/resources/assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/assets/js/pcoded.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/assets/js/vertical/vertical-layout.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
		<!-- Custom js -->
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/resources/assets/js/script.js"></script>
</body>