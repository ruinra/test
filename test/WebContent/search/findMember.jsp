<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="../common/common.css"/>		<!-- footer, title css -->
		<link rel="stylesheet" type="text/css" href="../common/category.css" />		<!-- category css -->
		<link rel="stylesheet" type="text/css" href="../main/main.css"/>			<!-- main css -->
		<link rel="stylesheet" type="text/css" href="../search/search.css"/>
	</head>
	<c:set var="root" value="${pageContext.request.contextPath}"/>
	<script type="text/javascript" src="../jquery-2.1.1.js"></script>
	<script>
		var params = {"target" : "local", "query" : "", "display":5} // OpenAPI 요청변수 정의
		function callOpenAPI(query) {
			params.query = encodeURIComponent(query);
			var q = $.param(params);
			var ajax_url = "proxy.do?" + q; // OpenAPI 요청 URL 구성
			$.ajax({ type: "get", url: ajax_url,
				contentType: "text/xml; charset=utf-8", dataType: "xml",
				error: function(xhr, status, error) { alert("error : " +status); },
				success: showResult }); // Ajax 호출 및 이벤트 핸들러 함수 정의
		}
		function showResult(xml) {// Ajax 호출 성공시 실행되는 함수
			var totalCount = $(xml).find("total").text(); // <total>값 추출
			$("#resultCount").text(totalCount + "건 검색"); // <total>값 표시
			$(xml).find("rss").find("channel").find("item").each(function(idx) {
				var title = $(this).find("title").text(); // <title>값 추출
				var category = $(this).find("category").text();
				var telephone = $(this).find("telephone").text();
				var address = $(this).find("address").text();
				var roadAddress = $(this).find("roadAddress").text();
				var mapx = $(this).find("mapx").text();
				var mapy = $(this).find("mapy").text();
				var item = "title="+ title + "&category="+ category + "&telephone=" + telephone + "&address=" + address + "&roadAddress=" + roadAddress + "&mapx=" + mapx + "&mapy=" + mapy;
				
				var info = "<br/>" + "<div class='result_stores'>"
				info += "<div class='recommend' style=''><a href='${root}/store/storeInfo.do?title=" +title + "'><img src='./../images/ex1.jpg' height='180'></a></div>"
				info += "<div class='recommend_content'><a href='javascript:insertStore(\""+item+"\")'>"+ "<div class='recommend_title'>" + title + "</div></a><div class='recommend_category'>" + category + "</div><div class='recommend_phone'>" + telephone + "</div><div class='recommend_address'>" + address + "</br>" + roadAddress +"</div>";
				$("#result").append(info); // <title>값 표시
				
				//$("#result").append("<br/>" + category); // <category>값 표시
			});
		}
		function insertStore(item){			
			//alert(item);			
			$.ajax({
				url:"checkStore.do",
				type:"post",
				data:item,
				contentType:"application/x-www-form-urlencoded;charset=utf-8",
				dataType:"text",
				success:function(data){
					$("#resultDisplay").html(data);					
				},
				error:function(xhr, status, error){
					var array=new Array();
					array.push("xhr:" + xhr);
					array.push("status:" + status);
					array.push("error:" + error);
					alert(array);
				}
			});		   		
		}
	</script>
	<body onload="javascript:callOpenAPI('${query}')">
		<div>
			<jsp:include page="../common/title.jsp"/>			<!-- title -->
		</div>
		<div>
			<jsp:include page="../main/searchBar.jsp"/>			<!-- searchBar -->
		</div>
		
		<script type="text/javascript" src="../jQueryWeb.js"></script> 
		<script type="text/javascript" src="../jQueryWeb2.js"></script>
		
		<div class="content">									<!-- content -->
			<div class="result_content">
				<div class="result_img">						<!-- result title -->
					<img src="./../images/about.png" height="55">
					<span class="result_value">					<!-- 검색해서 넘어온 가게 이름 -->
						${query}
					</span>
				</div>
				
				<div id="result" class="result_box"></div>
				<!-- 
				<div class="result_box">						result store
					<div class="result_stores">
						<span class="recommend">
							<a href=""><img src="./../images/ex1.jpg" height="170"></a>
						</span>
						<span class="result_stores_title">
							<img src="./../images/1_HOT.png" height="55">
						</span>
					</div>
				</div>
				 -->
			</div>
		</div>
		
		<div>
			<jsp:include page="../common/footer.jsp"/>		<!-- footer -->
		</div>
	</body>
</html>