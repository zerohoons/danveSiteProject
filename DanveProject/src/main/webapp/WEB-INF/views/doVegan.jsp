<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="resources/css/main.css">
</head>
<style>
.contentBox {
	margin: 1em auto;
	text-align: center;
}

.contentBox table {
	margin: 1em auto;
	border: 1px solid lightgray;
	width: 80%;
	height: auto;
}

.contentBox table th, td {
	border: 0.7px solid lightgray;
	padding: 1%;
}

#pCTable a {
	text-decoration: none;
	color: white;
}

#pCTable a:hover {
	color: gray;
}

#pCTable button, #pCTable button label {
	color: white;
	background: none;
	border: none;
	cursor: pointer;
	font-size: 0.9em;
}

#pCTable button:hover, #pCTable button label:hover {
	font-weight: bold;
	color: gray;
}

#oneBox {
	border: 0.7px solid lightgray;
	margin: 3em auto;
	width: 80%;
	height: auto;
}

#oneBox tr, #oneBox td, #oneBox th {
	border: 0.7px solid lightgray;
	height: 0%;
	text-align: left;
	padding: 3%;
	color: white;
}
</style>
<body>
	<div class="pageBox">
		<%@include file="top.jsp"%>
		<div class="contentBox">
			<form action="" method="post">
				<textarea id="test" name="v_context" cols="90" rows="10"
					style="display: inline-block;" placeholder="��⳻ �������ּ���!"></textarea>
				<div style="display: inline-block; right: 0%;">
					<div id="test_cnt">(0 / 200)</div>
					<a id="goVegan" href="#">�����ϱ�</a>
				</div>
			</form>
			<table id="ccTable">
				<thead>
					<tr>
						<th width="80%">��Ǵ���</th>
						<th width="20%">�ۼ���</th>
					</tr>
				</thead>
				<c:choose>
					<c:when test="${empty gvlist}">
						<tbody>
							<tr>
								<td colspan="3">�Բ� ��Ŵ����� �����ؿ�!</td>
							</tr>
						</tbody>
					</c:when>
					<c:otherwise>
						<tbody>
							<c:forEach var="k" items="${gvlist}" varStatus="vs">
								<tr>
									<td>${k.v_context}</td>
									<c:choose>
										<c:when test="${k.m_idx == midx}">
											<td><a href="#" class="delCU" v_idx="${k.v_idx}">${k.name}</a></td>
										</c:when>
										<c:otherwise>
											<td>${k.name}</td>
										</c:otherwise>
									</c:choose>
								</tr>
							</c:forEach>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="3">
									<%-- ���� --%> <c:choose>
										<c:when test="${pvo.beginBlock <= pvo.pagePerBlock }">

										</c:when>
										<c:otherwise>
											<span style="color: tomato; padding: 0.3em;"> <a
												href="cheerUp.do?cPage=${pvo.beginBlock-pvo.pagePerBlock}">��������</a>
											</span>
										</c:otherwise>
									</c:choose> &nbsp;&nbsp; <%-- ��ȣ --%> <c:forEach
										begin="${pvo.beginBlock }" end="${pvo.endBlock}" step="1"
										var="k">
										<c:choose>
											<c:when test="${k==pvo.nowPage}">
												<span style="font-weight: bold; color: #8a35ba;">${k}</span>
											</c:when>
											<c:otherwise>
												<span> <a href="cheerUp.do?cPage=${k}">${k}</a>
												</span>
											</c:otherwise>
										</c:choose>
									</c:forEach> &nbsp;&nbsp; <%-- ���� --%> <c:choose>
										<c:when test="${pvo.endBlock >= pvo.totalPage}">

										</c:when>
										<c:otherwise>
											<span style="color: tomato; padding: 0.3em;"> <a
												href="cheerUp.do?cPage=${pvo.beginBlock+pvo.pagePerBlock}">��������</a>
											</span>
										</c:otherwise>
									</c:choose>
								</td>
							</tr>
						</tfoot>
					</c:otherwise>
				</c:choose>
			</table>
		</div>
		<%@include file="bottom.jsp"%>
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		$('#test').on('keyup', function() {
			$('#test_cnt').html("(" + $(this).val().length + " / 200)");

			if ($(this).val().length > 200) {
				$(this).val($(this).val().substring(0, 200));
				$('#test_cnt').html("(200 / 200)");
			}
		});

		$('#cheerWrite').on('click', function() {
			$.ajax({
				url : "goVegan.do",
				type : "POST",
				data : {
					'cPage' : '${pvo.nowPage}',
					'v_context' : $('#test').val(),
					'm_idx' : '${midx}'
				},
				dataType : "text",
				success : function(data) {
					if (data == 2) {
						alert("�Խñ� �ۼ��� �α����� �ؾ� �����մϴ�.");
						location.href = 'signIn.do'
					} else if (data == 1) {
						alert("���� �Ϸ�! ����ϸ鼭 ���ѳ�����!");
						location.href = 'cheerUp.do'
					} else {
						alert("�ۼ��� �����߽��ϴ�. ��ӵ� ������ ��� �����ּ���")
					}
				},
				error : function() {
					alert("�б����");
				}
			});
		});
		$('.delCU').on('click',function(){
			if(window.confirm('������ ���� �ǵ��� �� �����ϴ�.')){
				
			$.ajax({
				url : "deleteCheer.do",
				type : "POST",
				data : {
					'v_idx' :  $(this).attr("v_idx"),
					'm_idx' : '${midx}'
				},
				dataType : "text",
				success : function(data) {
					if(data==1){
						alert("�����Ͽ����ϴ�.");
						location.href = 'cheerUp.do'
					}else{
						alert("������ ���� �Ͽ����ϴ�.");						
					}
				},
				error : function() {
					alert("�б����");
				}
			});
			}
		})
	});
</script>
</html>