<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>
<!-- registerForm.jsp<br> -->

<script type="text/javascript" src="<%= request.getContextPath() %>/resources/js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//alert("ready");
		isChk = "";
		
		//중복확인 버튼 눌렀을 때
		$("#duplChk").click(function(){
			//alert("중복확인");
			isChk = "yes";
			
			$.ajax({
				url : "email_check_proc.mem",
				data : ({
					inputemail : $("input[name='email']").val()
				}),
				success : function(data){
					//alert(data);
					if(data == "can"){
						$("#duplRes").empty(); //자식 태그만 지우기
						$("#duplRes").append("<br><font color='blue'>사용할 수 있는 아이디</font>"); //자식 태그로 붙이기
					}else{
						$("#duplRes").empty();
						$("#duplRes").append("<br><font color='red'>사용할 수 없는 아이디</font>");
						isChk = "";
					}
				}
			});//ajax
			
		});//click
		
		//키다운했을 때
		$("input[name='email']").keydown(function(){
			//alert("키다운");
			isChk = "";
			$("#duplRes").empty();
		});
		
		//submit 버튼 눌렀을 때
		$("#btnSubmit").click(function(){
			//alert("submit");
			if(isChk == ""){
				alert("이메일 중복확인을 하세요.");
				return false;
			}
			
			//비밀번호가 일치하지 않을 때
			if($("input[name='password']").val() != $("input[name='passwordChk']").val()){
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			}
			
		});
		
	});//ready
	

</script>


<style>
.err{
		font-size: 9pt;
		color : red;
		font-weight: bold;
}
</style>


<!DOCTYPE html>
<html lang="en">

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
      <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />

      <meta name="keywords" content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
      <meta name="author" content="Codedthemes" />
      <!-- Favicon icon -->

      <link rel="icon" href="<%= request.getContextPath() %>/resources/assets/images/favicon.ico" type="image/x-icon">
      <!-- Google font-->
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
      <!-- Required Fremwork -->
      <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/assets/css/bootstrap/css/bootstrap.min.css">
      <!-- waves.css -->
      <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/assets/pages/waves/css/waves.min.css" type="text/css" media="all">
      <!-- themify-icons line icon -->
      <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/assets/icon/themify-icons/themify-icons.css">
      <!-- ico font -->
      <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/assets/icon/icofont/css/icofont.css">
      <!-- Font Awesome -->
      <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/assets/icon/font-awesome/css/font-awesome.min.css">
      <!-- Style.css -->
      <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/assets/css/style.css">
  </head>

  <body themebg-pattern="theme1">
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
  <section class="login-block">
        <!-- Container-fluid starts -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <form:form commandName="memberBean" class="md-float-material form-material" action="register.mem" method="post">
                        <div class="text-center">
                            <img src="<%= request.getContextPath() %>/resources/assets/images/logo.png" alt="logo.png">
                        </div>
                        <div class="auth-box card">
                            <div class="card-block">
                                <div class="row m-b-20">
                                    <div class="col-md-12">
                                        <h3 class="text-center txt-primary">회원가입</h3>
                                    </div>
                                </div>

                                
                                <div class="form-group form-primary">
                                    <table>
                                    	<tr>
                                    		<td>이메일</td>
                                    		<td><input type="text" name="email" value="taylor@gmail.com">
                                    		<input type="button" id="duplChk" value="중복확인">
                                    		<span id="duplRes"></span></td>
                                    	</tr>
                                    	<tr>
                                    		<td>이름</td>
                                    		<td><input type="text" name="name" value="테일러"></td>
                                    	</tr>
                                    	<tr>
                                    		<td>비밀번호</td>
                                    		<td><input type="text" name="password" value="1234"></td>
                                    	</tr>
                                    	<tr>
                                    		<td>비밀번호 확인</td>
                                    		<td><input type="text" name="passwordChk"></td>
                                    	</tr>
                                    	<tr>
                                    		<td>성별</td>
                                    		<td><input type="radio" name="gender" value="man" checked="checked">남
                                    		<input type="radio" name="gender" value="woman">여</td>
                                    	</tr>
                                    	<tr>
                                    		<td>생년월일</td>
                                    		<td><input type="date" name="b_date"><br>
                                    		<form:errors cssClass="err" path="b_date"></form:errors></td>
                                    	</tr>
                                    	<tr>
                                    		<td>핸드폰번호</td>
                                    		<td><input type="text" name="hp1" size="3" value="010">-
                                    		<input type="text" name="hp2" size="4" value="9876">-
                                    		<input type="text" name="hp3" size="4" value=""><br>
                                    		<form:errors cssClass="err" path="hp3"></form:errors></td>
                                    	</tr>
                                    	<tr>
                                    		<td>주소</td>
                                    		<td><input type="text" name="addr1" value="서울시"><br>
                                    		<input type="text" name="addr2" value="마포구"><br>
                                    		<input type="text" name="addr3" value="중앙빌딩"></td>
                                    	</tr>
                                    </table>
                                </div>
                                
                                <!-- <div class="form-group form-primary">
                                    <input type="text" name="email" class="form-control">
                                    <span class="form-bar"></span>
                                    <label class="float-label">이메일</label>
                                </div>
                                <div class="form-group form-primary">
                                    <input type="text" name="name" class="form-control">
                                    <span class="form-bar"></span>
                                    <label class="float-label">이름</label>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input type="password" name="passwd" class="form-control">
                                            <span class="form-bar"></span>
                                            <label class="float-label">비밀번호</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input type="password" name="confirm-password" class="form-control">
                                            <span class="form-bar"></span>
                                            <label class="float-label">비밀번호 확인</label>
                                        </div>
                                    </div>
                                </div> -->
                                
                                
                                <div class="row m-t-25 text-left">
                                    <div class="col-md-12">
                                        <div class="checkbox-fade fade-in-primary">
                                            <label>
                                                <input type="checkbox" value="">
                                                <span class="cr"><i class="cr-icon icofont icofont-ui-check txt-primary"></i></span>
                                                <span class="text-inverse">I read and accept <a href="#">Terms &amp; Conditions.</a></span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="checkbox-fade fade-in-primary">
                                            <label>
                                                <input type="checkbox" value="">
                                                <span class="cr"><i class="cr-icon icofont icofont-ui-check txt-primary"></i></span>
                                                <span class="text-inverse">Send me the <a href="#!">Newsletter</a> weekly.</span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row m-t-30">
                                    <div class="col-md-12">
                                        <button type="submit" id="btnSubmit" class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">회원가입</button>
                                    </div>
                                </div>
                                <hr/>
                                <div class="row">
                                    <div class="col-md-10">
                                        <p class="text-inverse text-left m-b-0">Thank you.</p>
                                        <p class="text-inverse text-left"><a href="index.html"><b>Back to website</b></a></p>
                                    </div>
                                    <div class="col-md-2">
                                        <img src="<%= request.getContextPath() %>/resources/assets/images/auth/Logo-small-bottom.png" alt="small-logo.png">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form:form>
                </div>
                <!-- end of col-sm-12 -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container-fluid -->
    </section>
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
<script type="text/javascript" src="<%= request.getContextPath() %>/resources/assets/js/jquery/jquery.min.js "></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/resources/assets/js/jquery-ui/jquery-ui.min.js "></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/resources/assets/js/popper.js/popper.min.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/resources/assets/js/bootstrap/js/bootstrap.min.js "></script>
<!-- waves js -->
<script src="<%= request.getContextPath() %>/resources/assets/pages/waves/js/waves.min.js"></script>
<!-- jquery slimscroll js -->
<script type="text/javascript" src="<%= request.getContextPath() %>/resources/assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/resources/assets/js/common-pages.js"></script>
</body>

</html>
