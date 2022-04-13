<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
	margin: 0 auto;
	width: 800px;
	border: 1px solid black;
	border-collapse: collapse;
	margin-top: 60px;
}
tr td{
	border: 1px solid black;
}
h1{
	text-align: center;
	margin-top: 50px;
}
</style>
</head>
<body>
<div>
<h1>회원 목록 조회</h1>
	<table>
		<colgroup>
			<col width="10%">
			<col width="10%">
			<col width="10%">
			<col width="30%">
			<col width="40%">
		</colgroup>
		<tr>
			<td>id</td>
			<td>이름</td>
			<td>나이</td>
			<td>주소</td>
			<td>생일 정보</td>
		</tr>
		<c:forEach items="${memberLists }" var="mem">
			<tr>
				<td>${mem.memberId }</td>
				<td>${mem.memberName }</td>
				<td>${mem.memberAge }</td>
				<td>${mem.memberAddr }</td>
				<td>${mem.memberBirthday }</td>
			</tr>
		</c:forEach>
	</table>
	<c:if test="${not empty loginInfo}" >
		<input type="hidden" id="loginSuccess">
	</c:if>
</div>
</body>
<script src="/resources/js/common/menu.js?ver=2" type="text/javascript"></script>
</html>