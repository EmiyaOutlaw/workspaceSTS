<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
 table {
 	margin: 0 auto;
    width: 800px;
    border: 1px solid #444444;
    border-collapse: collapse;
    margin-top: 100px;
 }
 tr, td {
    border: 1px solid #444444;
 }
</style>
</head>
<body>
<div class="container">
	<table>
		<thead>
			<tr style="text-align: center;">
				<td>글번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${boardList }" var="boardList">
				<tr>
					<td>${boardList.boardNum }</td>
					<td>${boardList.boardTitle }</td>
					<td>${boardList.boardWriter }</td>
					<td>${boardList.createDate }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>