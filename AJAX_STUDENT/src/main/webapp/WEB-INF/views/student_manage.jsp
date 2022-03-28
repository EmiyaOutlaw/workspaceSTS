<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

</style>
</head>
<body>
<div>
	<table>
		<tr>
			<td>
				<select>
					<option>전체</option>
					<c:forEach items="${classList }" var="classInfo">
						<option>${classInfo.className }</option>
					</c:forEach>
				</select>
			</td>
		</tr>
		<tr>
			<c:forEach items="${studentList }" var="stu">
				<td>${stu.stuNum }</td>
				<td>${stu.stuName }</td>
				<td>${stu.className }</td>
			</c:forEach>
		</tr>
	</table>
</div>
</body>
</html>