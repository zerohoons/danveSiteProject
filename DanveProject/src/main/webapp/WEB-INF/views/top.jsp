<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>top페이지</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</head>
<body>
<nav class="gnb-menu">
			<div>
				<a href="danveP.do">단비</a> <a href="docuP.do">다큐멘터리실험</a> <a href="doVegan.do">비건다짐</a>
				<a href="" id="goShare_top"  value="https://github.com/zerohoons/danveSiteProject.git">공유하기</a>
			</div>
			<div>
			<c:choose>
				<c:when test="${sessionScope.login==1}">
				<a href="signOut.do">로그아웃</a> <a href="#" id="deleteMB">회원탈퇴</a>
				</c:when>
				<c:when test="${sessionScope.login==2}">
				<a href="signOut.do">로그아웃</a> <a href="manageMem.do">회원관리</a>
				</c:when>
				<c:otherwise>
				<a href="signIn.do">로그인</a> <a href="signUp.do">회원가입</a>
				</c:otherwise>
			</c:choose>
			</div>
		</nav>
</body>
<script type="text/javascript">
$(document).ready(function() {
	$('#deleteMB').on('click',function(){
		if(window.confirm("회원탈퇴를 하면 복구할 수 없어요.")){
			const chk = "회원탈퇴를 희망합니다.";
			const res = prompt('탈퇴를 원하신다면 다음 문구를 입력해주세요 \n'+chk);
			if(res == chk){				
				alert("탈퇴완료되었습니다. 그동안 함께해주셔서 감사합니다.");
				location.href="deleteMem.do";
			}else{
				alert("확인 문구 입력이 틀렸습니다.");
			}
		}
	});
	$('#goShare_top').on('click',function(){
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