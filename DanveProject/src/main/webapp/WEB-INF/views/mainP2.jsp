<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<style>
    *{
        margin: 0%;
        padding: 0;
    }
    .indexTopTitle{
        width: 100%;
        height: 40%;
        background: violet;
        border: 1px solid violet;
        padding: 0%;
        margin: 0% auto;
        text-align: right;
        font-size: 250%;
        line-height: 350%;
    }
    .indexTopTitle p{
        margin-right: 10%;
    }
    .indexMidleMenu{
        margin: 15% auto;
        width: 100%;
        height: 40%;
        text-align: center;
        line-height: 40%;
        padding: 0%;
    }
    .indexMidleMenu ul{
        padding: 0%;
    }
    .indexMidleMenu ul li{
        width: 20%;
        margin: 0% 2%;
        list-style-type: none;
        display: inline-block;
        font-size: 0.7rem;
    }
    .indexMidleMenu ul li button{
        border: none;
        cursor: pointer;
        width: 100%;
        height: 11rem;
       color: black;
    }
    .indexMidleMenu ul li button:hover{
        border: 1px solid green;
        transform: rotate(360deg);
    }
    .bottomImform{
        width: 100%;
        height: 0%;
        text-align: center;
        margin: 15% auto;
        margin: 0% auto;
    }
    .bottomImform{
        padding: 0%;
        position: absolute;
        bottom: 20%;
    }
    .bottomImform ul li{
        width: 20%;
        margin: 0% 2%;
        list-style-type: none;
        display: inline-block;
        font-size: 1.5rem;
        height: 8.5rem;
        line-height: 8.5rem;
    }
    .bottomImform ul li i{
        cursor: pointer;
        font-size: 35px;
    }
</style>
<body>
<div class="indexTopTitle">
        <p>단비:타이틀명</p>
    </div>
    <div class="indexMidleMenu">
        <ul>
            <li><button onclick="danveP()">단비란?</button></a></li>
            <li><button>다큐멘터리실험</button></a></li>
            <li><button>비건다짐</button></a></li>
            <li><button>공유하기</button></a></li>
        </ul>
    </div>
    <div class="bottomImform">
        <ul>
            <li><i class="far fa-paper-plane"></i></li>
            <li><i class="fab fa-instagram"></i></li>
            <li><i class="fab fa-twitter"></i></li>
            <li><i class="fas fa-share-alt"></i></li>
        </ul>
    </div>
</body>
<script type="text/javascript">
	function danveP() {
		location.href="danveP.do"
	}
</script>
</html>