<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반 회원 모임페이지</title>

<style>
	#all-group-general{ width:1200px; margin:auto; }
	#general-area th,td{text-align : center;}
	
</style>

</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<jsp:include page="../user/myPageBar.jsp" />
	
	<div id="all-group-general">
		<h1>${ loginUser.nickname }의 참여모임 리스트입니다. </h1>
		<%-- 모임에 대한 값이 있으면 list 없으면 참여중인 모임이 없습니다. core로 조건문 걸어서 생성하기   --%>
		
		나중에 로그인회원 등급에 따라서 보일 수 있게 수정 
		<br>
		<!-- 
		<c:if test="${ loginUser.userGrade ge 4 }">
		</c:if>
		
		 -->
		<button onclick="location.href='admin.cl';">모임 개설자 모임 관리 페이지 가기</button> <!-- 클릭시 모임 개설 페이지 이동  -->
		|
		<button onclick="location.href='enrollForm.cl';">모임 개설하기</button> <!-- 클릭시 모임 개설 페이지 이동  -->
		<br><br><br>
		
		<table id="general-area" border="1">
			<thead>
				<tr>
					<th>순번</th>
					<th>참여모임썸네일</th>
					<th>참여모임 이름 </th>
					<th>모임 중심 지역</th>
					<th>모임 가입 일자</th>
					<th>회원 수 </th>
					<th>참가유형</th>
					<th>모임탈퇴</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ clubList }" var="c" varStatus="status">
					<tr>
						<td>${ status.index + 1}</td>
						<c:choose>
							<c:when test="${ !empty c.clubImg  }">
								<td><img width="150px" height="150px" src="${ c.clubImg }"></td>
							</c:when>
							<c:otherwise>
								<td><img width="150px" height="150px" src="resources/images/plus.png"></td>
							</c:otherwise>
						</c:choose>
						<td onclick="goDetail(${ c.clubNo },${ c.newCount });">${ c.clubName }</td>
						<td>${ c.clubLocation }</td>
						<td>${ c.enrollDate }</td>
						<td>${ c.memCount }</td>
						<c:choose>
							<c:when test="${ c.userNo eq loginUser.userNo }">
								<td>개설자 </td>
								<td><button onclick="">관리</button></td>
							</c:when>
							<c:otherwise>
								<td>참가자</td>
								<td><button onclick="deleteClub(${ c.clubNo });">탈퇴</button></td>
							</c:otherwise>
						</c:choose>
					</tr>
					</c:forEach>
					
				<!-- 더미쓰 
				<tr>
					<td>2</td>
					<td><a href="">바다를 볼 수 있을까</a></td>
					<td>토</td>
					<td>회원</td>
					<td></td>
				</tr> -->
			</tbody>
		</table>
		
	</div>
	
	
	<script>
		function goDetail(clubNo, newCount){
			// 일반페이지 상세보기 갈 때 clubNo와 newCount 필요한데.. 
			// 계속 들고 다니기 귀찮은데...? 
			location.href = 'detail.cl?clubNo=' + clubNo + '&newCount=' + newCount ;
			
		}
	
	
		function deleteClub(clubNo){	
			
			var ans = confirm("모임에서 탈퇴하시겠습니까?");
			
			var $clubNo = clubNo;
			var $loginUser = ${ loginUser.userNo };
			
			if(ans == true){
				$.ajax({
					url : "ajaxDeleteClub.cl",
					data : { clubNo : $clubNo, 
							 userNo : $loginUser	
					},
					success : function(result){
						alert("모임탈퇴에 성공하였습니다.");
						location.reload();
						
					},
					error : function(){
						console.log("비동기 통신 실패 ");					
						
					}				
				});
			} else {
				console.log('탈퇴안함');
			}
			
		};
		
		
		
	</script>
	
	
	
	
	<jsp:include page="../common/footer.jsp" />
</body>
</html>