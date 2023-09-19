<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>RUSH</title>

	<link rel="stylesheet" href="/css/main.css">
	<link rel="stylesheet" href="/css/board/post.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.7.0.js"></script>

	<style>
		* {
			box-sizing: border-box;
			margin: 0px;
			padding: 0px;
			text-decoration: none;
			list-style: none;
		}

		.container {
			width: 100%;
		}

		a {
			text-decoration: none;
		}

		.dropdown-menu[data-bs-popper] {
			right: 0;
			left: auto;
		}

		.body_guide {
			max-width: 1300px;
			width: 100%;
			height: 100%;
			margin: auto;
		}

		.w15 {
			width: 15%;
		}

		.w20 {
			width: 20%;
		}

		.w35 {
			width: 35%;
		}

		.w45 {
			width: 45%;
		}

		.ml20 {
			margin-left: 20px;
		}

		.mt200 {
			margin-top: 200px;
		}

		.mt80 {
			margin-top: 80px;
		}

		.mt10 {
			margin-top: 10px;
		}

		.mb200 {
			margin-bottom: 200px;
		}

		.mb50 {
			margin-bottom: 50px;
		}

		.mb40 {
			margin-bottom: 40px;
		}

		.mb30 {
			margin-bottom: 30px;
		}

		.mb15 {
			margin-bottom: 15px;
		}

		.mb10 {
			margin-bottom: 10px;
		}


		.ptb50 {
			padding: 30px 0px;
		}

		.ptb50 {
			padding: 50px 0px;
		}

		.pb180 {
			padding-bottom: 180px;
		}

		.postTop {
			min-height: 190px;
			padding: 25px 15px;
		}

		#postContents {
			min-height: 470px;
			padding: 0px 15px;
		}


		.postBtns {
			margin: 10px 0px 0px 20px;
			border: 0px;
			border-radius: 10px;
			width: 100px;
			height: 50px;
		}

		.reply,
		.nestedReply {
			border: 1px solid #7d7d7d;
			padding: 15px 0px 0px 15px;
		}


		.replyInsertBtn {
			border: 0px;
			background-color: #ffffff00;
			padding: 0px 25px 25px 0px;
		}

		.isWriter {
			border: 1px solid #5d6ce1;
			border-radius: 10px;
			margin-left: 10px;
			width: 80px;
			height: 35px;
			display: flex;
			align-items: center;
			justify-content: center;
		}
	</style>
</head>


<body>
	<div class="container-fluid p-0">
		<div class="header bColorBlack">
			<div class="header_guide">
				<a href="#">
					<div class="logo fontLogo colorWhite">RUSH</div>
				</a>
				<nav class="navbar navbar-expand navbar-light colorWhite">
					<div class="container-fluid p-0">
						<div class="collapse navbar-collapse w-100 g-0 m-0" id="navbarNavDropdown">
							<ul class="navbar-nav row g-0 w-100">
								<li class="nav-item dropdown col-3 text-end"><a class="nav-link text-white fontEnglish"
										href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown"
										aria-expanded="false"> GAME </a>
									<ul class="dropdown-menu p-0" aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item fontEnglish" href="#">Action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Another
												action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Something
												else here</a></li>
									</ul>
								</li>
								<li class="nav-item dropdown col-3 text-end"><a class="nav-link text-white fontEnglish"
										href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown"
										aria-expanded="false"> AWARDS </a>
									<ul class="dropdown-menu p-0" aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item fontEnglish" href="#">Action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Another
												action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Something
												else here</a></li>
									</ul>
								</li>
								<li class="nav-item dropdown col-3 text-end"><a class="nav-link text-white fontEnglish"
										href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown"
										aria-expanded="false"> BOARD </a>
									<ul class="dropdown-menu p-0" aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item fontEnglish" href="#">Action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Another
												action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Something
												else here</a></li>
									</ul>
								</li>
								<li class="nav-item dropdown col-3 text-end"><a class="nav-link text-white fontEnglish"
										href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown"
										aria-expanded="false"> LOGIN </a>
									<ul class="dropdown-menu p-0" aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item fontEnglish" href="#">Action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Another
												action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Something
												else here</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
		</div>

		<div class="body">
			<div class="body_guide">
				<div class="row g-0 mb40">
					<div class="col-12 common fontEnglish fw700 fs40 mt80 mb50">자유게시판</div>
					<div class="col-12">
						<div class="row g-0 post">
							<div class="col-12 postTop">
								<div class="col-12 fw400 fs35 mb15" id="postTitle">제목 영역입니다.</div>
								<div class="col-12 fontEnglish fw400 fs25 mb10" id="postWriter">writer01</div>
								<div class="col-12 fw400 fs20 colorDarkgray" id="postDetailInfo">
									2023.09.17 18:41 조회 0
								</div>
							</div>
							<hr>
							<div class="col-12 fw400 fs25" id="postContents">내용 영역입니다.</div>
						</div>
					</div>
					<div class="col-2 fw400 fs20 mt10">첨부 파일</div>
					<div class="col-4 fw400 fs20 colorBlue mt10">test.txt</div>
					<div class="col-6 d-flex justify-content-end fw400 fs20">
						<button class="postBtns bColorGreen">수정</button>
						<button class="postBtns bColorGreen">삭제</button>
						<button class="postBtns bColorBlue colorWhite">목록</button>
					</div>
				</div>

				<div class="row g-0">
					<div class="col-12 common fontEnglish fw700 fs40 mb40">댓글</div>
					<div class="col-12 mb30">
						<form action="" method="post" id="frm">
							<div class="row g-0 replyInput">
								<div class="col-10 col-lg-11" id="replyInsertTxt" contenteditable></div>
								<textarea id="replyTxt"></textarea>
								<div class="col-2 col-lg-1 btnCover"><button
										class="fw400 fs25 colorDarkgray replyInsertBtn">등록</button></div>
							</div>
						</form>
					</div>

					<div class="col-12">
						<div class="row g-0 replys mb200">
							<div class="col-12 reply">
								<div class="row g-0">
									<div class="col-10">
										<div class="d-flex">
											<div class="writer fw500 fs25 mb10">writer01</div>
											<div class="isWriter colorBlue fw400 fs20">작성자</div>
										</div>
										<div class="contents fw400 fs25 mb10">댓글 내용 영역입니다.</div>
										<div class="replyDetailInfo fw400 fs20 colorDarkgray">2023.09.17 &nbsp;18:41
											&nbsp;<a href="#" class="nestedReplyBtn colorDarkgray">답글 쓰기</a></div>
									</div>
									<div class="col-2 replyBtns">
										<button class="replyUpdate bColorGreen fw400 fs17">수정</button>
										<button class="replyDelete bColorGreen fw400 fs17">삭제</button>
									</div>
								</div>

							</div>
							<div class="col-12 reply">
								<div class="writer fw500 fs25 mb10">writer01</div>
								<div class="contents fw400 fs25 mb10">댓글 내용 영역입니다.</div>
								<div class="replyDetailInfo fw400 fs20 colorDarkgray">2023.09.17 &nbsp;18:41 &nbsp;<a
										href="#" class="nestedReplyBtn colorDarkgray">답글 쓰기</a></div>
							</div>
							<div class="col-12 nestedReply">
								<div class="row g-0">
									<div class="col-1 d-flex justify-content-center align-items-center"><i
											class="fa-solid fa-l fa-xl"></i></div>
									<div class="col-11">
										<div class="writer fw500 fs25 mb10">writer02</div>
										<div class="contents fw400 fs25 mb10">댓글 내용 영역입니다.</div>
										<div class="replyDetailInfo fw400 fs20 colorDarkgray">2023.09.17 &nbsp;18:41
											&nbsp;<a href="#" class="nestedReplyBtn colorDarkgray">답글 쓰기</a></div>
									</div>
								</div>
							</div>

							<!-- 답댓에 답댓을 다는 경우, 계속 들여쓰기 할 수는 없으니까, 답답댓부터는 답댓을 받는 이의 아이디를 @id 이런 식으로 태그처럼 보여주자! 추후에 설명하기 -->
						</div>

					</div>
				</div>


			</div>
		</div>




		<a href="#">
			<div class="upArrow bColorPink colorWhite">
				<i class="fa-solid fa-arrow-up-long"></i>
			</div>
		</a>

		<div class="footer bColorBlack">
			<div class="footer_guide">
				<div class="footer_logo fontLogo colorWhite">RUSH</div>
				<div class="copy fontEnglish colorWhite">COPYRIGHT © SKY. ALL
					RIGHT RESERVED</div>
				<div class="footer_contents">
					<div class="about conDiv fontEnglish colorWhite">
						<div class="footer_title fontEnglish">ABOUT US</div>
						<div class="footer_con ">
							<div class="con">팀명 :</div>
							<div class="encon">SKY</div>
						</div>
					</div>
					<div class="office conDiv fontEnglish colorWhite">
						<div class="footer_title fontEnglish">OFFICE</div>
						<div class="footer_con">
							<div class="con">
								충청남도 천안시 서북구<br> 천안대로 1223-24
							</div>
						</div>
					</div>
					<div class="contact conDiv fontEnglish colorWhite">
						<div class="footer_title fontEnglish">CONTACT US</div>
						<div class="footer_con fontEnglish">
							<div class="con fontEnglish">a@naver.com</div>
							<div class="con fontEnglish">01012345678</div>
						</div>
					</div>
					<div class="provision conDiv fontEnglish colorWhite">
						<div class="footer_title fontEnglish">PROVISION</div>
						<div class="footer_con">
							<div class="con">개인정보 처리방침</div>
							<div class="con">서비스 이용약관</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

</body>

</html>