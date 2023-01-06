<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	
	<title>Insert title here</title>
	<style>
		#outer {
			width: 1200px;
			height: 300px;
			margin: auto;
		}

		#outer > .header {
			float: left;
			height: 200px;

		}

		#logo-area {
			width: 400px;
		}

		#search-area {
			width: 400px;
		}

		#login-area {
			width: 400px;
		}

		#nav-bar {
			width: 1200px;
			height: 100px;
			margin: auto;
		}

		#nav-bar ul {
			list-style: none;
			display: block;

		}

		#nav-bar ul>li {
			float: left;
			margin-left: 30px;
		}

		#nav-bar ul>li>a {
			text-decoration: none;
			color: black;
			font-size: 25px;

		}
		

		
		
	</style>

</head>

<body>

	<div id="outer">
		<div class="header" id="logo-area">
			<a href="${ request.getContextPath()}/billage/"><img>로고넣자</a>
			<!-- main.ma -->
		</div>

		<div class="header" id="search-area">
			<input type="text" />
			<input type="button" value="검색" />
		</div>

		<div class="header" id="login-area">
			<div>
				<a id="login-form-btn">회원가입</a>
				<a href="#">로그인하기</a>
			</div>
		</div>


		<div id="nav-bar">
			<ul>
				<li><a href="list.gr">모임</a></li>
				<li><a href="list.nv">연재</a></li>
				<li><a href="#">대여</a></li>
				<li><a href="list.re">리뷰</a></li>
				<li><a href="list.dr">추첨</a></li>
				<li><a href="list.ac">경매</a></li>
				<li><a href="list.ud">중고</a></li>
				<li><a href="#">마을</a></li>
				<li><a href="admin.ad">임시관리자</a></li>
			</ul>
		</div>


	</div>
	<script>
		$(function(){
			$('#login-form-btn').click(function(){
				$('#login-area-modal').fadeIn();
			})
			
			$('#close-btn').click(function(){
				$('#login-area-modal').fadeOut();
			})
			
			
			
		});
	
	</script>

	<div id="login-area-modal" style="display:none;">
		<button id="close-btn"> X </button>
		<form action="doJoin" method="POST" class="joinForm" onsubmit="DoJoinForm__submit(this); return false;">
	                                                                                               
	      <h2>회원가입</h2>
	      
	      <div class="textForm">
	        <input name="loginId" type="text" class="id" placeholder="아이디">
	        </input>
	      </div>
	      
	      <div class="textForm">
	        <input name="loginPw" type="password" class="pw" placeholder="비밀번호">
	      </div>
	      
	       <div class="textForm">
	        <input name="loginPwConfirm" type="password" class="pw" placeholder="비밀번호 확인">
	      </div>
	      
	      <div class="textForm">
	        <input name="name" type="password" class="name" placeholder="이름">
	      </div>
	      
	       <div class="textForm">
	        <input name="email" type="text" class="email" placeholder="이메일">
	      </div>
	      
	      <div class="textForm">
	        <input name="nickname" type="text" class="nickname" placeholder="닉네임">
	      </div>
	      
	      <div class="textForm">
	        <input name="phone" type="text" class="cellphoneNo" placeholder="전화번호">
	      </div>
	      
	      <div class="textForm">
	        <input name="birthDate" type="text" class="cellphoneNo" placeholder="생년월일 6자를 입력">
	      </div>
	      <div class="textForm">
	        
	        남<input name="gender" type="radio" class="cellphoneNo">
	        여<input name="gender" type="radio" class="cellphoneNo">
	        
	      </div>
	      
	      <div class="textForm">
	        <input name="address" type="text" class="name" placeholder="주소를 입력해주세요."><button type="button">주소찾기</button>
	      </div>
	      
	       <div class="textForm">
	        <input name="detailAddress" type="text" class="name" placeholder="주소를 입력해주세요.">
	      </div>
	      
	      <input type="submit" class="btn" value="J O I N"/>
	    </form>
	</div>






</body>

</html>