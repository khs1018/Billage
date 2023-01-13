<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중고거래게시판 목록 조회</title>

<style>
    p {
        margin-bottom : 0px;
        padding : 0px;
    }
    .outer{
        width : 1200px;
        margin : auto;
        
    }
    .margin-bottom{
    	margin-bottom : 20px;
    }
    .align-side{
    	display : flex;
    	justify-content: space-between;
    }
    .align-left{
        flex: auto;
    }
    
    .align-left-outer{
        display: flex;
        flex-wrap: wrap;
    }
    .one-content{
        width : 400px;
        height: 534px;
        padding-left: 8px;
        padding-right: 8px;
        padding-bottom: 16px;
    }
    .img-area{
        width : 100%;
        height : 414px;
        overflow: hidden;
    }
    .text-area{
        width: 344px;
        height: 100px;
        padding-top: 10px;
        padding-bottom: 10px;
        padding-left: 30px;
    }
    .countnum{
        display: flex;
        flex-direction: row-reverse;
        font-size: 12px;
    }
    .textsize {
        font-size: 17px;
        margin : 0px;
    }
    .title-text{
		font-size: 25px;
        margin : 0px;
    }

</style>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</head>
<body>


    <jsp:include page="../../common/header.jsp"/>


    <!-- 전체를 감싸는 div -->
    <div class="outer">
		<div class="align-side margin-bottom">
			<div class="dropdown">
				<button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
				정렬
				</button>
				<div class="dropdown-menu"> 
					<a class="dropdown-item" href="#">판매중 상품만 보기</a>
					<a class="dropdown-item" href="#">최신 날짜 순</a>
				</div>
			</div>
			<div><button type="button" class="btn btn-info" onclick="location.href='insert.ud'">글쓰기</button></div>   
		</div>


	  	<c:forEach items="${ list }" var="b">
			<!-- 상품 하나를 감싸는 div -->
			<div class="align-left-outer">
		        <div class="one-content">
		            <div class="img-area">
		                
		                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5_IFlIbljPs9It0_9sTvNctqXsDbvUCWjPpeLjw6w&s" onclick="location.href='detail.ud'">
		            	
		            </div>
		            <div class="text-area">
		                <p class="title-text">${ b.bookTitle }</p>
		                <p class="textsize">${ b.point }</p>
		                <p class="textsize">♡</p>
		                <p class="countnum">조회 : ${ b.count }</p>
		            </div>
		
		        </div>
			</div>
			
			<!-- 상품 하나를 감싸는 div -->
			<div class="align-left-outer">
		        <div class="one-content">
		            <div class="img-area">
		                
		                <img src="" onclick="location.href='detail.ud'">
		            	
		            </div>
		            <div class="text-area">
		                <p class="title-text">${ b.bookTitle }</p>
		                <p class="textsize">${ b.point }</p>
		                <p class="textsize">♡</p>
		                <p class="countnum">조회 : ${ b.count }</p>
		            </div>
		
		        </div>
			</div>
			
			
			<!-- 상품 하나를 감싸는 div -->
			<div class="align-left-outer">
		        <div class="one-content">
		            <div class="img-area">
		                
		                <img src="" onclick="location.href='detail.ud'">
		            	
		            </div>
		            <div class="text-area">
		                <p class="title-text">${ b.bookTitle }</p>
		                <p class="textsize">${ b.point }</p>
		                <p class="textsize">♡</p>
		                <p class="countnum">조회 : ${ b.count }</p>
		            </div>
		
		        </div>
			</div>
			
									
		</c:forEach>	
		
		
		
		
		<!-- 더보기 누를 시 상품 6개가 뜨게 되는 div -->
		<div><button type="button" class="btn btn-info" style="width:1200px; height:80px;">더보기</button></div>  
	
		

                    
	    <!-- 페이지처리하는 영역-->
	    <div class="pagingArea">
	        <ul class="pagination">
	            <c:choose>
	            	<c:when test="${ pi.currentPage eq 1 }">
		            	<li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
		            </c:when>
					<c:otherwise>	            
		            	<li class="page-item"><a class="page-link" href="list.re?cPage=${ pi.currentPage - 1 }">Previous</a></li>
	            	</c:otherwise>
	            </c:choose>
	            
	            <c:forEach begin="${ pi.startPage }" end="${ pi.endPage }" var="p">
	            	<li class="page-item"><a class="page-link" href="list.re?cPage=${ p }">${ p }</a></li>
	            </c:forEach>
	
				<c:choose>
					<c:when test="${ pi.currentPage eq pi.maxPage }">            
	       	    		<li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
	        		</c:when>
	 				<c:otherwise>
	       	    		<li class="page-item"><a class="page-link" href="list.re?cPage=${ pi.currentPage + 1 }">Next</a></li>
	        		</c:otherwise>
	        	</c:choose>
	        
	        </ul>
	    </div>
	    
    
    </div>	



    <jsp:include page="../../common/footer.jsp"/>
    
</body>
</html>