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
					<a href="docuP.do">�����?</a> <a href="docuVideo.do"
						style="color: #8a35ba; font-weight: bold;">���迵��</a> <a
						href="commentedList.do?cPage=1">�������ı�</a> 
						<a href="cheerUp.do?cPage=1">�����Ѹ���</a>
				</div>
			</nav>

			<div class="contentBox" style="margin: 2em auto;">
				<div
					style="width: 85%; height: 14em; background: gray; color: white; text-align: center; font-size: 1.5em; line-height: 14em;">
					������ ���� �غ� ���Դϴ�. ���ݸ� ��ٷ��ּ���.</div>
			</div>

			<div class="contentBox" style="margin: 2em auto;">
				<div
					style="width: 85%; height: 14em; background: gray; color: white; text-align: center; font-size: 1.5em; line-height: 14em;">
					������ ���� �غ� ���Դϴ�. ���ݸ� ��ٷ��ּ���.</div>
			</div>
		</div>
		<%@include file="bottom.jsp"%>
	</div>
</body>
</html>