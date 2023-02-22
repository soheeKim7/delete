<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${add==0 }">
		다 더한 값은 <br>
		${result } 이다
	</c:if>
	<c:if test="${sub==1 }">
		다 뺀 값은 <br>
		${result } 이다
	</c:if>
	<c:if test="${random==2 }">
		뽑힌 숫자는 <br>
		<c:forEach items="${rnum}" var="num">
			${num }  
		</c:forEach>
	</c:if>
	<br>
	<a href="/start">start로 돌아가기</a>

</body>
</html>