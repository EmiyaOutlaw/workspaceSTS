<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head> 
<body>
게시글 목록 페이지 입니다<br>
<c:forEach items="${boardList }" var="board">
${board.boardNum } / <a href="/board/boardDetail?boardNum=${board.boardNum }">${board.title }</a> / ${board.writer }<br>
</c:forEach>
<br>
<!-- 제목, 내용 작성자만 입력  -->
<input type="button" value="글등록" onclick="location.href='/board/boardWrite';">
</body>
</html>