<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="../common/common.css"/>		<!-- footer, title css -->
		<link rel="stylesheet" type="text/css" href="../common/category.css" />		<!-- category css -->
		<link rel="stylesheet" type="text/css" href="../main/main.css"/>					<!-- main css -->
		<link rel="stylesheet" type="text/css" href="../store/store.css" />
	</head>
	<body>
		<div>
			<jsp:include page="../common/title.jsp" /> 			<!-- title -->
		</div>
		
		<div class="content">
			<div class="picCollection_content">
					<div class="result_img"> 						<!-- result title -->
						<img src="./../images/about.png" height="55"/>
						<span class="result_value">					<!-- 검색해서 넘어온 가게 이름 -->
							7Train
						</span>
					</div>
					
					<div>											<!-- 리뷰에 쓰인 이미지들 모아서 보여주기 -->
						<div class="detail_img">
							
						</div>
						<div class="thumbnails">
						</div>
					</div>
			</div>
		</div>
		
		<div>
			<jsp:include page="../common/footer.jsp"/>		<!-- footer -->
		</div>
	</body>
</html>