<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>구글지도사용하기</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript"
	src="http://maps.google.com/maps/api/js?key=AIzaSyDSsbFPytzLq_8GDQd7vh9x8f8UIpn-zdE"></script>
<style>
#map_ma {
	width: 400px;
	height: 400px;
	clear: both;
	border: solid 1px red;
}
@font-face {
    font-family: 'yg-jalnan';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: bold;
    font-style: normal;
}
h2{
	font-family: 'yg-jalnan';
}
p{
	font-family: 'GmarketSansMedium';
}
</style>
</head>
<body>
	<div id="map_ma"></div>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							var myLatlng = new google.maps.LatLng(37.4601718,126.8990748); // 위치값 위도 경도
							var Y_point = 37.4601718; // Y 좌표
							var X_point = 126.8990748; // X 좌표
							var zoomLevel = 13; // 지도의 확대 레벨 : 숫자가 클수록 확대정도가 큼
							var markerTitle = "금천구"; // 현재 위치 마커에 마우스를 오버을때 나타나는 정보
							var markerMaxWidth = 300; // 마커를 클릭했을때 나타나는 말풍선의 최대 크기

							// 말풍선 내용
							var contentString = '<div>' + '<h2>직당모의 볼링클럽</h2>'
									+ '<p>2030 볼링 고수 & 초보 환영!!!</p>' +

									'</div>';
							var myLatlng = new google.maps.LatLng(Y_point,
									X_point);
							var mapOptions = {
								zoom : zoomLevel,
								center : myLatlng,
								mapTypeId : google.maps.MapTypeId.ROADMAP
							}
							var map = new google.maps.Map(document
									.getElementById('map_ma'), mapOptions);
							var marker = new google.maps.Marker({
								position : myLatlng,
								map : map,
								title : markerTitle
							});
							var infowindow = new google.maps.InfoWindow({
								content : contentString,
								maxWizzzdth : markerMaxWidth
							});
							google.maps.event.addListener(marker, 'click',
									function() {
										infowindow.open(map, marker);
									});
						});
	</script>
</body>
</html>