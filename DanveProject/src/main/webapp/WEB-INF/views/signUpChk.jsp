<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="resources/css/main.css">
</head>
<body>
	
</body>
<script type="text/javascript">
$(document).ready(function(){
	var msg = '${msg}';
	System.out.println(msg);
	switch (msg) {
	case '1':
		alert("가입해주셔서 감사합니다! 행복한 하루 되세요.");
		location.href="danveP.do"
		break;
	case '2':
		alert( "가입에 실패하였습니다. 계속된 실패의 경우 아래의 메일로 문의주세요.");
		location.href="danveP.do"
	default:
		location.href="danveP.do"
		break;
	}
})
</script>
</html>