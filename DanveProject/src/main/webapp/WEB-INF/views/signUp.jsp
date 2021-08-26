<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
      width: 820px;
      height: 833px;
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
background: rgba(0, 0, 0, .5);
z-index: 99;

}
    table.type1 {
      margin: 0 auto;
      border-bottom: 1px solid gray;
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
    
     .btn_type2 {
      margin-left:1em;
      float:right;
      background-color: green;
      text-decoration: none;
      width: 90px;
      height: 30px;
      line-height: 30px;
      color: white;
      text-align: center;
      border-radius: 3px;
      padding: 0px;
      font-size: 12px
    }
  </style>
</head>

<body>
  <div class="popup">
    <h2>일반 회원가입</h2>
    <div class="con">
	<form action="">
      <table class="type1">
        <tbody>
          <tr>
            <th rowspan="1">
              <label for="id">아이디</label><span>*<em>필수입력</em></span>
            </th>
            <td><input id="id" type="text" placeholder="아이디를 입력해주세요."></td>
            <td><button onclick="chk_id()" class="btn_type2">중복확인</button></td>
          </tr>
          <tr>
            <th>
              <label for="name">닉네임</label><span>*<em>필수입력</em></span>
            </th>
            <td><input id="name" type="text" placeholder="닉네임을 입력해주세요."></td>
          </tr>
          <tr>
            <th>
              <label for="pwd">비밀번호</label><span>*<em>필수입력</em></span>
            </th>
            <td><input id="pwd" type="password" placeholder="비밀번호를 입력해주세요."></td>
          </tr>
          <tr>
            <th>
              <label for="pwd1">비밀번호확인</label><span>*<em>필수입력</em></span>
            </th>
            <td><input id="pwd1" type="password" placeholder="비밀번호를 입력해주세요."></td>
          </tr>
          <tr>
            <th>
              <label for="email">이메일</label><span>*<em>필수입력</em></span>
            </th>
            <td><input id="email" type="email" placeholder="이메일을 입력해주세요"></td>
          </tr>
          <tr>
            <th>
              개인정보 수집 <br> 동의 체크박스
            </th>
            <td>
              <ul>
                <li><input type="checkbox" id="chk1_1"><label for="chk1_1">단비의 개인정보는 ~~~위함입니다.</label></li>
                <li><input type="checkbox" id="chk1_2"><label for="chk1_2">정보는 ~~~을 기준으로 소멸됩니다.</label></li>
                <li><input type="checkbox" id="chk1_3"><label for="chk1_3">위 사항에 동의하신다면 체크해주세요.</label></li>
              </ul>
            </td>
          </tr>
        </tbody>
      </table>
	</form>
    </div>
    <div class="txt_center">
      <a href="danveP.do" id="signUp" class="btn_type1">가입하기</a>
    </div>
    <a href="danveP.do" class="close" style="color: black;">닫기</a>
  </div>
  <div class="dim"></div>
</body>
<script>
  $(document).ready(function(){
    // $(".open").on('click',function(){
    //   $(".popup").show();
    //   $(".dim").show();
    // });
    // $(".close").on('click',function(){
    //   $(this).parent().hide();
    //   $(".dim").hide();
    // });
    $(".close").on('click',function(){
      history.go("mainP.do");
    })    
    $("#signUp").on('click', function() {
		var id = $('#id').val();
		var pwd = $('#pwd').val();
		var name = $('#name').val();
		var email = $('#email').val();
		
		location.href='signUp_go.do?id='+id+'&pwd='+pwd+'&name='+name+'&email='+email;
	});
  });


</script>

</body>
</html>