<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		
		<link rel="stylesheet" type="text/css" href="../common/common.css" /> 			<!-- footer, title css -->
		<link rel="stylesheet" type="text/css" href="../common/category.css" /> 		<!-- category css -->
		<link rel="stylesheet" type="text/css" href="../main/main.css" /> 				<!-- main css -->
		<link rel="stylesheet" type="text/css" href="../store/store.css" />
	</head>
	<body style="min-width:1260px;">
		<div>
			<jsp:include page="../common/title.jsp" /> 			<!-- title -->
		</div>
	
		<div class="content">
			<div class="storeInfo_content">
				<div class="result_img"> 						<!-- result title -->
					<img src="./../images/about.png" height="55"/>
					<span class="result_value">					<!-- 검색해서 넘어온 가게 이름 -->
						7Train
					</span>
					<span class="status_position">
						<span class="status"> <!-- store의 status 값을 받아와서 open / close 중 하나를 띄움 -->
							<img src="./../images/open.png" height="30" /> 
							<%-- 
								<img src="./../images/close.png" height="30"/>
							--%>
						</span>
					</span>
					<span class="category_position">
						<span class="category">
							<!-- store의 category 값을 받아와서 txt로 띄움 -->
							음식점>술집
						</span>
					</span>
				</div>
				<div class="first_box">
					<ul class="storeInfo_ul">
						<li class="storeInfo_box">
							<div class="starrate">				<!-- 별점표시 -->
								<span class="rate_title">
									<img src="./../images/rate_title.png" height="50">
								</span>
								<img src="./../images/starrate_ex.png" height="50" style="margin-left:30px;">
							</div>
							<div class="txt">					<!-- 스토어 정보 -->
								<!-- service Time -->
								영업시간 : 6:00pm~2:00am<br/>
								<!-- Address -->
								주소 : 서울 강남구 역삼동<br/>
								<!-- open Date -->
								개업일 : open Date<br/>
								<!-- homepage Address -->
								홈페이지 : www.7train.kr<br/>
								<!-- phone Number -->
								연락처 : 02-553-7850<br/>
							</div>
							<div style="position:absolute;">
								<div class="request_btn">
									<a href=""><img src="./../images/update_reqpuest.png" height="20"></a>
								</div>
								<div class="map">					<!-- 스토어 위치 -->
									MAP
								</div>
								<div class="follow_btn">			<!-- 팔로우 한 스토어와 안 한 스토어를 구별 -->
								<!-- 
									<a href=""><img src="./../images/follow.png" height="35"></a>
								 -->	
									<a href=""><img src="./../images/notfollow.png" height="35"></a>
								</div>
							</div>
						</li>
						
						<li class="store_pic"><img src="./../images/ex1.jpg" height="300"></li>
	
						<li class="store_icon">					<!-- 스토어 info -->
							<img src="./../images_store_info/card.png" width="55" style="margin-right:10px;">
							<img src="./../images_store_info/group.png" width="55" style="margin-right:10px;">
							<img src="./../images_store_info/toilet.png" width="45" style="margin-right:10px;">
							<img src="./../images_store_info/wifi.png" width="50" style="margin-right:10px;">
							<img src="./../images_store_info/parking.png" width="55" style="margin-right:10px;">
							<img src="./../images_store_info/reservation.png" width="45" style="margin-right:10px;">
						</li>
					</ul>
				</div>
	
				<div class="img_collection">					<!-- 모아보기 -->
					<div class="review_title">
						<div style="background-color:white;">
							<img src="./../images/review_pic.png" height="50">
						</div>
					</div>
					<div class="reviewImg_box">					<!-- 최근 리뷰의 사진 순으로 7개만 모아서 보여줌 -->
						<span class="review_img">
							<img src="./../images/pic1.png" height="118">
						</span>
						<span class="review_img">
							<img src="./../images/pic2.png" height="118">
						</span>
						<span class="review_img">
							<img src="./../images/pic3.png" height="118">
						</span>
						<span class="review_img">
							<img src="./../images/pic4.png" height="118">
						</span>
						<span class="review_img">
							<img src="./../images/pic1.png" height="118">
						</span>
						<span class="review_img">
							<img src="./../images/pic2.png" height="118">
						</span>
						<span class="review_img">
							<img src="./../images/pic_more.png" height="118">
						</span>
					</div>
				</div>
				
				<div class="write_box"> 						<!-- 리뷰쓰기 창 -->
					<div class="review_title">
						<span style="text-align:left; background-color:white;">
							<img src="./../images/review_title.png" height="50">
						</span>
						
						<span class="write_btn">
							<a href=""><img src="./../images/write.png" height="30"></a>
						</span>
					</div>
				</div>
					
				<!-- 작성 버튼을 누르면 나타나는 작성 창 -->
				<%-- 
				<div class="review_write">
					<jsp:include page="SmartEditor2.html" />
				</div>
				 --%>
				 
				<div class="review_board">							<!-- 리뷰 보드 -->
					
					<!-- 첫번째 댓글 예시 -->
					<div class="review">							<!-- DB에서 리뷰 받아와서 뿌려줌 -->
						<span class="reviewer_profile">
							<span class="review_content">			<!-- 리뷰어 내용 -->
								<span class="review_starrate">
									<img src="./../images/starrate_ex.png" height="25">
								</span>
								<span class="updown_position" style="min-width:106px;">		<!-- 리뷰 찬반 -->
									<a href=""><img src="./../images/up.png" height="30"></a>
										29
									<a href=""><img src="./../images/down.png" height="30"></a>
										3
								</span>
								<p class="scroll_tag">여기 존맛임 bbb<br/> 개꿀 ㅎㅎ<br/>
								z<br/>zzz<br/>zzzz<br/>zz<br/>z</p>
								<span>
									<span class="review_photo_position">			<!-- 리뷰에 첨부된 사진들 -->
										<a href=""><img src="./../images/pic1.png" height="40"></a>
										<a href=""><img src="./../images/pic2.png" height="40"></a>
										<a href=""><img src="./../images/pic3.png" height="40"></a>
									</span>
									
								</span>
								<span class="content_btn">	<!-- 본인 댓글이면 수정, 타인 댓글이면 신고 -->
									<span class="btn_position">
										<a href=""><img src="./../images/update.png" height="30"></a>
									</span>
									<%-- 
									<a href=""><img src="./../images/report.png" height="30"></a>
									--%>
								</span>
							</span>
							<span class="profile">			<!-- 리뷰어 프로필사진 -->
								<img src="./../images/profile.png" height="100">
							</span>
							<span class="reviewer_NICK">	<!-- 리뷰어 닉네임 -->
								예쁜나영이
							</span>
						</span>
					</div>
					
					<!-- 두번째 댓글 예시 -->
					<div class="review">							<!-- DB에서 리뷰 받아와서 뿌려줌 -->
						<span class="reviewer_profile">
							<span class="review_content">			<!-- 리뷰어 내용 -->
								<span class="review_starrate">
									<img src="./../images/starrate_ex.png" height="25">
								</span>
								<span class="updown_position" style="min-width:106px;">		<!-- 리뷰 찬반 -->
									<a href=""><img src="./../images/up.png" height="30"></a>
										5
									<a href=""><img src="./../images/down.png" height="30"></a>
										5
								</span>
								<p class="scroll_tag">별로 안존맛인데 뭔솔;;</p>
								<span>
									<span class="review_photo_position" style="min-width:150px;">			<!-- 리뷰에 첨부된 사진들 -->
										<a href=""><img src="./../images/pic1.png" height="40"></a>
										<a href=""><img src="./../images/pic2.png" height="40"></a>
										<a href=""><img src="./../images/pic3.png" height="40"></a>
										<a href=""><img src="./../images/pic4.png" height="40"></a>
										<a href=""><img src="./../images/pic1.png" height="40"></a>
									</span>
									
								</span>
								<span class="content_btn">	<!-- 본인 댓글이면 수정, 타인 댓글이면 신고 -->
									<span class="btn_position">
										<a href=""><img src="./../images/update.png" height="30"></a>
									</span>
									<%-- 
									<a href=""><img src="./../images/report.png" height="30"></a>
									--%>
								</span>
							</span>
							<span class="profile">			<!-- 리뷰어 프로필사진 -->
								<img src="./../images/profile.png" height="100">
							</span>
							<span class="reviewer_NICK">	<!-- 리뷰어 닉네임 -->
								두번째나영이
							</span>
						</span>
					</div>
					
					<div class="review_more">					<!-- 더 많은 리뷰 보는 버튼-->
						<a href=""><img src="./../images/review_more.png" height="25"></a>
					</div>
				</div>
			</div>
		</div>
	
		<div>
			<jsp:include page="../common/footer.jsp" /> 		<!-- footer -->
		</div>
	</body>
</html>