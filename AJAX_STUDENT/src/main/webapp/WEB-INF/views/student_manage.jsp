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
.stuTable tr, .stuTable td{
	border: 1px solid black; 
}
.stuInfoTable{
	width: 300px;
	margin: 0 auto;
	border: 1px solid black;
	border-collapse: collapse;
}
.stuInfoTable tr, .stuInfoTable td{
	border: 1px solid black;	
}
#changeScore{
	width: 480px;
	text-align: center;
	margin: 0 auto;
	background-color: aqua;
	
}
#checkScore{
	text-align: center;
	margin: 0 auto;
}
</style>
</head>
<body>
<table class="container">
	<colgroup>
		<col width="50%">
		<col width="50%">
	</colgroup>
	<tr>
		<td>
			<div style="text-align: center; margin-bottom: 20px;">
				<select onchange="selectStuListAjax();" id="a">
					<option value="">전체</option>
					<c:forEach items="${classList }" var="classInfo">
						<option value="${classInfo.classCode }" <c:if test="${classVO.classCode eq classInfo.classCode }">selected </c:if> >${classInfo.className }</option>
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
					<tbody id="stuListTbody">
						<c:forEach items="${stuList }" var="stuInfo" varStatus="status">
							<tr>
								<td>${stuList.size()-status.index}</td>
								<td><span onclick="showInfo(${stuInfo.stuNum});" style="cursor: pointer;">${stuInfo.stuName }</span></td>
								<td>${stuInfo.className }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</td>
		<td>
			<div id="stuDetailDiv">
				
			</div>
		</td>
	</tr>
</table>
<script src="https://code.jquery.com/jquery-latest.min.js"></script><!--jquery 를 사용할 수 있게 하는 것  -->
<script type="text/javascript" src="/resources/js/student_manage.js?ver=43"></script>
</body>
</html>