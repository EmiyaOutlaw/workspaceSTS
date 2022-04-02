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
 .writeButton{
 	margin: 0 auto;
 	margin-top: 30px;
 	width: 100px;	
 }
 h1{
 	text-align: center;
 }
</style>
</head>
<body>
<div class="container">
	<h1>무법자의 과제</h1>
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
					<td style="text-align: center">${boardList.boardNum }</td>
					<td><a href="/board/boardDetail?boardNum=${boardList.boardNum }">${boardList.boardTitle }</a></td>
					<td>${boardList.boardWriter }</td>
					<td>${boardList.createDate }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<form action="/board/boardWrite" method="post">
		<div class="writeButton">
			<input type="submit" value="글쓰기">
		</div>
	</form>
</div>
<script src="https://code.jquery.com/jquery-latest.min.js"></script><!--jquery 를 사용할 수 있게 하는 것  -->
<script type="text/javascript" src="/resources/js/board_list.js?ver=0"></script>
</body>
</html>