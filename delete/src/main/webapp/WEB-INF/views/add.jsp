<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="">
1. 서버로 요청해서 페이지 내용을 변경하는법<hr>
몇개의 숫자를 더하겠습니까? <input type="number" name="amount"> 
<input type="submit" value="출력" id="submit">
</form>
<hr>
<form action="/result" >
	<c:if test="${param.amount!=null }">
		<c:forEach begin="1" end="${param.amount-1}" step="1">	
			<input type="number" name="num"> +  
		</c:forEach>	
		<input type="number" name="num">
	</c:if> 
	<br>
	<c:if test="${param.amount!=null }">
		<input type="submit" value="계산" >
	</c:if>
	<input type="hidden" name="add" value="0">
</form>

</body>
</html>