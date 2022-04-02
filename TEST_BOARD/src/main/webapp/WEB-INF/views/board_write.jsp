<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
}
 textarea{
 	resize: none;
 }
 h1{
 	text-align: center;
 	margin-top: 50px;
 }
</style>
</head>
<body>
<div>
	<h1>게시글을 작성하로 왔는가?</h1>
	<form action="/board/boardupload" method="post">
		<table>
			<colgroup>
				<col width="20%">
				<col width="80%">
			</colgroup>
				<tr>
					<td>제목</td>
					<td>
						<input type="text" name="boardTitle" placeholder="제목을 넣거라" size="70" required>
					</td>
				</tr>
				<tr>
					<td>내용</td>
					<td>
						<textarea name="boardContent" rows="8" cols="72" placeholder="내용을 넣거라"></textarea>
					</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td>
						<input type="text" name="boardWriter" placeholder="작성자를 불러오거라" size="70" required>
					</td>
				</tr>
		</table>
		<div class="uploade_write">
			<input type="submit" value="글 등록하기">
		</div>
	</form>
</div>		
</body>
</html>