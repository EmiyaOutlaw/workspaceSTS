<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<div class="department_add">
	-부서등록<br>
	부서명 <input type="text"> 
	지역 
	<select>
		<option value="서울">서울</option>
		<option value="부산">부산</option>
		<option value="대전">대전</option>
		<option value="대구">대구</option>
		<option value="인천">인천</option>
	</select>
	<input type="submit" value="등록">
</div>
<div class="department_num">-부서 번호</div>
	<table>
		<tr>
			<td>부서번호</td>
			<td>부서명</td>
			<td>지역</td>
		</tr>
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
	</table>
</body>
</html>