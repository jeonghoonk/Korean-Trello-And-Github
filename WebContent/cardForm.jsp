<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>card</title>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script>
	$(document).ready(function() {
	  var placeholderTarget = $('.textbox input[type="text"]');
	  
	  //포커스시
	  placeholderTarget.on('focus', function(){
	    $(this).siblings('label').fadeOut('fast');
	  });

	  //포커스아웃시
	  placeholderTarget.on('focusout', function(){
	    if($(this).val() == ''){
	      $(this).siblings('label').fadeIn('fast');
	    }
	  });
	});
</script>

<style type="text/css">

body{
	display:inline;
	width:100%;
}

.title{
	margin-top:10px;
	margin-left:210px;
}

.description{
	margin-top:10px;
	margin-left:210px;
}

.attachment{
	margin-top:10px;
	margin-left:210px;
}

.comment{
	margin-top:10px;
	margin-left:210px;
}


.textbox {position: relative; width: 300px;}

.textbox label {
  position: absolute;
  left: 1px;  /* input 요소의 border-left 설정값 만큼 */
  padding: .8em .5em;  /* input 요소의 padding 값 만큼 */
  color: #999;
  cursor: text;
}

.textbox input[type="text"] {
  width: 100%;  /* 원하는 너비 설정 */ 
  height: auto;  /* 높이값 초기화 */
  line-height : normal;  /* line-height 초기화 */
  padding: .8em .5em; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */
  border: 1px solid #999;
  border-radius: 0;  /* iSO 둥근모서리 제거 */
  outline-style: none;  /* 포커스시 발생하는 효과 제거를 원한다면 */
  appearance: none;
}


input[type=button]{	/* '추가' button */
	margin-left: 0%;
    width: 100px;
	height: 25px;
    background-color:skyblue;
	border: none;
}


</style>
</head>

<body>

<div class="title">
<img src="image\01.png" width="20" height="20">
<h5>한글판 트렐로 사용방법</h5>
<p>속한 리스트: 한글판 트렐로</p>
</div>

<div class="description">
<img src="image\02.png" width="20" height="20">
<h6>설명</h6>
<p>아래에 트렐로 설명서를 첨부했습니다.<br/>꼭 참고하시기 바랍니다.</p>
</div>

<div class="attachment"> 
<img src="image\03.png" width="20" height="20">
<h6>첨부 파일</h6>
<div border="1">
<p>asd</p>
</div>
</div><br/><br/><br/>

<div class="comment">
<img src="image/04.png" width="20" height="20">
<h6>댓글 추가</h6>
<div class="textbox">
  <label for="ex_input">댓글을 써주세요...</label>
  <input type="text" id="ex_input">
  <input type="button" value="추가" onclick="">
</div>

</div>


</body>
</html>