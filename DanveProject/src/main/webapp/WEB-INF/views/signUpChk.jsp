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
		alert("�������ּż� �����մϴ�! �ູ�� �Ϸ� �Ǽ���.");
		location.href="danveP.do"
		break;
	case '2':
		alert( "���Կ� �����Ͽ����ϴ�. ��ӵ� ������ ��� �Ʒ��� ���Ϸ� �����ּ���.");
		location.href="danveP.do"
	default:
		location.href="danveP.do"
		break;
	}
})
</script>
</html>