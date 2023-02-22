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
몇개의 숫자를 더하겠습니까? <input type="number" name="amount"> 
<input type="submit" value="출력" id="submit">
</form>
<br>
<form action="/result" >
	<c:forEach begin="1" end="${param.amount}" step="1">	
		<input type="number" name="num"> 
	</c:forEach>
	<br>
	<c:if test="${param.amount!=null }">
	<input type="submit" value="계산" >
	</c:if>
	<input type="hidden" name="add" value="0">
</form>


</body>
</html>