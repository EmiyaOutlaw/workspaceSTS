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
.uploade_write{
 	margin: 0 auto;
 	margin-top: 30px;
 	width: 100px;
 	background-color: aqua;	
 }
textarea{
 	resize: none;
 }
h1{
 	text-align: center;
 	margin-top: 50px;
 }
.backPage{
 	margin: 0 auto;
 	margin-top: 30px;
 	width: 100px;
}
</style>
</head>
<body>
<div>
	<h1>상세조회라고 들어 보았는가?</h1>
	<table>
		<colgroup>
			<col width="20%">
			<col width="80%">
		</colgroup>
			<tr>
				<td>번호</td>
				<td>${boardDetail.boardNum }</td>
			</tr>
			<tr>
				<td>제목</td>
				<td>${boardDetail.boardTitle }</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>
					<textarea rows="8" cols="72">
						${boardDetail.boardContent }
					</textarea>
				</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${boardDetail.boardWriter }</td>
			</tr>
	</table>
	<div class="backPage">
		<input type="button" value="뒤로가기" onclick="location.href='/board/boardList'">
	</div>
</div>		
</body>
</html>