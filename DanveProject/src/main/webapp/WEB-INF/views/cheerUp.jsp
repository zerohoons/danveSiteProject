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
		<nav class="gnb-sub-menu">
			<div>
				<a href="docuP.do">어떤실험?</a> <a href="docuVideo.do">실험영상</a> <a
					href="commentedList.do?cPage=1">참여자후기</a> <a
					href="cheerUp.do?cPage=1"
					style="color: #8a35ba; font-weight: bold;">응원한마디</a>
			</div>
		</nav>

		<div class="contentBox">
			<form action="" method="post">
				<textarea id="test" name="c_context" cols="90" rows="10"
					style="display: inline-block;" placeholder="단비를 응원해주세요!"></textarea>
				<div style="display: inline-block; right: 0%;">
					<div id="test_cnt">(0 / 200)</div>
					<a id="cheerWrite" value="응원하기" href="#">응원하기</a>
				</div>
			</form>
			<table id="ccTable">
				<thead>
					<tr>
						<th width="80%">응원 한마디</th>
						<th width="20%">작성자</th>
					</tr>
				</thead>
				<c:choose>
					<c:when test="${empty clist}">
						<tbody>
							<tr>
								<td colspan="3">단비 프로젝트를 응원해주실래요?</td>
							</tr>
						</tbody>
					</c:when>
					<c:otherwise>
						<tbody>
							<c:forEach var="k" items="${clist}" varStatus="vs">
								<tr>
									<td>${k.c_context}</td>
									<c:choose>
										<c:when test="${k.m_idx == midx}">
											<td><a href="#" class="delCU" c_idx="${k.c_idx}">${k.name}</a></td>
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
									<%-- 이전 --%> <c:choose>
										<c:when test="${pvo.beginBlock <= pvo.pagePerBlock }">

										</c:when>
										<c:otherwise>
											<span style="color: tomato; padding: 0.3em;"> <a
												href="cheerUp.do?cPage=${pvo.beginBlock-pvo.pagePerBlock}">이전으로</a>
											</span>
										</c:otherwise>
									</c:choose> &nbsp;&nbsp; <%-- 번호 --%> <c:forEach
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
									</c:forEach> &nbsp;&nbsp; <%-- 다음 --%> <c:choose>
										<c:when test="${pvo.endBlock >= pvo.totalPage}">

										</c:when>
										<c:otherwise>
											<span style="color: tomato; padding: 0.3em;"> <a
												href="cheerUp.do?cPage=${pvo.beginBlock+pvo.pagePerBlock}">다음으로</a>
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
				url : "writecheer.do",
				type : "POST",
				data : {
					'cPage' : '${pvo.nowPage}',
					'c_context' : $('#test').val(),
					'm_idx' : '${midx}'
				},
				dataType : "text",
				success : function(data) {
					if (data == 2) {
						alert("게시글 작성은 로그인을 해야 가능합니다.");
						location.href = 'signIn.do'
					} else if (data == 1) {
						alert("응원해주셔서 감사해요!");
						location.href = 'cheerUp.do'
					} else {
						alert("작성에 실패했습니다. 계속된 실패의 경우 문의주세요")
					}
				},
				error : function() {
					alert("읽기실패");
				}
			});
		});
		$('.delCU').on('click',function(){
			if(window.confirm('삭제된 글은 되돌릴 수 없습니다.')){
				
			$.ajax({
				url : "deleteCheer.do",
				type : "POST",
				data : {
					'c_idx' :  $(this).attr("c_idx"),
					'm_idx' : '${midx}'
				},
				dataType : "text",
				success : function(data) {
					if(data==1){
						alert("삭제하였습니다.");
						location.reload();
					}else{
						alert("삭제에 실패 하였습니다.");						
					}
				},
				error : function() {
					alert("읽기실패");
				}
			});
			}
		})
	});
</script>
</html>
