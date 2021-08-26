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
					<a href="docuP.do" style="color: #8a35ba; font-weight: bold;">�����?</a>
					<a href="docuVideo.do">���迵��</a> 
					<a href="commentedList.do?cPage=1">�������ı�</a>
					<a href="cheerUp.do?cPage=1">�����Ѹ���</a>
				</div>
			</nav>

			<div class="contentBox">
				<div>
					<p style="font-size: 3rem; font-style: italic; font-weight: 500;">��Ű翡
						�ܺ�!</p>
				</div>
				<img src="resources/images/docuPostor.jpg"
					style="minwidth: 30vw%; width: 20vw; background-color: gray; height: auto; max-height: 100%; position: relative; border: 3px solid white; float: right; border-radius: 3px;" />
				<div
					style="text-align: left; float: left; height: 55vw; width: 33vw; font-size: 1.1em; position: relative;">
					<b
						style="font-style: italic; color: gray; font-size: 1.3em; text-shadow: -1px -1px white;">��Ű翡
						�ܺ�! </b> <br>û������� '�������⸦ ���ִ� ����� ���� ���'�� ������ �޾� ���ܳ����ϴ�. <br>
					<br> �������⸦ ���ִ� ��� �� �ϳ��� �ܺ�� <b
						style="text-shadow: 3px 1px gray;">'��Ŵ���' </b>�� �����մϴ�. ��Ŵ����� ���� ���
					�Ľ����� �ڽ��� �ǰ��� ì�� �� �ְ�, ������ �Ǹ��� �Բ� �����ϸ� �������⵵ �ذ��� �� �ִ� ��õ�� ���⼺�Դϴ�. <br>
					<br>
					<div
						style="border-bottom: 1px solid white; border-top: 1px solid white">
						<p style="margin-top: 1em;">���� ����</p>
						<p>
							8�� 21�� ����� �Ͻ� 2��~6�� <br> (�ڷγ�19�� ���� ����, ��ҵ� �� �ֽ��ϴ�.)
						</p>
					</div>
					<div style="border-bottom: 1px solid white;">
						<p>���� ��ǥ</p>
						<p>����, ����� �Բ� �� ��Ŵ��� ���� ��ȭ�� ��û�ϰ�, �ٰ��� ���� ��ȭ�� ������ �ð��� ���� ����
							�ַ��Ѵ�. �� �������� ������ �Ͽ��� ��Ŵ��� ��õ�� �� �� �ֵ��� ���´�.</p>
						<i style="font-size: 0.7em;">���� : ��Ŵ����� ���� ��õ���� �ʰ� �ִ� �������
							���´� ���.</i>
					</div>
				</div>
			</div>
		</div>
		<%@include file="bottom.jsp"%>
	</div>
</body>
</html>