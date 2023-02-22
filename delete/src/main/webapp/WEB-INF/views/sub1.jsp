<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
2. 자바스크립트로 요청해서 페이지 내용을 변경하는법<hr>
몇개의 숫자를 빼겠습니까?
<input type="number" name="amount" id="amount"> <button id="button1">출력</button>
<hr>
<span id="form">
</span>

<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script>
	$("#button1").click(function(){
		var count=$("#amount").val();
		console.log("입력한값",count);
		
		var html='<form action="/result">';
		for(var i=0;i<count-1;i++){
			html+='<input type="number" name="num"> -';
		}
		html += '<input type="number" name="num">'+
				'<br>'+
				'<input type="submit" value="계산" >'+
				'<input type="hidden" name="sub" value="1">'+
				'</form>';		
		
		$("#form").html(html);
		
	});
</script>

</body>
</html>