<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<div style="margin-top: 12px" align="center">
	<!-- 방이름 -->
	<img alt="" src="image/yongs.png" border="0" id="logo" width="300px">
		
</div>
<div style="margin-top: 12px" align="center">
	<img alt="" src="image/jd.png" border="0" id="logo" width="300px">	
</div>
<!-- 1. 지도 노드 -->
<div id="daumRoughmapContainer1559108271203" class="root_daum_roughmap root_daum_roughmap_landing"></div>

<div style="margin-top: 12px" align="center">
	<img alt="" src="image/sj.png" border="0" id="logo" width="300px">	
</div>
<div align="center">
	<img alt="" src="image/v_yong.png" border="0" id="backimg" style="width: 70%;padding-bottom: 100px">
</div>
<!-- * 카카오맵 - 지도퍼가기 -->


<!--
	2. 설치 스크립트
	* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
-->
<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

<!-- 3. 실행 스크립트 -->
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1559108271203",
		"key" : "tpa3",
		"mapWidth" : "1500",
		"mapHeight" : "360"
	}).render();
</script>
</body>
</html>