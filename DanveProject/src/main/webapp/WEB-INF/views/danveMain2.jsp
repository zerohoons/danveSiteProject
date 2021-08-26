<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="resources/css/jquery.fullpage.css">
<link rel="stylesheet" href="resources/css/main.css">
<script src="resources/js/jquery.fullpage.js"></script>

</head>
<style>
S    .section {
	width: 70%;
	height: auto;
	margin: 0.5rem auto 20rem;
	padding: 5%;
	line-height: auto;
}
</style>
<script>
    $(function(){
	    $('#fullpage').fullpage({
		//options here
		autoScrolling:true,
		scrollHorizontally: true
	});
});
    
</script>
<body>
	<div class="mainIntro" style="position: relative;">
		<nav class="gnb-menu">
			<div>
				<a href="danveP.do">�ܺ�</a> <a href="docuP.do">��ť���͸�����</a> <a href="">��Ǵ���</a>
				<a href="">�����ϱ�</a>
			</div>
			<div>
				<a href="signIn.do">�α���</a> <a href="signUp.do">ȸ������</a>
			</div>
		</nav>
		<div id="fullpage">
			<section class="section">
				<img src="resources/images/logo.jpg"
					style="width: 40%; margin-bottom: 3em; float: right;">
				<h1 style="font-size: 3em;">
					�ܺ� : <i>��Ű翡 �ܺ�!</i>
				</h1>
				<div style="margin-top: 9em; padding: 1em; width: 50;">
					<p>
						�Ϸ簡 �ִ� �ϰ� �޺��ϴ� �����Դϴ�. ���� ����� ���� �̾߱Ⱑ �ƴմϴ�. <br> �̹� ���ĸ� ���� �µ���
						������� ���Ͽ� ���ϸ��� ������� ������ ������ϴ�. <br> �̷� ��Ȳ���� �츮�� �� �� �ִ� ���� �ְ���
						�ൿ�� �ٷ� ��ä�ġ��Դϴ�. <br> �ܺ��� �������� ��� ȯ�湮��, ������ �� ������ ������ ��Ŵ�����
						��õ�ϰ� �ֽ��ϴ�. <br> �ܺ��� �������� ��? ��Ŵ����� ��õ�ϰ� �Ǿ������?
					</p>
				</div>
			</section>
			<section class="section">
				<div class="introBox">
					<h1>�ܺ�</h1>
					<p>
						�츮�� ����� ĳ���� ���ܺ񡯸� �Ұ��մϴ�.<br> �ܺ��� ĳ���� ���ܺ񡯴� �������� ������ ��� ���ѿ�
						�˸°� ���� ����ϴ�. <br> �ܺ� �������� ������ ���ѿ� ���� Ʒ�� �ٰŶ��ϴ�.
					</p>
				</div>
				<div class="introBox">
					<h1>����</h1>
					<p>���ڴ� ȯ��/�α� ���� ��ȸ������ ������ ���ҽ��ϴ�. �׷��� �� ���� ������ ������ �Ǹ������� ���� ������
						������� ����, ģ���� �̿� ���� �����ǽ��� �̾߱��ϸ� �Ļ��ϴ� �ڸ��� �������ϴ�. �׷��� ���� ���տ� ������
						�����ġ����� �ٷ� ���� �������̶�� �� �˰� �Ǿ���, �� �� ���� ����� �ϴ� ������ ������ ���� Ȯ���� ��Ŵ�����
						��õ�ϰ� �Ǿ����ϴ�.</p>
				</div>

			</section>
			<section class="section">
				<div class="introBox">
					<h1>����</h1>
					<p>���ڴ� ��� ������ �����ڼ����� ���Ҽ��ڼ��� �� �αǹ����� �ǽ��ϸ� �׵�� �����ϱ� ���� ����ϰ�
						�־����ϴ�. �� �ü��� �ڿ������� ����������� ���������� ����Ǿ���, ���ں��� �� �Ʒ��� �ִ� ������ �Ǹ�������
						�ڰ��ϰ� �Ǿ����ϴ�. �� �� SNS�� �ٸ� ����� �ۼ��� ���� ������ ����� ����ϰ� �Ǿ����ϴ�. �� ��ɿ��� ����Ӹ�
						�ƴ϶� ���� ���� ���� ������ ������, ������ �׵��� ����, �� ��ü�� ��� ���߹��� �� �ִ� ���� ���� ������
						����ֽ��ϴ�.</p>
				</div>
				<div class="introBox">
					<h1>����</h1>
					<p>�����̴� ������ ū ȭ�ο��� �Ŀ�߿� ���� ������ ��â�� ��, ������ �츮�� �����̸� ģ���̴�. �׷� ������
						��� ���� ���� �ֳġ� ��� ������ ��� ���� ���߽��ϴ�. �׷��� �����̴� ���� ����, ��, �ߵ� �ٸ��� ������ ����
						��������� �������� �������� �ʴ��Ĵ� ���� �߰��մϴ�. ���� �� �ۿ� �����ϸ� �������� ������������ ���� ���޾�
						��Ŵ����� ��õ�ϰ� �Ǿ����ϴ�.</p>
				</div>
			</section>
			<section class="section">
				<div class="introBox">
					<h1>����ݸ�</h1>
					<p>����ݸ��� ���ź��� �پ��� �������� ���� ȯ�湮���� ������ ������ �־����ϴ�. �׷��鼭 ������ �� �� �ִ�
						�ൿ���� ��õ�� �Խ��ϴ�. ����� ���� �� �Լ����� ���� ���ĵ鿡 ���ؼ��� �����ϰ� ���� �ʴ´ٴ� ���� ���ݰ�,
						�̸� ���� ��Ŵ����� ��õ�ϰ� �Ǿ����ϴ�.</p>
				</div>
				<div>
					<h3>�̷��� ������ ������ �������� �ᱹ �ϳ��� ��. '��Ŵ���'���� �츮�� �𿴽��ϴ�. �츮�� ���� ��ȭ��
						������ ���� ��ȸ���� ä���� �߿伺�� �� ���ǿ� ���� �����ϰ� ������ ���� �մϴ�.</h3>
				</div>
			</section>
			<section class="section">
				<div>
					<p>����� ������ �� �� �ֽ��ϴ�. �츮 ��δ� ��Ŵ����� ������ �����ӿ� ǰ�� �ִ� ���Դϴ�. ������ ������
						�ڸ��� �޻��� ������ ��Ȳ���� ������ �� �� ����� ����� ��ħ�� ���� Ʒ�� �� �ֽ��ϴ�. �������� ��, ȯ���� ����,
						���������� �ǰ� ������ ������ �ΰ� �ִ� �츮�� �����ӿ� ����� ���� Ʒ�� �� �˸��� �����. �� �� ����� �츮��
						���������մϴ�. �̷ν� ������ �հ� ���� ������ '�ܺ�'�� �Բ� �������� �ڶ� ���Դϴ�. ������ ���ϵ��� �𿩼�
						��â�ϰ� �ܴ��� ���� �̷� ������ �Բ� �ϰڽ��ϴ�.</p>
				</div>
				<div class="bottomImform">
					<ul>
						<li><i class="far fa-paper-plane"></i></li>
						<li><i class="fab fa-instagram"></i></li>
						<li><i class="fab fa-twitter"></i></li>
						<li><i class="fas fa-share-alt"></i></li>
					</ul>
				</div>
			</section>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function(){
		  let login = '${login}';
	      switch (login){
	      case "2":
	         alert("������ �ȳ�!");         
	         break;
	      case "1":
	         alert("���õ� �湮���ּż� �����մϴ�.");
	         break;
	      default:
	         alert("ȸ���� �ƴϿ���");      
	         break;
	      }
	})
</script>
</html>