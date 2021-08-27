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
<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
<link rel="stylesheet" href="resources/css/main.css">
</head>
<style>
.mainIntro{
	width: 70%;
	margin: 0em 15em;
	border: 0em solid white;
	pading: 5em;
}
.swiper-slide{
	margin: 0em auto;
}
.introBox {
margin-top: 9em; padding: 1em; width: 50;

}
</style>
<body>
		<%@include file="top.jsp" %>
	<div class="mainIntro" style="position: relative;">
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<img src="resources/images/logo.jpg"
						style="width: 40%; margin-bottom: 3em; float: right;">
					<h1 style="font-size: 3em;">
						단비 : <i>당신곁에 단비!</i>
					</h1>
					<div style="margin-top: 9em; padding: 1em; width: 50;">
						<p>
							하루가 멀다 하고 급변하는 세상입니다. 단지 기술뿐 만에 이야기가 아닙니다. <br> 이미 가파른 지구
							온도의 상승으로 인하여 매일매일 비극적인 뉴스가 쏟아집니다. <br> 이런 상황에서 우리가 할 수 있는 가장
							최고의 행동이 바로 ‘채식’입니다. <br> 단비의 팀원들은 모두 환경문제, 동물권 등 각자의 이유로
							비거니즘을 실천하고 있습니다. <br> 단비의 팀원들은 왜? 비거니즘을 실천하게 되었을까요?
						</p>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="introBox" >
						<h1>단비</h1>
						<p>
							우리의 빗방울 캐릭터 ‘단비’를 소개합니다.<br> 단비의 캐릭터 ‘단비’는 여러분의 마음속 비건 씨앗에
							알맞게 내린 비랍니다. <br> 단비가 여러분의 마음속 씨앗에 싹을 틔워 줄거랍니다.
						</p>
					</div>
					<div class="introBox">
						<h1>초코</h1>
						<p>초코는 환경/인권 등의 사회문제에 관심이 많았습니다. 그러던 중 가장 약자인 동물의 권리문제에 대한 생각이
							깊어졌을 무렵, 친구와 이에 대한 문제의식을 이야기하며 식사하는 자리를 가졌습니다. 그러다 당장 눈앞에 차려진
							‘음식’들이 바로 죽은 동물들이라는 걸 알게 되었고, 이 후 같은 고민을 하는 사람들과 만나며 더욱 확고히 비거니즘을
							실천하게 되었습니다.</p>
					</div>

				</div>
				<div class="swiper-slide">
					<div class="introBox">
						<h1>감자</h1>
						<p>감자는 평소 동료의 ‘약자성’과 ‘소수자성’ 등 인권문제를 의식하며 그들과 연대하기 위해 노력하고
							있었습니다. 그 시선은 자연스럽게 ‘사람’에서 ‘동물’로 연결되었고, 약자보다 더 아래에 있는 동물의 권리문제를
							자각하게 되었습니다. 그 후 SNS의 다른 비건이 작성한 글을 읽으며 비건을 결심하게 되었습니다. 그 결심에는
							사람뿐만 아니라 동물 또한 나의 동료라는 생각과, 동물이 그들의 존재, 그 자체로 살아 존중받을 수 있는 세상에 대한
							열망이 담겨있습니다.</p>
					</div>
					<div class="introBox">
						<h1>버섯</h1>
						<p>버섯이는 일전에 큰 화두였던 식용견에 대한 파장이 한창일 때, ‘개는 우리의 가족이며 친구이다. 그런
							개들을 어떻게 먹을 수가 있냐’ 라는 주장이 담긴 글을 접했습니다. 그런데 버섯이는 개와 돼지, 소, 닭도 다르지
							않은데 단지 ‘개’라는 동물만을 차별하지 않느냐는 글을 발견합니다. 이후 그 글에 공감하며 스스로의 ‘종차별’에 대해
							깨달아 비거니즘을 실천하게 되었습니다.</p>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="introBox">
						<h1>브로콜리</h1>
						<p>브로콜리는 과거부터 다양한 원인으로 인한 환경문제에 관심을 가지고 있었습니다. 그러면서 개인이 할 수 있는
							행동들을 실천해 왔습니다. 어느날 정작 내 입속으로 들어가는 음식들에 대해서는 생각하고 있지 않는다는 것을 깨닫고,
							이를 계기로 비거니즘을 실천하게 되었습니다.</p>
					</div>
					<div class="introBox">
						<h3>이렇게 각자의 이유를 가지지만 결국 하나의 답. '비거니즘'으로 우리는 모였습니다. 우리는 육식 문화가
							만연한 현대 사회에서 채식의 중요성과 그 의의에 대해 실험하고 증명해 보려 합니다.</h3>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="introBox">
						<p>비건은 누구나 될 수 있습니다. 우리 모두는 비거니즘의 씨앗을 마음속에 품고 있는 것입니다. 씨앗은 적당한
							자리와 햇살이 갖춰진 상황에서 마지막 물 한 방울의 존재로 마침내 싹을 틔울 수 있습니다. 동물들의 삶, 환경의
							오염, 망가져가는 건강 등으로 몸살을 앓고 있는 우리의 마음속에 비건의 싹을 틔워 줄 알맞은 빗방울. 그 한 방울을
							우리는 나누려고합니다. 이로써 껍질을 뚫고 나온 새싹은 '단비'와 함께 무럭무럭 자라날 것입니다. 여럿의 새싹들이
							모여서 울창하고 단단한 숲을 이룰 때까지 함께 하겠습니다.</p>
					</div>
				</div>
				<div class="swiper-slide">
				</div>
			</div>
		</div>
		  <div class="swiper-button-prev"></div>
 		  <div class="swiper-button-next"></div>
		<%@include file="bottom.jsp" %>
	</div>
</body>
<script type="text/javascript">
	/*
	$(document).ready(function() {
		let login = '${login}';
		switch (login) {
		case "2":
			alert("관리자 안녕!");
			break;
		case "1":
			alert("오늘도 방문해주셔서 감사합니다.");
			break;
		default:
			alert("회원이 아니에요");
			break;
		}
	})
	*/

	var swiper = new Swiper('.swiper-container', {
		 pagination: {
	          el: ".swiper-pagination",
	          type: "progressbar",
	        },
	        navigation: {
	          nextEl: ".swiper-button-next",
	          prevEl: ".swiper-button-prev",
	        },
	        mousewheel: true,
	        pagination: {
	            el: '.swiper-pagination',
	            clickable: true,
	          },
	          on: {
	            reachEnd: function () {
					location.href="docuP.do";
	            }
	          }
		});
</script>
</html>
