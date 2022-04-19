<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/resources/js/member/join.js?ver=21" type="text/javascript"></script>
<script src="/resources/js/member/jquery.validate.js" type="text/javascript"></script>
<!-- <script src="http://developers.kakao.com/sdk/js/kakao.min.js"></script> -->

<!-- <script src="/resources/js/kakao/kakao_api.js" type="text/javascript"></script> -->

<style type="text/css">
.basic{
	margin-top: 10%;
}
.join{
	text-align: center;
}
.btn-style{
	background: #014099;
	color: white;
	border-radius: 6px;
	border-style: none;
	width: 120px;
	height: 35px;
	line-height: 17.5px;
}
input[required]{
	width: 500px;
}
input{
	border: none;
	background-color: #FAFAFA;
}
.text-bold{
	font-weight: bold;
}
.joinTable{
	width: 900px;
	margin: 0 auto;
}
.pilsu{
	width: 900px;
	margin: 0 auto;
}
.joinBtn{
	margin-top: 50px;
	width: 222px;
	height: 46px;
}
.searchBtn{
	background-color: #6c757d;
}
.searchBtn:hover{
	background-color: #333333;
}
</style>
</head>
<body>
<div class="audi3040 justify-content-center">
<!-- jumbotron -->
<div class="jumbotron jumbotron-fluid headJubmotron">
  <div class="container">
    <h1 class="display-4 h1Jumbotron">회원가입</h1>
    <p class="lead pJumbotron" >기본 정보</p>
  </div>
</div>
<hr style="margin-bottom: 30px;">
<!-- jumbotron 끝 -->
<form action="/member/insertMember" method="post" id="joinForm">
<table class="table joinTable">
  <thead>
    <tr>
	    <div class="col text-right pilsu">
			<h6 class="text-bold">
			<span style="color: red;">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check" viewBox="0 0 16 16">
					<path d="M10.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.267.267 0 0 1 .02-.022z"/>
				</svg>	
			</span>
				필수항목입니다
			</h6>
		</div>
   </tr>
  </thead>
  <tbody>
    <tr>
		<td class="text-bold">
		아이디(이메일)
		<span style="color: red;">
		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check" viewBox="0 0 16 16">
				<path d="M10.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.267.267 0 0 1 .02-.022z"/>
		</svg>	
		</span>
		</td>
		<td>
		<input type="text" id="memberEmail" name="memberEmail" value="${kakaoEmail }" required>
		<input type="checkbox" id="overlapCheck" name="overlapCheck"> 중복 체크
		</td>
	</tr>
	<tr>
		<td class="text-bold">
		비밀번호
		<span style="color: red;">
		<svg xmlns="http://www.w3.org/2000/svg" width="18" height="16" fill="currentColor" class="bi bi-check" viewBox="0 0 16 16">
				<path d="M10.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.267.267 0 0 1 .02-.022z"/>
		</svg>	
		</span>
		</td>
		<td><input type="password" id="memberPassword" name="memberPassword" required style="width: 500px;"></td>
	</tr>
	<tr>
		<td class="text-bold">
		비밀번호 확인
		<span style="color: red;">
		<svg xmlns="http://www.w3.org/2000/svg" width="18" height="16" fill="currentColor" class="bi bi-check" viewBox="0 0 16 16">
				<path d="M10.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.267.267 0 0 1 .02-.022z"/>
		</svg>	
		</span>
		</td>
		<td><input type="password" id="memberPassword2" name="memberPassword2" required style="width: 500px;"></td>
	</tr>
	<tr>
		<td class="text-bold">
			이름
			<span style="color: red;">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check" viewBox="0 0 16 16">
					<path d="M10.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.267.267 0 0 1 .02-.022z"/>
			</svg>	
			</span>
			</td>
			<td><input type="text" id="memberName" name="memberName" required></td>
		</tr>
		<tr>
			<td class="text-bold">
			주소
			<span style="color: red;">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check" viewBox="0 0 16 16">
					<path d="M10.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.267.267 0 0 1 .02-.022z"/>
			</svg>	
			</span>
			</td>
			<td>
			<input type="text" id="memberAddr" name="memberAddr" readonly onclick="openPostCode();" required>
			<button class="btn btn-primary btn-style searchBtn" type="button" onclick="openPostCode();">주소검색</button>
			</td>
		</tr>
		<tr>
			<td class="text-bold">
			상세주소
			<span style="color: red;">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check" viewBox="0 0 16 16">
					<path d="M10.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.267.267 0 0 1 .02-.022z"/>
			</svg>	
			</span>
			</td>
			<td><input type="text" id="memberAddrDetail" name="memberAddrDetail"></td>
		</tr>
		<tr>
			<td class="text-bold">
			휴대전화
			<span style="color: red;">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check" viewBox="0 0 16 16">
					<path d="M10.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.267.267 0 0 1 .02-.022z"/>
			</svg>	
			</span>
			</td>
			<td><input type="text" id="memberTel" name="memberTel" required>(ex. 01011112222)</td>
		</tr>
		<tr>
			<td class="text-bold">차량번호</td>
			<td><input type="text" id="memberCarNum" name="memberCarNum">(ex. 1234)</td>
		</tr>
  </tbody>
</table>
<div class="join">
	<button class="btn btn-primary btn-style joinBtn" type="submit">가입하기</button>
</div>
</form>
</div>
</body>
</html>