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
	width: 110%;
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

#pCTable a:hover{
color : gray;
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

</style>
<body>

	<div class="pageBox">
			<%@include file="top.jsp" %>
		<div id="fullpage">
			<div class="contentBox">
				<table id="pCTable">
					<thead>
						<tr>
							<th style="width: 15%">ȸ����ȣ</th>
							<th style="width: 20%">���̵�</th>
							<th style="width: 20%">�̸�</th>
							<th style="width: 30%">�̸���</th>
							<th style="width: 15%">��������</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty list}">
								<tr>
									<td colspan="5">���Ե� ȸ���� �����ϴ�.</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="k" items="${list}" varStatus="vs">
									<tr>
										<td id="list_${k.m_idx}">${k.m_idx}</td>
										<td>${k.id}</td>
										<td><a href="#" class="delMem" m_idx="${k.m_idx}">${k.name}</a></td>
										<td>${k.email}</td>
										<c:choose> 
										<c:when test="${k.groups==1}">
										<td><a href="#" class="changeGroups" m_idx= "${k.m_idx}" groups="${k.groups}">�Ϲ�</a></td>
										</c:when>
										<c:otherwise>
										<td><a href="#" class="changeGroups" m_idx= "${k.m_idx}" groups="${k.groups}">������</a></td>
										</c:otherwise>
										</c:choose>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="5">
								<%-- ���� --%> <c:choose>
									<c:when test="${pvo.beginBlock <= pvo.pagePerBlock }">

									</c:when>
									<c:otherwise>
										<span style="color: tomato; padding: 0.3em;"> <a
											href="list.do?cPage=${pvo.beginBlock-pvo.pagePerBlock}">��������</a>
										</span>
									</c:otherwise>
								</c:choose> &nbsp;&nbsp; <%-- ��ȣ --%> <c:forEach begin="${pvo.beginBlock }"
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
								</c:forEach> &nbsp;&nbsp; <%-- ���� --%> <c:choose>
									<c:when test="${pvo.endBlock >= pvo.totalPage}">

									</c:when>
									<c:otherwise>
										<span style="color: tomato; padding: 0.3em;"> <a
											href="commentedList.do?cPage=${pvo.beginBlock+pvo.pagePerBlock}">��������</a>
										</span>
									</c:otherwise>
								</c:choose>
							</td>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
			<%@include file="bottom.jsp" %>
	</div>
</body>
<script type="text/javascript">
		$(function() {
		    $('.changeGroups').on('click',function(){
		    	var groups =$(this).attr("groups");
		    	var change = "";
		    	if(groups=="1"){
		    		change = "�����ڷ�";
		    	}else{
		    		change = "�Ϲ�ȸ������";
		    	}
		    	if(confirm("ȸ�������� "+change+" �����մϴ�.")){
		    		
		    	$.ajax({
			    	url : "changeGroups.do",
					type : "POST",
					data : {'m_idx' : $(this).attr("m_idx"),
							'groups': groups},
					dataType : "text",
					success : function(data){
						location.reload();
						alert(data);
					},
					error : function(){
					alert("�б����");
					}
				});
		    	}
		       	});
		    
			$('.delMem').on('click',function(){
				if(window.confirm('������ ȸ���� �ǵ��� �� �����ϴ�.')){
					
				$.ajax({
					url : "deleteMem.do",
					type : "POST",
					data : {
						'm_idx' :  $(this).attr("m_idx"),
					},
					dataType : "text",
					success : function(data) {
						if(data==1){
							alert("�����Ͽ����ϴ�.");
							location.href = 'manageMem.do'
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