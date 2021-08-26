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
		<div id="fullpage">
			<nav class="gnb-sub-menu">
				<div>
					<a href="docuP.do">어떤실험?</a> <a href="docuVideo.do">실험영상</a> <a
						href="commentedList.do?cPage=1"
						style="color: #8a35ba; font-weight: bold;">참여자후기</a> <a
						href="cheerUp.do?cPage=1">응원한마디</a>
				</div>
			</nav>

			<div class="contentBox">
				<table id="pCTable">
					<thead>
						<tr>
							<th style="width: 20%">번호</th>
							<th style="width: 30%">글쓴이</th>
							<th style="width: 50%">내용</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty list}">
								<tr>
									<td colspan="3">아직 비구름이 모이지 않았나봐요. 조금만 더 기다려주세요.</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="k" items="${list}" varStatus="vs">
									<tr>
										<td id="list_${k.p_idx}">${k.p_idx}</td>
										<td>${k.r_writer}</td>
										<td>
											<button class="callBtn" id="get_${k.p_idx}" idx="${k.p_idx}">
												${k.p_comment.substring(0,5)}...더보기</button>
										</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="3">
								<%-- 이전 --%> <c:choose>
									<c:when test="${pvo.beginBlock <= pvo.pagePerBlock }">

									</c:when>
									<c:otherwise>
										<span style="color: tomato; padding: 0.3em;"> <a
											href="list.do?cPage=${pvo.beginBlock-pvo.pagePerBlock}">이전으로</a>
										</span>
									</c:otherwise>
								</c:choose> &nbsp;&nbsp; <%-- 번호 --%> <c:forEach begin="${pvo.beginBlock }"
									end="${pvo.endBlock}" step="1" var="k">
									<c:choose>
										<c:when test="${k==pvo.nowPage}">
											<span style="font-weight: bold; color: #8a35ba;">${k}</span>
										</c:when>
										<c:otherwise>
											<span> <a href="commentedList.do?cPage=${k}">${k}</a>
											</span>
										</c:otherwise>
									</c:choose>
								</c:forEach> &nbsp;&nbsp; <%-- 다음 --%> <c:choose>
									<c:when test="${pvo.endBlock >= pvo.totalPage}">

									</c:when>
									<c:otherwise>
										<span style="color: tomato; padding: 0.3em;"> <a
											href="commentedList.do?cPage=${pvo.beginBlock+pvo.pagePerBlock}">다음으로</a>
										</span>
									</c:otherwise>
								</c:choose>
							</td>
						</tr>
						<c:choose>
							<c:when test="${login==2}">
								<tr>
									<td colspan="3">
										<a type="button" href="writeCL.do">글쓰기</a>
									</td>
								</tr>
							</c:when>
						</c:choose>
					</tfoot>
				</table>
			</div>
			<div>
				<table id='oneBox'>
				</table>
			</div>
		</div>
		<%@include file="bottom.jsp"%>
	</div>
</body>
<script type="text/javascript">
		
		$(function() {
		    $('.callBtn').on('click',function(){
		    	$('#oneBox').empty();
		    	$('#oneBox').animate({
					height:'0%'
				}, '100s')
				$('#oneBox').animate({
					display:"show",
					height:'15em'
				}, '1000s')
		    	$.ajax({
			    	url : "onelist.do",
					type : "POST",
					data : {'cPage':'${pvo.nowPage}',
							'idx' : $(this).attr("idx")},
					dataType : "json",
					success : function(data){
						var table = "<tr>";
						table += "<td>"+data["p_comment"]+"</td>";
						table += "</tr>";
						
						console.log(data["p_comment"]);
						
						$('#oneBox').append(table);
					},
					error : function(){
					alert("읽기실패");
					}
				});
		       	});
			})
	
</script>
</html>