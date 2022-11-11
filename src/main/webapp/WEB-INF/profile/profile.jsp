<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- userpage.jsp<br> -->
<%@ include file="../common/common.jsp" %>

<!DOCTYPE html>
<html lang="en">

<script type="text/javascript" src="<%= request.getContextPath() %>/resources/js/jquery.js"></script>
<script type="text/javascript">
function goFriendTab(){
	//alert(1);
	$("#friendTab").click();
	
}

function goPictureTab(){
	//alert(1);
	$("#pictureTab").click();
	
}
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

/* 프로파일 헤더 */
#profileHeader {
	height: 370px;
	background-image:
		url("<%=request.getContextPath()%>/resources/assets/images/members/${ member.background }");
	background-size: 1200px;
	background-position: center;
}

#profileHeader-profile {
	border-radius: 100px;
	margin-top: 110px;
	width: 200px;
	height: 200px;
}

#profileHeader-name {
	font-size: 40px;
	color: black;
	margin-left: 220px;
	margin-top: -70px;
}

#bgImgBtn {
	margin-left: 1000px;
	margin-top: -50px;
}

/* 프로파일 nav */
#mainNav{
	height: 60px;
}

#mainNavTab{
	margin-top: -20px;
}

#mainNavContent{
	width: 70%;
	margin-left: 150px;
}

/* 프로파일 컨텐트 */
#content1 {
	width: 500px;
}

#friendProfile {
	border-radius: 10px;
	width: 160px;
	height: 160px;
}

#friendProfile-td{
	padding-top: 10px;
	padding-left: 40px; 

}

#friendProfile2 {
	border-radius: 10px;
	width: 60px;
	height: 60px;
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
<!-- ### 사이드바 ### -->
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
										</c:if> 
										<c:if test="${ login.profile ne null }">
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
<!-- ### //사이드바 ### -->
					

<!-- ### 프로필 ### -->
					<div class="pcoded-content">
<!-- ### 프로필 헤더 ### -->
						<!-- Page-header start -->
						<div id="profileHeader" class="page-header">
							<div class="page-block">
								<div class="row align-items-center">
									<div class="col-md-8">
										<div class="page-header-title">
											<h5 class="m-b-10">
												<!-- class="img-80 img-radius" -->
												<a href="">
													<c:if test="${ member.profile eq null }">
														<img id="profileHeader-profile"
														src="<%= request.getContextPath() %>/resources/assets/images/members/profile.png"
														alt="User-Profile-Image">
													</c:if>
													<c:if test="${ member.profile ne null }"> 
														<img id="profileHeader-profile"
														src="<%= request.getContextPath() %>/resources/assets/images/members/${ member.profile }"
														alt="User-Profile-Image">
													</c:if>
												</a>
											</h5>
											<p id="profileHeader-name" class="m-b-0">${ member.name }</p>
											<c:if test="${ fn:contains(uwaits, login.no) }">
												<p id="bgImgBtn"><input type="button" value="신청 취소" class="btn btn-default waves-effect"
													onclick="javascript:location.href='withdraw.fr?no=${ member.no }'"></p>
											</c:if>
											<c:if test="${ fn:contains(ufriends, login.no) }">
												<p id="bgImgBtn"><input type="button" value="친구 끊기" class="btn btn-default waves-effect"
													onclick="javascript:location.href='cancel.fr?no=${ member.no }'"></p>
											</c:if>
											<c:if test="${ fn:contains(ufriends, login.no) eq false }">
												<c:if test="${ fn:contains(uwaits, login.no) eq false }">
													<p id="bgImgBtn"><input type="button" value="친구 신청" class="btn btn-primary waves-effect waves-light"
														onclick="javascript:location.href='request.fr?no=${ member.no }'"></p>
												</c:if>
											</c:if>
										</div>
									</div>
									<!-- <div class="col-md-4">
										<ul class="breadcrumb">
											<li class="breadcrumb-item"><a href="index.html"> <i
													class="fa fa-home"></i>
											</a></li>
											<li class="breadcrumb-item"><a href="#!">Sample page</a>
											</li>
										</ul>
									</div> -->
								</div>
							</div>
						</div>
						<!-- Page-header end -->
<!-- ### 2-1 끝 ### -->
<!-- ### //프로필 헤더 ### -->


<!-- ### 프로필 nav/컨텐트 ### -->
						<!-- nav -->
						<!-- Material tab card start -->
						<div class="card" id="mainNav">
							<div class="card-block">
								<!-- Nav tabs -->
								<ul class="nav nav-tabs md-tabs" role="tablist" id="mainNavTab">
									<li class="nav-item"><a class="nav-link active"
										data-toggle="tab" href="#home3" role="tab">게시물</a>
										<div class="slide"></div></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab"
										href="#profile3" role="tab">정보</a>
										<div class="slide"></div></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab"
										href="#messages3" id="friendTab" role="tab">친구</a>
										<div class="slide"></div></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab"
										href="#settings3" id="pictureTab" role="tab">사진</a>
										<div class="slide"></div></li>
								</ul>
							</div>
						</div>
						<!-- Material tab card end -->

						<!-- Tab panes -->
						<div class="tab-content card-block">
							<div class="tab-pane active" id="home3" role="tabpanel">
								<!-- 소개 -->
								<div id="content1" class="col-xl-6 col-md-12">
									<div class="card table-card">
										<div class="card-header">
											<h5>소개</h5>
										</div>
										<div class="card-block">
											<p>소개글 작성하기</p>
											<a href="profile.pro?no=6">### 6번 회원 프로필 ###</a>
										</div>
									</div>
								</div>
								<!-- 사진 -->
								<div id="content1" class="col-xl-6 col-md-12">
									<div class="card table-card">
										<div class="card-header">
											<h5>사진</h5>
											<div class="card-header-right">
												<a href="javascript:goPictureTab()"><font color="#4374D9">모든 사진 보기</font></a>
											</div>
										</div>
										<div class="card-block">
											<p>사진 리스트</p>
										</div>
									</div>
								</div>
								<!-- 친구 -->
								<div id="content1" class="col-xl-6 col-md-12">
									<div class="card table-card">
										<div class="card-header">
											<h5>친구</h5>
											<br> 친구 ${ fn:length(friendsList) }명
											<div class="card-header-right">
												<a href="javascript:goFriendTab()"><font color="#4374D9">모든 친구 보기</font></a>
											</div>
										</div>
										<div class="card-block">
											<div class="table-responsive">
												<table>
													<tbody>
														<tr>
														<c:forEach var="friend" items="${ friendsList }" varStatus="i">
															<c:if test="${ i.count <= 4 }">
																<td id="friendProfile-td">
																		<c:if test="${ friend.profile eq null }">
																			<c:if test="${ friend.no eq login.no }">
																				<a href="myprofile.pro"><img
																				id="friendProfile"
																				src="<%=request.getContextPath()%>/resources/assets/images/members/profile.png"
																				alt="User-Profile-Image"></a>
																			</c:if>
																			<c:if test="${ friend.no ne login.no }">
																				<a href="profile.pro?no=${ friend.no }"><img
																				id="friendProfile"
																				src="<%=request.getContextPath()%>/resources/assets/images/members/profile.png"
																				alt="User-Profile-Image"></a>
																			</c:if>
																		</c:if>
																		<c:if test="${ friend.profile ne null }">
																			<c:if test="${ friend.no eq login.no }">
																				<a href="myprofile.pro"><img
																				id="friendProfile"
																				src="<%= request.getContextPath() %>/resources/assets/images/members/${ friend.profile }"
																				alt="user image"
																				class="img-radius img-40 align-top m-r-15"></a>
																			</c:if>
																			<c:if test="${ friend.no ne login.no }">
																				<a href="profile.pro?no=${ friend.no }"><img
																				id="friendProfile"
																				src="<%= request.getContextPath() %>/resources/assets/images/members/${ friend.profile }"
																				alt="user image"
																				class="img-radius img-40 align-top m-r-15"></a>
																			</c:if>
																		</c:if>
																			<br><a href="profile.pro?no=${ friend.no }"><h6>${ friend.name }</h6></a>
																</td>
																<c:if test="${ i.count == 2 }">
																	</tr>
																	<tr>
																</c:if>
															</c:if>	
														</c:forEach>
													</tbody>
												</table>
												
												<c:if test="${ fn:length(friendsList) > 4 }">
													<hr>
													<div align="center">
														<a href="javascript:goFriendTab()"><font color="#4374D9">친구 더보기</font></a>
													</div>
												</c:if>

											</div>
										</div>
									</div>
								</div>
								<!-- //친구 -->
								

							</div>
							<div class="tab-pane" id="profile3" role="tabpanel">
								<p class="m-0">
								<div class="card" id="mainNavContent">
									<div class="card-block">
										<h5>Simple Breadcrumb</h5>
										
									</div>
									
								</div>
								</p>
							</div>
							
							<div class="tab-pane" id="messages3" role="tabpanel">
								<!-- 친구 -->
								<div class="card" id="mainNavContent">
									<div class="card-block">
										<h5>친구</h5>
										
										<div class="card-block">
											<div class="table-responsive">
												<table class="table table-hover m-b-0 without-header">
													<tbody>
														<c:if test="${ friendsList eq null }">
															<center><h6>표시할 친구가 없습니다</h6></center>
														</c:if>
														<c:forEach var="friend" items="${ friendsList }">
															<tr>
																<td>
																	<div class="d-inline-block align-middle">
																		<c:if test="${ friend.profile eq null }">
																			<c:if test="${ friend.no eq login.no }"> <!-- 로그인 유저인 경우 -->
																				<a href="myprofile.pro"><img
																				id="friendProfile2"
																				src="<%=request.getContextPath()%>/resources/assets/images/members/profile.png"
																				alt="User-Profile-Image"></a>
																			</c:if>
																			<c:if test="${ friend.no ne login.no }"> <!-- 로그인 유저 아닌 경우 -->
																				<a href="profile.pro?no=${ friend.no }"><img
																				id="friendProfile2"
																				src="<%=request.getContextPath()%>/resources/assets/images/members/profile.png"
																				alt="User-Profile-Image"></a>
																			</c:if>
																		</c:if>
																		<c:if test="${ friend.profile ne null }">
																			<c:if test="${ friend.no eq login.no }"> <!-- 로그인 유저인 경우 -->
																				<a href="myprofile.pro"><img
																				id="friendProfile2"
																				src="<%=request.getContextPath()%>/resources/assets/images/members/${ friend.profile }"
																				alt="User-Profile-Image"></a>
																			</c:if>
																			<c:if test="${ friend.no ne login.no }"> <!-- 로그인 유저 아닌 경우 -->
																				<a href="profile.pro?no=${ friend.no }"><img
																				id="friendProfile2"
																				src="<%=request.getContextPath()%>/resources/assets/images/members/${ friend.profile }"
																				alt="User-Profile-Image"></a>
																			</c:if>
																		</c:if>
																		<div class="d-inline-block">
																			<h6>
																				&nbsp;&nbsp;&nbsp;<a href="profile.pro?no=${ friend.no }">${ friend.name }</a>
																			</h6>
																			<!-- <p class="text-muted m-b-0">Sales executive , NY</p> -->
																		</div>
																	</div>
																</td>
																<td class="text-right">
																	<h6 class="f-w-700">
																		
																		<i class="fas fa-level-down-alt text-c-red m-l-10"></i>
																	</h6>
																</td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
										</div>
										
									</div>
								</div>
								<!-- //친구 -->	

							</div>
							<div class="tab-pane" id="settings3" role="tabpanel">
								<p class="m-0">
								<div class="card" id="mainNavContent">
									<div class="card-block">
										<h5>Simple Breadcrumb</h5>
										
									</div>
									
								</div>
								</p>
							</div>
						</div>
						
					</div>
<!-- ### //프로필 컨텐트 ### -->
<!-- ### // nav 이외 영역 ###	 -->
					<div class="card"></div>
					<div class="card"></div>
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

</html>