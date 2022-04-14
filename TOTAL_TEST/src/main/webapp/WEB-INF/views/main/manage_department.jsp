<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.department_num{
	width: 500px;
	margin: 0 auto;
	margin-top: 50px;
	margin-bottom: 20px;
}
table{
	border: 1px solid black;
	border-collapse: collapse;
	width: 500px;
	margin: 0 auto;
}
tr td{
	border: 1px solid black;
}
.department_add{
	margin: 0 auto;
	width: 500px;
	margin-top: 30px;
}
.department_info{
	margin: 0 auto;
	width: 500px;
}
</style>
</head>
<body>
<form action="/emp/addDepartment" method="post">
	<div class="department_add">
		-부서등록<br>
		부서명 <input type="text" name="deptName"> 
		지역 
		<select name="deptLocal">
			<option value="서울">서울</option>
			<option value="부산">부산</option>
			<option value="대전">대전</option>
			<option value="대구">대구</option>
			<option value="인천">인천</option>
		</select>
		<input type="submit" value="등록">
	</div>
</form>
<div class="department_num">-부서 번호</div>
	<table>
		<tr>
			<td>부서번호</td>
			<td>부서명</td>
			<td>지역</td>
		</tr>
		<c:forEach items="${departmentList }" var="dept">
			<tr>
				<td>${dept.deptNum }</td>
				<td>${dept.deptName }</td>
				<td>${dept.deptLocal }</td>
			</tr>
		</c:forEach>
	</table>
<c:if test=" ${not empty departmentList }">
	<input type="hidden" id="alarm_add_dept_success"> 	
</c:if>
</body>
<script src="/resources/js/manage_department.js?ver=1" type="text/javascript"></script>
</html>