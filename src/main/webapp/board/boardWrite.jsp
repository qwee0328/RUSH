<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RUSH-게시글 작성</title>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>

<!-- 스타일 시트 & js -->
<link rel="stylesheet" href="/css/main.css">
<link rel="stylesheet" href="/css/board/boardWrite.css">
<script type="text/javascript" src="/js/board/summernote_editor.js"></script>

<!-- 부트스트랩 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

<!-- summernote -->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<!-- Header Style -> 부트스트랩 속성 제거 -->
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

/*

.writebtn {
	background-color: #ccf423;
}

*/
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
						<div class="collapse navbar-collapse w-100 g-0 m-0"
							id="navbarNavDropdown">
							<ul class="navbar-nav row g-0 w-100">
								<li class="nav-item dropdown col-3 text-end"><a
									class="nav-link text-white fontEnglish" href="#"
									id="navbarDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> GAME </a>
									<ul class="dropdown-menu p-0"
										aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item fontEnglish" href="#">Action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Another
												action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Something
												else here</a></li>
									</ul></li>
								<li class="nav-item dropdown col-3 text-end"><a
									class="nav-link text-white fontEnglish" href="#"
									id="navbarDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> AWARDS </a>
									<ul class="dropdown-menu p-0"
										aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item fontEnglish" href="#">Action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Another
												action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Something
												else here</a></li>
									</ul></li>
								<li class="nav-item dropdown col-3 text-end"><a
									class="nav-link text-white fontEnglish" href="#"
									id="navbarDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> BOARD </a>
									<ul class="dropdown-menu p-0"
										aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item fontEnglish" href="#">Action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Another
												action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Something
												else here</a></li>
									</ul></li>
								<li class="nav-item dropdown col-3 text-end"><a
									class="nav-link text-white fontEnglish" href="#"
									id="navbarDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> LOGIN </a>
									<ul class="dropdown-menu p-0"
										aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item fontEnglish" href="#">Action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Another
												action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Something
												else here</a></li>
									</ul></li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
		</div>
		<div class="boardWrite">
			<div class="boardWrite_guide">
				<c:choose>
					<c:when test="${menu == 'qna'}">
						<div class="container row g-0 p-0">
							<form action="/insert.qna" method="post"
								enctype="multipart/form-data">
								<!-- 카테고리 숨겨놓음 -->
								<input type="hidden" value="${category }" name="category">
								<div class="qna col-12">
									<h2 class="fontEnglish">Q&A - 게시글 작성</h2>
								</div>
								<div class="titleBox col-12">
									<input class="inputTitle" type="text" name="title"
										placeholder="제목을 입력하세요">
								</div>
								<div class="col-12 fileBox">
									<button type="button" id="btnAdd">+</button>
									<span>파일첨부</span>
									<div id="fileContainer"></div>
								</div>
								<div class="col-12">
									<textarea id="summernote" class="content" rows="35" cols="100"
										placeholder="내용을 입력하세요." name="contents"></textarea>
								</div>
								<div class="row bottom">
									<div class="col-11">
										<input id="secret" class="screteChk" type="checkbox">
										<input id="secret_hidden" class="screteChk" type="hidden"
											name="secret" value="false"> <label for="secret"
											class="colorDarkgray">비밀글 설정하기</label>

									</div>
									<script>
										document.getElementById("secret").onchange = function() {
											if ($("#secret").is(":checked")) {
												$("#secret_hidden").val("true");
												console.log($("#secret_hidden")
														.val());
											} else {
												$("#secret_hidden")
														.val("false");
												console.log($("#secret_hidden")
														.val());
											}
										};
										/* $("#secret").("change",function(){
										    if($("#secret").is(":checked")){
										    	$("#secret").val("true");
										    	console.log($("#secret").val());
										    }
										    else{
										    	$("#secret").val("false");
										    	console.log($("#secret").val());
										    }
										}); */
									</script>

									<input class="submitBtn col-1" type="submit" value="작성">
								</div>
							</form>
						</div>
					</c:when>
					<c:otherwise>
						<form action="/insert.board?category=${category }" method="post" enctype="multipart/form-data">
							<div class="writeTitle">자유게시글 작성</div>
							<input type="text" class="inputTitle" name="title"
								placeholder="제목을 입력하세요">
							<div class="fileBox">
								<input type="button" id="btnAdd" class="writebtn bColorGreen"
									value="+">
								</button>
								<span>파일첨부</span>
								<div id="fileContainer"></div>
							</div>
							<textarea id="summernote" class="content" rows="35" cols="100"
								placeholder="내용을 입력하세요." name="contents"></textarea>
							<div class="writeBox">
								<a href="/listing.board?category=${category }&cpage=1"><input class="writebtn bColorGreen" type="button" value="목록으로"></a>
								<input class="writebtn bColorGreen" type="submit" value="작성">
							</div>
			</div>
			</form>
			</c:otherwise>
			</c:choose>
		</div>
	</div>

	<div class="footer bColorBlack">
		<div class="footer_guide">
			<div class="footer_logo fontLogo colorWhite">RUSH</div>
			<div class="copy fontEnglish colorWhite">COPYRIGHT © SKY. ALL
				RIGHT RESERVED</div>
			<div class="footer_contents">
				<div class="about conDiv fontEnglish">
					<div class="footer_title fontEnglish colorWhite">ABOUT US</div>
					<div class="footer_con ">
						<div class="con colorWhite">팀명 :</div>
						<div class="encon colorWhite">SKY</div>
					</div>
				</div>
				<div class="office conDiv fontEnglish">
					<div class="footer_title fontEnglish colorWhite">OFFICE</div>
					<div class="footer_con">
						<div class="con colorWhite">충청남도 천안시 서북구 천안대로 1223-24</div>
					</div>
				</div>
				<div class="contact conDiv fontEnglish">
					<div class="footer_title fontEnglish colorWhite">CONTACT US</div>
					<div class="footer_con fontEnglish">
						<div class="con fontEnglish colorWhite">a@naver.com</div>
						<div class="con fontEnglish colorWhite">01012345678</div>
					</div>
				</div>
				<div class="provision conDiv fontEnglish">
					<div class="footer_title fontEnglish colorWhite">PROVISION</div>
					<div class="footer_con">
						<div class="con colorWhite">개인정보 처리방침</div>
						<div class="con colorWhite">서비스 이용약관</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	</div>
</body>
</html>