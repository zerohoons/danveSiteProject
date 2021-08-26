<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>
</style>
<body>

	<div class="pageBox">
		<%@include file="top.jsp"%>
		<div id="fullpage">
			<nav class="gnb-sub-menu">

				<div>
					<a href="docuP.do" style="color: #8a35ba; font-weight: bold;">어떤실험?</a>
					<a href="docuVideo.do">실험영상</a> 
					<a href="commentedList.do?cPage=1">참여자후기</a>
					<a href="cheerUp.do?cPage=1">응원한마디</a>
				</div>
			</nav>

			<div class="contentBox">
				<div>
					<p style="font-size: 3rem; font-style: italic; font-weight: 500;">당신곁에
						단비!</p>
				</div>
				<img src="resources/images/docuPostor.jpg"
					style="minwidth: 30vw%; width: 20vw; background-color: gray; height: auto; max-height: 100%; position: relative; border: 3px solid white; float: right; border-radius: 3px;" />
				<div
					style="text-align: left; float: left; height: 55vw; width: 33vw; font-size: 1.1em; position: relative;">
					<b
						style="font-style: italic; color: gray; font-size: 1.3em; text-shadow: -1px -1px white;">당신곁에
						단비! </b> <br>청년허브의 '기후위기를 없애는 실험실 지원 사업'의 지원을 받아 생겨났습니다. <br>
					<br> 기후위기를 없애는 방법 중 하나로 단비는 <b
						style="text-shadow: 3px 1px gray;">'비거니즘' </b>을 제안합니다. 비거니즘을 통한 비건
					식습관은 자신의 건강도 챙길 수 있고, 동물의 권리도 함께 보존하며 기후위기도 해결할 수 있는 실천의 방향성입니다. <br>
					<br>
					<div
						style="border-bottom: 1px solid white; border-top: 1px solid white">
						<p style="margin-top: 1em;">실험 일정</p>
						<p>
							8월 21일 토요일 일시 2시~6시 <br> (코로나19로 인해 연기, 취소될 수 있습니다.)
						</p>
					</div>
					<div style="border-bottom: 1px solid white;">
						<p>실험 목표</p>
						<p>논비건, 비건이 함께 모여 비거니즘에 대한 영화를 시청하고, 다과를 즐기며 대화룰 나누는 시간을 갖는 것을
							주로한다. 이 과정에서 논비건이 하여금 비거니즘 실천을 할 수 있도록 돕는다.</p>
						<i style="font-size: 0.7em;">논비건 : 비거니즘을 아직 실천하지 않고 있는 사람들을
							일컫는 용어.</i>
					</div>
				</div>
			</div>
		</div>
		<%@include file="bottom.jsp"%>
	</div>
</body>
</html>