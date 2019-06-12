<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- app d057d633bdc6c3205fbac31649c8b475 -->
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
	<!-- 홈페이지 제목 -->
	<img alt="" src="image/mapm.png" border="0" id="logo" width="300px">
</div>
<!-- * 카카오맵 - 지도퍼가기 -->
<!-- 1. 지도 노드 -->
<div id="daumRoughmapContainer1559111764459" class="root_daum_roughmap root_daum_roughmap_landing"></div>
<table>
<tr>
	<th>펜션찾아가는 길 </th>
</tr>
<tr>
	<th style="padding-top: 20px">＊ 자가용 방문시</th>
</tr>
<tr>
	<td>- 서울권에서 오실 경우</td>
</tr>
<tr>
	<td>서울 ⇨ 구리 ⇨ 덕소 ⇨ 팔당 ⇨ 두물머리 ⇨ 양평시내 진입전 오빈 교차로에서 월드컵주요소 끼고 좌회전 ⇨ 6번국도 ( 왕복4차선 )로 직진하면 오른쪽에 대명비발디파크 대형간판이 보임 ⇨ 간판에서 400M 정도 지나면 고가도로 넘어가는길 오른쪽 비발디파크 이정표따라 진입 ⇨ 굴다리밑으로 좌회전 후 직진 ⇨ 단월 명성터널까지 직진 ⇨ 명성터널 바로 전 오른쪽에 소호펜션 도착</td>
</tr>
<tr>
	<th style="padding-top: 20px">＊ 대중교통 이용시</th>
</tr>
<tr>
	<td>- 전철 이용</td>
</tr>
<tr>
	<td>경의중앙선 용문행전철 (20~30분간격) 용문역하차 ⇨ 용문버스터미널에서 일반버스 명성리행 탑승( 1일 5회 운행 : 오전 7시, 9시, 11시 오후2시, 5시) ⇨ 부안리 하차 (명성터널 직전)</td>
</tr>
<tr>
	<th style="padding-top: 20px">* 	 시외버스 이용시</th>
</tr>
<tr>
	<td>동서울터미널 용문행 시외버스 탑승 ⇨ 용문버스터미널에서 하차 후 일반버스 명성리행 탑승( 1일 5회 운행 : 오전 7시, 9시, 11시 오후2시, 5시) ⇨ 부안리 하차 (명성터널 직전)</td>
</tr>
<tr>
	<td>경의중앙선 용문행전철 (20~30분간격) 용문역하차 ⇨ 용문버스터미널에서 일반버스 명성리행 탑승( 1일 5회 운행 : 오전 7시, 9시, 11시 오후2시, 5시) ⇨ 부안리 하차 (명성터널 직전)</td>
</tr>
</table>
<br><br><br><br><br><br><br><br><br><br>.


<!--
	2. 설치 스크립트
	* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
-->
<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

<!-- 3. 실행 스크립트 -->
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1559111764459",
		"key" : "tpc2",
		"mapWidth" : "1500",
		"mapHeight" : "360"
	}).render();
</script>
</body>
</html>