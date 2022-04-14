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
}
textarea {
	resize: none;
	display: inline;
}
.workInfo{
	margin-top: 20px;
}
</style>
</head>
<body>
<div class="mainDiv">
	<div class="workInfo" >
		사원명 <textarea rows="1" cols="30"></textarea>
	</div>
	<div class="workInfo">
	 직급 
	 <select name="workerName">
		<option>학교</option>
		<option>게임</option>
		<option>몰?루</option>
	</select>
	부서
	<select name="workerName">
		<option>학교</option>
		<option>게임</option>
		<option>몰?루</option>
	</select>
	</div>
	<div class="workInfo">
	성별 
	<input type="radio" name="workerGender" value="남">남
	<input type="radio" name="workerGender" value="여">여
	나이
	<select name="workerAge">
		<option></option>
		<option></option>
	</select>
	</div>
	<div class="workInfo">
		연락처
		<textarea rows="1" cols="7"></textarea>
		<textarea rows="1" cols="7"></textarea>
		<textarea rows="1" cols="7"></textarea>
	</div>
	<div></div>

</div>
</body>
</html>