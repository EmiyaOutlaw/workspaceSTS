<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.loginSpan:hover{
	cursor: pointer;
}
#joinModal .form-label {
    margin-bottom: 0;
}
#joinModal label {
    font-weight: bold;
    font-style: italic;
}
</style>
</head>
<body>
<div class="row">
	<div class="col text-end">
		<c:choose>
			<c:when test="${not empty sessionScope.loginInfo }">
				${sessionScope.loginInfo.memberName }님 반갑습니다!
				<a href="/member/logout">Logout</a>
			</c:when>
			<c:otherwise>
				<span class="loginSpan" data-bs-target="#loginModal" data-bs-toggle="modal">Login</span>
				<span class="loginSpan" data-bs-target="#joinModal" data-bs-toggle="modal">Join</span>
			</c:otherwise>
		</c:choose>
	</div>
</div>



<!-- loginModal -->
<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
      	<form action="/member/login" method="post">
	        <div class="row">
	        	<div class="mb-3">
	        		<input name="memberId" class="form-control" type="text" id="memberId" placeholder="Input ID here" required >
	        	</div>
	        </div>
	        <div class="row">
	        	<div class="mb-3">
	        		<input name="memberPassword" class="form-control" type="text"  id="memberPassword" placeholder="Input Password here" required >
	        	</div>
	        </div>
	        <div class="row">
	        	<div class="col d-grid gap-2">
		        	<button type="submit" class="btn btn-primary" id="loginButton">LOGIN</button>
	        	</div>
	        </div>
        </form>
      </div>
    </div>
  </div>
</div>


<!-- join Modal -->
<div class="modal fade" id="joinModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">
				<form class="row g-3" action="/member/join" method="post">
					<div class="col-12">
						<label for="inputEmail4" class="form-label">ID</label>
						<input type="text" class="form-control" id="inputEmail4" name="memberId">
					</div>
					<div class="col-12">
						<label for="inputEmail4" class="form-label">PASSWORD</label>
						<input type="password" class="form-control" id="inputEmail4" name="memberPassword">
					</div>
					<div class="col-12">
						<label for="inputEmail4" class="form-label">NAME</label>
						<input type="text" class="form-control" id="inputEmail4" name="memberName">
					</div>
					<div class="col-12">
						<label for="inputEmail4" class="form-label">나이</label>
						<input type="text" class="form-control" id="inputEmail4" name="memberAge">
					</div>
					<div class="col-12">
						<label for="inputEmail4" class="form-label">주소</label>
						<input type="text" class="form-control" id="inputEmail4" name="memberAddr">
					</div>
					<div class="col-12">
						<label for="inputEmail4" class="form-label">생일</label>
						<input type="text" class="form-control" id="inputEmail4" name="memberBirthday" placeholder="ex)19990909">
					</div>
					<div class="col-12 d-grid gap-2">
						<button type="submit" class="btn btn-primary">JOIN</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js?ver=4"></script>
<script src="/resources/js/common/menu.js" type="text/javascript"></script>
</html>