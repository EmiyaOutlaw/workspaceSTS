<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			사원명 <input type="text" >
		</div>
		<div class="workInfo">
		 직급 
		 <select name="workerClass" required>
			<option>부장</option>
			<option>과장</option>
			<option>차장</option>
			<option>대리</option>
			<option>사원</option>
			<option>신입</option>
		</select>
		부서
		<select name="deptName" required>
			<option>학교</option>
			<option>게임</option>
			<option>몰?루</option>
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