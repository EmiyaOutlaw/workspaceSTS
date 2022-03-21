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
<div class="list-group">
	<c:forEach items="${subMenuList }" var="subMenu">
		  <a href="/admin/${subMenu.menuUri }" class="list-group-item list-group-item-action active" aria-current="true">
			${subMenu.subMenuName }
		  </a>
	</c:forEach>
</div>
</body>
</html>