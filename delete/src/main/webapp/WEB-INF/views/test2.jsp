<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
첫번째 num1 : <input type="number" name="num1" id="num1" class="test"> num2 : <input type="number" name="num1" id="num2"> <br>
두번째 num1 : <input type="number" name="num1" id="num1" class="test">

<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script>
	
	$("#num1, #num2").on("keyup",function(){
		var num1 = parseInt($("#num1").val());
		var num2 = parseInt($("#num2").val());
		var sum = num1+num2;
		console.log("첫번째 num1 : "+num1);
		console.log("num2 : "+num2);		
		console.log("num1+num2 합계"+sum);		
	
	});
	
	$("#num1").each(function(){
		var num = parseInt($(this).val());
		var sum = 0;
		console.log("두번째 num1 : "+num);
		sum += num;
		console.log(sum);		
	});
	
	$("#num1, #num2").on("keyup",function(){
		$(".test").each(function(){
			var num = parseInt($(this).val());
			var sum = 0;
			if (!isNaN(num)) {
				console.log("test 숫자: "+num);
				sum += num;
				console.log("test 합계: "+sum);	
			}
			console.log("test 최종 합계: "+sum);
		});
	});

	
	
</script>


</body>
</html>