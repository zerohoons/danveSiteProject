<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>
</style>
<body>
<div class="bottomImform">
			<ul>
				<li><i class="far fa-paper-plane" id="sendEmail"></i></li>
				<li><i class="fab fa-instagram" id="goInsta"></i></li>
				<li><i class="fab fa-twitter" id="goTwitter"></i></li>
				<li><i class="fas fa-share-alt" id="goShare" value="https://github.com/zerohoons/danveSiteProject.git"></i></li>
			</ul>
		</div>

</body>
<script type="text/javascript">
 $(document).ready(function() {
	$('#sendEmail').on('click',function(){
		window.open('mailto:zerohoons@gmail.com');
	});
	$('#goInsta').on('click',function(){
		window.open('https://www.instagram.com/withdanvi/');
	});
	$('#goTwitter').on('click',function(){
		window.open('https://twitter.com/withdanvi');
	});
	$('#goShare').on('click',function(){
		  var copyText = $(this).attr('value');
		  const elem = document.createElement('textarea');
		   elem.value = copyText;
		   document.body.appendChild(elem);
		   elem.select();
		   document.execCommand('copy');
		   document.body.removeChild(elem);
		   
		   alert("단비 주소가 복사되었어요! 단비를 퍼트려주세요!");
	});
});
</script>
</html>