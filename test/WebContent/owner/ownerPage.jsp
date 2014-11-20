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
		<link rel="stylesheet" type="text/css" href="../member/member.css"/>
		
		<script type="text/javascript" src="../jquery-2.1.1.js"></script>
</head>
<body>
		<c:set var="root" value="${pageContext.request.contextPath}"/>
		<div>
			<jsp:include page="../common/title.jsp"/>								<!-- title -->
		</div>
		
		<div class="content">
			<div class="content_memberJoin">
			
				<div style="position: absolute; left: 180px; top: 220px;">
					<input type="image" style="width: 150px; height: 150px;" src="./../images/profile2.png" value="회원사진">
				</div>
			
				<div class="memberJoin_box">
					<form id="valiex" novalidate="novalidate" action="valiex('${root}')">
						<div class="result_title">				<!-- login title -->
							<img src="./../images/join_title.png" height="55">
						</div>
						
						<p>
							<img src="e-mail" height="25">
							<input type="text" class="join_input error" value="e-mail부분" name="e-mail" disabled="disabled">
						</p>
						
						<p>
							<img src="business-id" height="25">
							<input type="text" class="join_input error" value="business-id 부분" name="business-id" disabled="disabled">
						</p>
						
						
<!-- 						<div class="bottom_Btn"> -->
<!-- 							<button type="submit" style="height:30px; width:90px; border:none; background-image: url(./../images/ok.png); background-size: 100%;"> -->
<!-- 							</button> -->
							
<!-- 							<button type="reset" style="height:30px; width:90px; border:none; background-image: url(./../images/cancel.png); background-size: 100%;"> -->
<!-- 							</button> -->
<!-- 						</div> -->
					</form>
				</div>
			</div>
		</div>
		
		<div>
			<jsp:include page="../common/footer.jsp"/>			<!-- footer -->
		</div>
	</body>
</html>