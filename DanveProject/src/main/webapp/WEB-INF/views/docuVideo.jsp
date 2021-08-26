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
		<div id="fullpage" style="margin: 0px auto;">
			<nav class="gnb-sub-menu">

				<div>
					<a href="docuP.do">어떤실험?</a> <a href="docuVideo.do"
						style="color: #8a35ba; font-weight: bold;">실험영상</a> <a
						href="commentedList.do?cPage=1">참여자후기</a> 
						<a href="cheerUp.do?cPage=1">응원한마디</a>
				</div>
			</nav>

			<div class="contentBox" style="margin: 2em auto;">
				<div
					style="width: 85%; height: 14em; background: gray; color: white; text-align: center; font-size: 1.5em; line-height: 14em;">
					영상은 현재 준비 중입니다. 조금만 기다려주세요.</div>
			</div>

			<div class="contentBox" style="margin: 2em auto;">
				<div
					style="width: 85%; height: 14em; background: gray; color: white; text-align: center; font-size: 1.5em; line-height: 14em;">
					영상은 현재 준비 중입니다. 조금만 기다려주세요.</div>
			</div>
		</div>
		<%@include file="bottom.jsp"%>
	</div>
</body>
</html>