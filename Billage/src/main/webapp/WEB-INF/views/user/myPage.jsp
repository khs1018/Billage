<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>안녕여긴 마이페이지</title>
<%--dateClick and selectable dates/times - Demos | FullCalendar --%>

<link href='/docs/dist/demo-to-codepen.css' rel='stylesheet' />
<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.css' rel='stylesheet' />
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js'></script>	

<style>
	
    html, body {
      margin: 0;
      padding: 0;
      font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
      font-size: 14px;
    }

    #calendar {
      max-width: 1100px;
      margin: 40px auto;
    }



	/*모달관련 스타일*/
	/*
	#write-textarea{
        text-align: center;

	}
	
	#store-report-area{
        position: fixed;
        width: 600px;
        height:900px;
        background-color: rgb(253, 219, 219);
        border-radius: 20px;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
        display: none;
        z-index: 1000;
    }

    #store-report-area .close{
        font-size: 40px;
        background-color:rgba(95, 152, 124, 0);
        border: 1px solid rgba(245, 245, 220, 0);
        cursor: pointer;
        color:rgb(0, 0, 0);
        padding-left: 560px;
    }
	
    #store-report-area{
        height:720px;
    }

    .modal-title>h2{
        font-size: 34px;
        text-align: center;
        font-weight: 900px;
        font-family: 'Happiness-Sans-Title';
    }

    #store-report-area p {
        font-weight: 900;
        padding: 5px 20px;
        font-size: 20px;
    }

    #st-text-area p {
        padding-left: 40px;
        font-weight: 400;
        font-size: 16px;
    }

    #store-name-area{
        margin: 5px 10px;
        padding-left: 50px;
        font-size: 30px;
        color:rgb(109, 104, 104);
        /* font-weight: 00; 
        font-family: 'Happiness-Sans-Title';
    }

    #tag-area {
        margin-left: 45px;
    }
    
    .tag-opt {
        font-size: 18px;
    }
	*/
	
	
	
	
	#all-mypage-main {
		margin:auto; 
		width:1200px; 
		height:2000px; 
		border:1px solid red;
	}

</style>

</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<jsp:include page="myPageBar.jsp" />
		
	<div id="all-mypage-main">
		<div id='calendar' style="width:500px; height:500px;"></div>
	</div>	
		
	
	<script>

		document.addEventListener('DOMContentLoaded', function() {
		  var calendarEl = document.getElementById('calendar');
		
		  var calendar = new FullCalendar.Calendar(calendarEl, {
		    selectable: true,
		    headerToolbar: {
		      left: 'prev,next today',
		      center: 'title',
		      right: 'dayGridMonth,timeGridWeek,timeGridDay'
		    },
		    dateClick: function(info) {
		      alert('clicked ' + info.dateStr);
		    },
		    select: function(info) {
		      alert('selected ' + info.startStr + ' to ' + info.endStr);
		    }
		  });
		
		  calendar.render();
		});

	</script>
			
		
		
		
		
		
		
		<%-- 이거 모달 참고 하는 용도로 코드 남긴 것  --%>
<%--
			<div id="store-report-area">
		    <div class="modal fade" id="mymodal2">
		        <div class="modal-dialog">
		            <div class="modal-header">
		                <button type="button" class="close" data-dismiss="modal">&times;</button>
		                <br>
		                <div class="modal-title"><h2>식당정보수정요청👏</h2></div>
		            </div>
		
		            <form action="" method="post">
		                <div class="modal-content">
		                    <br>
		                    <div id="st-text-area">
		                        <p>
					                            수정이 필요한 사항을 제보해 주시면 <br>
		                         	Freeeat팀이 검토 후 수정합니다. <br>
					                            감사합니다😃
		                        </p>
		                    </div>
		
		                    <h1 id="store-name-area">dd</h1>
		
		                    <br>
		                    <p>● 수정사항을 입력해주세요 </p>
		                    <div id="write-textarea">
		                        <textarea name="content" rows="500" style="width:500px; height:300px; resize:none;" placeholder="10자 이상 입력해주세요!"required></textarea>
		                    </div>          
		                </div> <!-- modal-content -->
		                
		                <div id="modal-footer">
		                    <input type="submit" value="요청하기" disabled/>
		                    <input type="reset" value="다시쓰기"/>
		                </div>
		            </form>
		        </div><!-- class="modal-dialog" -->
		    </div><!-- class="modal fade" id="mymodal1" -->
		</div> <!-- #store-report-area-->
		
		
		</div>
	
	
	</div>
	
	<div id="store-report"><a>신고하기</a></div>
	 <script>
	$(function(){
			$('#store-report a').click(function(){
		          $('#store-report-area').fadeIn();
	      });
				
			$('#store-report-area .close').click(function(){
			   		 $('#store-report-area').fadeOut();
				});
			})
			
	        $('textarea[name=content]').keyup(function(){
			if($(this).val().length >= 10){
            	$('#modal-footer > input[type=submit]').removeAttr('disabled');
			} else {
            	$('#modal-footer > input[type=submit]').attr('disabled', 'true');
			}                	
        })
	
	 </script>
 --%>


	<jsp:include page="../common/footer.jsp"/>
</body>
</html>