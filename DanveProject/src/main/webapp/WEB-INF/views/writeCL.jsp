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
					<a href="docuP.do">�����?</a> <a href="docuVideo.do">���迵��</a> <a
						href="commentedList.do?cPage=1"
						style="color: #8a35ba; font-weight: bold;">�������ı�</a> <a
						href="cheerUp.do?cPage=1">�����Ѹ���</a>
				</div>
			</nav>

			<div class="contentBox">
				<table id="pCTable">
					<thead>
						<tr>
							<th  width="50%">�۾���</th>
							<th><input type="text" id="r_writer"></th>
						</tr>
					</thead>
					<tbody>
							<tr><td colspan="2">����</td></tr>
							<tr>
								<td colspan="2">
								 <textarea rows="10" cols="45" id="p_comment">
								 </textarea>
								</td>
							</tr>						
					</tbody>
					<tfoot>
						<tr>
						<td width="50%">
						<a href="" id="complteCom">�ۼ��Ϸ�</a></td>
						<td width="50%">
						<a href="commentedList.do" id="backP">�ڷΰ���</a></td>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
		<%@include file="bottom.jsp"%>
	</div>
</body>
<script type="text/javascript">
$(document).ready(function() {
	$('#complteCom').on('click', function() {
		$.ajax({
			url : "complteCom.do",
			type : "POST",
			data : {
				'p_comment' : $('#p_comment').val(),
				'r_writer' : $('#r_writer').val()
			},
			dataType : "text",
			success : function(data) {
				if (data>0) {
					alert("�Խñ� �ۼ��� �Ϸ�Ǿ����ϴ�..");
					location.href = 'commentedList.do'
				} else {
					alert("�ۼ��� �����߽��ϴ�. ��ӵ� ������ ��� �����ּ���");
				}
			},
			error : function() {
				alert("�б����");
			}
		});
	});
	
	$('#backP').on('click', function() {
		location.href = 'commentedList.do'
	})
})
</script>
</html>