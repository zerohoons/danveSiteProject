<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <title>Document</title>
  <style>
    body {
      box-sizing: border-box;
    }

    .popup {
      /* display: none; */
      position: fixed;
      left: 50%;
      top: 50%;
      width: 60%;
      height: auto;
      transform: translate(-50%, -50%);
      box-sizing: border-box;
      padding: 52px 60px 60px;
      z-index: 100;
      background-color: white;
    }

    .popup h2 {
      font-size: 32px;
      padding: 0 0 42px;
      font-weight: normal;
      color: #222;
      text-align: center;
      border-bottom: 3px solid #444;
      line-height: 100%;
    }

    .popup .close {
      position: absolute;
      right: 0;
      top: 0;
      /* background img : url(위치) no repeat활용해서 닫기 이미지 넣기 */
      width: 41px;
      height: 41px;
      color: transparent;
    }

    .popup .con {
      padding: 40 78px;
      border-bottom: 1px solid black;
    }

    .agree {
      margin-top: 18px;
      border: 1px solid #e8e8e8;
      position: relative;
      padding: 0 30px;
      height: 60px;
      line-height: 60px;
    }

    .agree label span {
      color: red;
    }

    .agree a.view {
      position: absolute;
      right: 30px;
      text-decoration: none;
      color: gray;
      background-color: mediumaquamarine;
      padding: 0 10px;
      top: 15px;
      width: 93px height: 30px;
      border: 1px solid #ddd;
      text-align: center;
      line-height: 30px;
      border-radius: 3px;
    }
.dim{
  /* display: none; */
position: fixed;
left: 0%;
top: 0%;
width: 100%;
height: 100%;
background: rgba(0, 0, 0, 0.1);
z-index: 99;

}
    table.type1 {
      margin: 0 auto;
      border-bottom: 1px solid gray;
      padding-bottom: 10px;
    }

    table.type1 th {
      font-size: 14px;
      color: #222;
      text-align: left;
      font-weight: normal;
    }

    table.type1 th,
    table.type1 td {
      padding: 0 0 20px;
    }

    table.type1 th span {
      color: #de4f41;
    }

    table.type1 th em {
      color: #999;
      display: none;
    }

    table.type1 textarea {
      height: 116px;
    }

    table.type1 tr:last-child th,
    table.type1 tr:last-child td {
      padding: 0;
    }

    input[type=text],
    input[type=password],
    input[type=email],
    input[type=number] {
      width: 100%;
      height: 48px;
      font-size: 13px;
      color: #373737;
      border: 1px solid #e8e8e8;
      background: #fff;
      text-decoration: none;
      text-indent: 20px;
      transition: all 0.5s;
      vertical-align: middle;
      border-radius: 3px;
    }

    input::-webkit-input-placeholder {
      color: #999;
      font-size: 13px;
    }

    input[type="checkbox"] {
      position: absolute;
      left: -3000%;
    }

    input[type="checkbox"]+label {
      font-size: 14px;
      color: #666;
    }

    input[type="checkbox"]+label::before {
      content: "";
      display: inline-block;
      width: 20px;
      height: 20px;
      border: 1px solid #f4f4f4;
      margin: 0 10px 0 0;
      background: #ddd;
      vertical-align: middle;
      box-sizing: border-box;
      transition: all 0.2s;
    }

    input[type="checkbox"]:checked+label::before {
      border: 7px solid #666;

    }

    ul li {
      list-style: none;
    }

    .txt_center {
      text-align: center;
      padding: 30px 0 0;
      margin: 10px auto;
    }

    .btn_type1 {
      background-color: green;
      text-decoration: none;
      width: 170px;
      height: 50px;
      line-height: 50px;
      color: white;
      text-align: center;
      border-radius: 3px;
      padding: 5px 10px;
    }
  </style>
</head>

<body>
  <div class="popup">
    <h2>로그인</h2>
    <div class="con">

      <table class="type1" id="myTable">
        <tbody>
          <tr>
            <th>
              <label for="id">아이디</label>
            </th>
            <td><input id="id" type="text" placeholder="아이디를 입력해주세요."></td>
          </tr>
          <tr>
            <th>
              <label for="pwd">비밀번호</label>
            </th>
            <td><input id="pwd" type="password" placeholder="비밀번호를 입력해주세요."></td>
          </tr>
        </tbody>
      </table>

    </div>
    <div class="txt_center">
      <a href="#a" class="btn_type1" id="signIn">로그인</a>
      <a href="signUp.do" class="btn_type1">회원가입</a>
      <a href="https://kauth.kakao.com/oauth/authorize?client_id=a3a0b627ce5360d0a7a4e1d5052dc1e0&redirect_uri=http://localhost:8090/login&response_type=code" class="btn_type1" id="kakao_login">카카오로그인</a>
    </div>
    <a href="danveP.do" class="close" style="color: black;">닫기</a>
  </div>
  <div class="dim"></div>
</body>
<script type="text/javascript">
  $(document).ready(function(){
    $(".close").on('click',function(){
      location.href='danveP.do';
    })
  });
  $(function() {
    $("#signIn").on('click', function(){
    	$.ajax({
    	url : "signInCheck.do",
		type : "POST",
		data : {'id' : $('#id').val(), 'pwd' : $('#pwd').val()},
		dataType : "text",
		success : function(data){
		   if(data=='1'||data=='2'){
			   alert("로그인 성공");
			   location.href='signInClear.do';
		   }else{
			   alert("일치하는 회원정보가 없어요.");
		   }
		},
		error : function(){
			alert("읽기실패");
		}
       	});
	});
})


</script>
</body>
</html>