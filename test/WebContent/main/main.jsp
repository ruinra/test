<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="../common/common.css"/>		<!-- footer, title css -->
		<link rel="stylesheet" type="text/css" href="../common/category.css" />		<!-- category css -->
		<link rel="stylesheet" type="text/css" href="../main/main.css"/>			<!-- main css -->
		
		<link rel="stylesheet" type="text/css" href="demo.css" />
		<link rel="stylesheet" type="text/css" href="elastislide.css" />
		<script src="../modernizr.custom.17475.js"></script>
	</head>
	<body style="min-width:1000px;">
		<div>
			<jsp:include page="../common/title.jsp"/>		<!-- title -->
		</div>
		<div>
			<jsp:include page="searchBar.jsp"/>				<!-- searchBar -->
		</div>
		
		<div class="content">
			<div class="main_content">
				<div class="store_box">
					<div class="store_box_title">
						<img src="./../images/1_HOT.png" height="55">
					</div>
					<div class="stores">
						<div class="slide_title">
							<ul id="carousel" class="elastislide-list">
								<li class="recommend"><a href="#"><img src="./../images/ex1.jpg"/></a></li>
								<li class="recommend"><a href="#"><img src="./../images/ex2.jpg"/></a></li>
								<li class="recommend"><a href="#"><img src="./../images/ex3.jpg" /></a></li>
								<li class="recommend"><a href="#"><img src="./../images/ex4.jpg"/></a></li>
								<li class="recommend"><a href="#"><img src="./../images/ex1.jpg"/></a></li>
								<li class="recommend"><a href="#"><img src="./../images/ex2.jpg"/></a></li>
								<li class="recommend"><a href="#"><img src="./../images/ex3.jpg"/></a></li>
								<li class="recommend"><a href="#"><img src="./../images/ex4.jpg"/></a></li>
							</ul>
						</div>
					</div>
				</div>
				
				<script type="text/javascript" src="../jquery.min.js"></script>
				<script type="text/javascript" src="../jquerypp.custom.js"></script>
				<script type="text/javascript" src="../jquery.elastislide.js"></script>
				<script type="text/javascript">
					$('#carousel').elastislide();
				</script>
				
				<script type="text/javascript" src="../jQueryWeb.js"></script> 
				<script type="text/javascript" src="../jQueryWeb2.js"></script>
				
				<div class="store_box">
					<div class="store_box_title">
						<img src="./../images/2_REGION.png" height="55">
					</div>
					<div class="stores">
						접속 지역 기준 스토어 추천
					</div>
				</div>
				
				<div class="store_box">
					<div class="store_box_title">
						<img src="./../images/3_LIKES.png" height="55">
					</div>
					<div class="stores">
						추천수 기준 리뷰 추천
					</div>
				</div>
				
				<div class="store_box">
					<div class="store_box_title">
						<img src="./../images/4_NEW.png" height="55">
					</div>
					<div class="stores">
						새로 오픈된 스토어 추천
					</div>
				</div>
			</div>
		</div>
		
		<div class="main_footer">					<!-- footer -->
			<div class="letter">
				CRAFTED IN THE MONING PROJECT<br />copyright. 2014 Yodde
			</div>
		</div>
	</body>
</html>