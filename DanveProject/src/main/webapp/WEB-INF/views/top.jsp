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
<title>top������</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</head>
<body>
<nav class="gnb-menu">
			<div>
				<a href="danveP.do">�ܺ�</a> <a href="docuP.do">��ť���͸�����</a> <a href="doVegan.do">��Ǵ���</a>
				<a href="" id="goShare_top"  value="https://github.com/zerohoons/danveSiteProject.git">�����ϱ�</a>
			</div>
			<div>
			<c:choose>
				<c:when test="${sessionScope.login==1}">
				<a href="signOut.do">�α׾ƿ�</a> <a href="#" id="deleteMB">ȸ��Ż��</a>
				</c:when>
				<c:when test="${sessionScope.login==2}">
				<a href="signOut.do">�α׾ƿ�</a> <a href="manageMem.do">ȸ������</a>
				</c:when>
				<c:otherwise>
				<a href="signIn.do">�α���</a> <a href="signUp.do">ȸ������</a>
				</c:otherwise>
			</c:choose>
			</div>
		</nav>
</body>
<script type="text/javascript">
$(document).ready(function() {
	$('#deleteMB').on('click',function(){
		if(window.confirm("ȸ��Ż�� �ϸ� ������ �� �����.")){
			const chk = "ȸ��Ż�� ����մϴ�.";
			const res = prompt('Ż�� ���ϽŴٸ� ���� ������ �Է����ּ��� \n'+chk);
			if(res == chk){				
				alert("Ż��Ϸ�Ǿ����ϴ�. �׵��� �Բ����ּż� �����մϴ�.");
				location.href="deleteMem.do";
			}else{
				alert("Ȯ�� ���� �Է��� Ʋ�Ƚ��ϴ�.");
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
		   
		   alert("�ܺ� �ּҰ� ����Ǿ����! �ܺ� ��Ʈ���ּ���!");
	});
});

</script>
</html>