<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
	width: 900px;
	margin: 0 auto;
	border: 1px solid black;
	border-collapse: collapse;
}
.container > tbody > tr{
	height: 600px;
	border: 1px solid black;
}
.container > tbody > tr > td{
	border: 1px solid black;
}
.stuTable{
	margin: 0 auto;
	width: 400px;
	border: 1px solid black;
	text-align: center;
	border-collapse: collapse;
}
.stuTalbe tr, .stuTable td{
	border: 1px solid black;
} 
</style>
<body>
<table class="container">
	<tr>
		<td>
			<div style="text-align: center; margin-bottom: 20px;">
				<select>
					<option>전체</option>
					<c:forEach items="${classList}" var="classInfo">
						<option>${classInfo.className }</option>
					</c:forEach>
				</select>
			</div>
			<div>
				<table class="stuTable">
					<thead>
						<tr>
							<td>No</td>
							<td>학생명</td>
							<td>학급명</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td></td>
							<td>숨결</td>
							<td>야생의</td>
						</tr>
					</tbody>
				</table>
			</div>
		</td>
		<td>
			<div></div>
		</td>
	</tr>
</table>
</body>
</html>