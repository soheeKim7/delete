<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
3. 자바스크립트로 버튼 없이 바로 계산해서 알려주는 방법<hr>
몇개의 더하기를 수행하기겠습니까?
<input type="number" name="amount" id="amount"> <button id="button1">출력</button>
<hr>

<span id="form">
</span>
<hr><hr>
<input type="number" name="num1" id="num1"> <input type="number" name="num1" id="num2"> <br>
<input type="number" name="num1" id="num1">

<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script>
	$("#button1").click(function(){
		var count=$("#amount").val();
		console.log("입력한값",count);
		
		var html='<form action="/result">';
		for(var i=0;i<count-1;i++){
			html+='<input type="number" name="num" id="num"> +';
		}
		html += '<input type="number" name="num" id="num">'+
				'<br>'+
				'<input type="submit" value="계산" >'+
				'<input type="hidden" name="add" value="0">'+
				'</form>';		
		
		$("#form").html(html);
		
	});
	
	$("#num1, #num2").on("keyup",function(){
		var num1 = parseInt($("#num1").val());
		var num2 = parseInt($("#num2").val());
		var sum = num1+num2;
		console.log(num1);
		console.log(num2);		
		console.log(sum);		
	
	});
	
	$("#num1").each(function(index,value){
		var num = parseInt($(this).val());
		var sum = 0;
		console.log(num);
		sum += num;
		console.log(sum);		
	});
	

	
	
</script>




</body>
</html>