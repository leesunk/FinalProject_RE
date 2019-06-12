<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .overlay_info {border-radius: 6px; margin-bottom: 12px; float:left;position: relative; border: 1px solid #ccc; border-bottom: 2px solid #ddd;background-color:#fff;}
    .overlay_info:nth-of-type(n) {border:0; box-shadow: 0px 1px 2px #888;}
    .overlay_info a {display: block; background: #d95050; background: #d95050 url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center; text-decoration: none; color: #fff; padding:12px 36px 12px 14px; font-size: 14px; border-radius: 6px 6px 0 0}
    .overlay_info a strong {background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/place_icon.png) no-repeat; padding-left: 27px;}
    .overlay_info .desc {padding:14px;position: relative; min-width: 190px; height: 56px}
    .overlay_info img {vertical-align: top;}
    .overlay_info .address {font-size: 12px; color: #333; position: absolute; left: 80px; right: 14px; top: 12px; white-space: normal}
    .overlay_info:after {content:'';position: absolute; margin-left: -11px; left: 50%; bottom: -12px; width: 22px; height: 12px; background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png) no-repeat 0 bottom;}
</style>
</head>
<body>

<div style="margin-top: 12px" align="center">
	<!-- 방이름 -->
	<img alt="" src="image/dos.png" border="0" id="logo" width="300px">
		
</div>
<div style="margin-top: 12px" align="center">
	<img alt="" src="image/jd.png" border="0" id="logo" width="300px">	
</div>
<!-- * 카카오맵 - 지도퍼가기 -->
<!-- 1. 지도 노드 -->
<div align="center" id="daumRoughmapContainer1559107648697" class="root_daum_roughmap root_daum_roughmap_landing"></div>

<div style="margin-top: 12px" align="center">
	<img alt="" src="image/sj.png" border="0" id="logo" width="300px">	
</div>

<div align="center">
	<img alt="" src="image/v_do.png" border="0" id="backimg" style="width: 70%;padding-bottom: 100px">
</div>
<!--
	2. 설치 스크립트
	* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
-->
<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

<!-- 3. 실행 스크립트 -->
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1559107648697",
		"key" : "tp9q",
		"mapWidth" : "1500",
		"mapHeight" : "360"
	}).render();
</script>
</body>
</html>