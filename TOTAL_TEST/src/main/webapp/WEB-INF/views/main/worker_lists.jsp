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
	width: 500px;
	border: 1px solid black;
	border-collapse: collapse;
}
tr td{
	border: 1px solid black;
}
</style>
</head>
<body>
<div>
	<table>
		<tr>
			<td rowspan="2">NO</td>
			<td colspan="4">사원 정보</td>
			<td colspan="2">부서 정보</td>
		</tr>
		<tr>
			<td>사원명</td>
			<td>연락처</td>
			<td>성별</td>
			<td>나이</td>
			<td>부서명</td>
			<td>지역</td>
		</tr>
		<c:forEach items="${workerLists }" var="worker">
			<tr>
				<td style="height: 60px;">${worker.workerNum }</td>
				<td style="height: 60px;">${worker.workerName }</td>
				<td style="height: 60px;">${worker.workerPhoneNum }</td>
				<td style="height: 60px;">${worker.workerGender }</td>
				<td style="height: 60px;">${worker.workerAge }</td>
				<td style="height: 60px;">${worker.deptList.deptName }</td>
				<td style="height: 60px;">${worker.deptList.deptLocal }</td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>