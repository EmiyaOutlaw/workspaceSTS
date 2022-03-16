<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/board/boardWrite" method="post">
	<div>
		<div>
			<div>제목: <input type="text" name="title"></div>
			<div>내용: <input type="text" name="content"></div>
			<div>작성자: <input type="text" name="writer"></div>
		</div>
		<div><input type="submit" value="글등록"></div>
	</div>
</form>
</body>
</html>