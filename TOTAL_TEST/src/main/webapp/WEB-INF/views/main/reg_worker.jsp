<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.mainDiv{
	margin: 0 auto;
	width: 900px;
	margin-top: 50px;
	font-size: 30px;
}
textarea {
	resize: none;
	display: inline;
}
.workInfo{
	margin-top: 20px;
}
.button{
	margin-top: 30px;
}

</style>
</head>
<body>
<div class="mainDiv">
	<form action="/emp/addWorker" method="post">
		<div class="workInfo" >
			사원명 <input type="text"  name="workerName">
		</div>
		<div class="workInfo">
		 직급 
		 <select name="workerClass" required>
			<option value="부장">부장</option>
			<option value="과장">과장</option>
			<option value="차장">차장</option>
			<option value="대리">대리</option>
			<option value="사원">사원</option>
			<option value="신입">신입</option>
		</select>
		부서
		<select name="deptNum" required>
			<c:forEach items="${deptInfoLists }" var="dept">
				<option value="${dept.deptNum }">${dept.deptName }</option>
			</c:forEach>
		</select>
		</div>
		<div class="workInfo">
		성별 
		<input type="radio" name="workerGender" value="남" checked>남
		<input type="radio" name="workerGender" value="여">여
		나이
		<input type="text" name="workerAge">
		</div>
		<div class="workInfo" >
			연락처
			<input type="text" style="width: 200px;" name="workerPhoneNums">
			<input type="text" style="width: 200px;" name="workerPhoneNums">
			<input type="text" style="width: 200px;" name="workerPhoneNums">
		</div>
		<div class="button">
			<input type="submit"  value="등록">
		</div>
	</form>	
</div>
</body>
</html>