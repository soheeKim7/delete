<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
$(document).ready(function() {
	  $('#num').on('input', function() {
		  var num = parseInt($(this).val());
		  console.log("num 값 "+num);
		  if (!isNaN(num)) {
	  		  $('#add1').empty();
			  for (var i = 0; i<num; i++) {
				  $("#add1").append("<input type='number' class='alpha' name='a1'> + ");
				  console.log(i+"번째");
			  }
			  $('#butt').show();
		  } else {
			  $('#add1').empty();
			  $('#butt').hide();
			  $('#result').empty();
		  }
	  });

	  $('#butt').on('click', function() {
		  var a = 0;
		  $('.alpha').each(function() {
		      var value = parseInt($(this).val());
		      console.log("입력값 : "+value);
		      if (!isNaN(value)) {
			      console.log("계산전 : "+a);  
			      a += value;
			      console.log("계산후 : "+a);
		      }
		   });
		  console.log("최종 계산후 : "+a);
		  $('#result').empty();
		  $('#result').append('=' +a);
	  });

});
</script>
<body>
알파
<input type="number" id="num">
<div id="add1"></div>
<button id="butt" style="display: none">버튼</button>
<div id="result"></div>

<hr>
<form action="/result">	
	<input type="number" name="a1">+
	<input type="hidden" name = "h1" value="222" >
	<input type="submit" value="계산">	
</form>
<hr>

</body>
</html>