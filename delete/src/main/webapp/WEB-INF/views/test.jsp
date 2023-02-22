<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul class="list">
		<li>Lorem ipsum dolor sit amet.</li>
		<li>Lorem ior sit amet.</li>
		<li>Lorem ipsum</li>
	</ul>

	<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
	<script>
		// 객체를 선언
		var obj = {
			daum : 'http://daum.net',
			naver : 'http://naver.com'
		};
		// $.each() 메서드의 첫번째 매겨변수로 위에서 선언한 객체를 전달
		$.each(obj, function(index, item) {
			// 객체를 전달받으면 index는 객체의 key(property)를 가리키고
			// item은 키의 값을 가져옵니다.
			console.log(index,item);
			var result = '';
			result += index + ' : ' + item;
			console.log(result);
			// daum : http://daum.net
			// naver : http://naver.com
		})
		// 객체을 선언
		var arr = [ {
			title : '다음',
			url : 'http://daum.net'
		}, {
			title : '네이버',
			url : 'http://naver.com'
		} ];
		// $.each() 메서드의 첫번째 매겨변수로 위에서 선언한 배열은 전달
		$.each(arr, function(index, item) {
			// 두 번째 매개변수로는 콜백함수인데 콜백함수의 매개변수 중
			// 첫 번째 index는 배열의 인덱스 또는 객체의 키를 의미하고
			// 두 번째 매개 변수 item은 해당 인덱스나 키가 가진 값을 의미합니다.
			console.log(index,item);
			var result = '';
			result += index + ' : ' + item.title + ', ' + item.url;
			console.log(result);
			// 0 : 다음, http://daum.net
			// 1 : 네이버, http://naver.com
		})		

		$('.list li').each(function(index, item) {
			// 인덱스는 말 그대로 인덱스
			// item 은 해당 선택자인 객체를 나타냅니다.
			var txt = $(item).text();           //콜백함수로 넘어온 item을 jQuery에서 사용할수 있도록 하는 코드
            console.log(index,txt);
			
            var result = '';
			result += index + ' : ' + txt;
			console.log(result);

			$(item).addClass('li_0' + index)
			//console.log(txt);
			console.log("0"+$('.li_00').text());
			console.log("1"+$('.li_01').text());
			console.log("2"+$('.li_02').text());
			
			console.log(result);

			// item 과 this는 같아서 일반적으로 this를 많이 사용합니다.
			// $(this).addClass('li_0' + index);
			// li 의 클래스에 li_00, li_01, li_02 가 추가되어 있을 것
		});
	</script>

</body>
</html>