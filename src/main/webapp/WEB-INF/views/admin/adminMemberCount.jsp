<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/adminMemberCount.css">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<!-- Google Chart JavaScript -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    
<!-- jQuery 라이브러리 로드 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>    


<meta charset="UTF-8">
<title>회원 현황</title>
</head>
<body>

	<div id="adminHeader">
			<jsp:include page="../admin/adminHeader.jsp"/>
	</div>
		
		<h2>회원 현황</h2>
<!-- 총 인원 현황  -->
		<h4><img src="./resources/image/setbanglogofinal.png" width=360px height=130px /><br/>
		SETbang에 가입한 총 회원수</h4>
		<h6>현재까지 총 회원의 수는 ${totalmember}명 입니다.</h6>

	
    <!--지점별 회원현황 막대차트-->
    <h4>지점별 회원현황</h4>
  		<div class="chart" id="privcount">
			<div id="columnchart_values" ></div>
			<input type="hidden" id="guromember" name="guromember" value="${guromember}">
			<input type="hidden" id="gangnammember" name="gangnammember" value="${gangnammember}">
			<input type="hidden" id="pangyomember" name="pangyomember" value="${pangyomember}">
		</div>

    <!--지점별 회원현황 막대차트-->
  		<div class="chart">
			<div id="columnchart_values" ></div>
			<input type="hidden" id="basic" name="basic" value="${basic}">
			<input type="hidden" id="standard_monthly" name="standard_monthly" value="${standard_monthly}">
			<input type="hidden" id="standard_annual" name="standard_annual" value="${standard_annual}">
			<input type="hidden" id="premium_monthly" name="premium_monthly" value="${premium_monthly}">
			<input type="hidden" id="premium_annual" name="premium_annual" value="${premium_annual}">
		</div>

	<!-- 서비스 플랜 이용현황 도넛차트 -->	
	<h4>서비스 플랜 이용현황</h4>
	<div class="chart-area">
  		<div class="chart">
			<div id="donutchart"></div>
		</div>
	</div>

	
	<div id="adminFooter">
			<jsp:include page="../admin/adminFooter.jsp" />
	</div>
	
<!-- JS -->
<script type="text/javascript" src="./resources/js/adminMainChart.js"></script>
<script type="text/javascript" src="./resources/js/adminMemberCount.js"></script>

</body>
</html>