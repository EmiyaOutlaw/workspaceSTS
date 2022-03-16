<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
글번호 : ${board.boardNum }<br>
제목 : ${board.title }<br>
작성자 : ${board.writer } <br>
작성일 : ${board.createDate }<br>
조회수 : ${board.readCnt }<br>
</body>
</html>