<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/result">
숫자 뽑을 범위 시작값 : <input type="number" name="num1" id="num1">~ 
숫자 뽑을 범위 끝값 : <input type="number" name="num2" id="num2"> <br>
뽑을 갯수 : <input type="number" name="num3" id="num3"> <br>
<input type="submit" value="뽑기" id="cal">
<input type="hidden" name="random" value="2">
</form>

<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script>
$("#cal").click(function(e){
	var num1=$("#num1").val();
	var num2=$("#num2").val();
	var count=$("#num3").val();
	
	if((num2-num1+1)>=count){
		
	}else{
		e.preventDefault();
		alert("설정한 범위의 값보다 카운트값이 큽니다. \n범위나 카운트값을 다시 설정해주세요.")
	}
});

</script>

</body>
</html>