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
.joinSpan:hover{
	cursor: pointer;
}
</style>
</head>
<body>
<div class="row">
	<div class="col text-end">
		<c:choose>
			<c:when test="${not empty sessionScope.loginInfo }">
				${sessionScope.loginInfo.memName }님 반갑습니다.
				내 정보 보기
				<a href="/member/logout">Logout</a>
			</c:when>
			<c:otherwise>
				<span class="loginSpan" data-bs-toggle="modal" data-bs-target="#loginModal">Login</span>
				<span class="joinSpan" data-bs-toggle="modal" data-bs-target="#joinModal">Join</span>			
			</c:otherwise>
		</c:choose>
	</div>
</div>
<div class="row">
	<div class="col text-center">
		<h2>무법자의 숨결</h2>
	</div>
</div>
<div class="row">
	<div class="col">
		메뉴 들어옴
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
			<div class="container-fluid">
				<!-- <a class="navbar-brand" href="#">Navbar</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button> -->
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<c:forEach items="${menuList }" var="menu">
							<li class="nav-item">
								<a class="nav-link <c:if test="${menu.menuCode eq selectedMenu }">active</c:if>" href="/admin/${menu.menuUri }?menuCode=${menu.menuCode}"> ${menu.menuName }</a>
							</li>
						</c:forEach>			
					</ul>
				</div>
			</div>
		</nav>
	</div>
</div>
<!-- login Modal -->
	<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-body">
		     	 <form action="/member/login" method="post">
		      
		 		<div class="row">
		 			<div class="mb-3">
		  				<input class="form-control" type="text" placeholder="Input ID here" name="memId" required>	
		 			</div>
		 		</div>
		 		<div class="row">
		 			<div class="mb-3">
		  				<input class="form-control" type="password" placeholder="Input Password here" name="memPw" required>				
		 			</div>		
		 		</div>
			 		<div class="row">
			 			<div class="col d-grid gap-2 ">
							<button type="submit" class="btn btn-secondary">Login</button>
						</div>		
			 		</div>
		 		</form>   
	      </div>
	    </div>
	  </div>
	</div>


<!--join Modal  -->
<div class="modal fade" id="joinModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
 			<form class="row g-3" action="member/join" method="post">
               <div class="col-12">
                  <label for="inputEmail4" class="form-label">ID</label>
                  <input type="text" class="form-control" id="inputEmail4" name="memId">
               </div>
               <div class="col-12">
                  <label for="inputEmail4" class="form-label">PASSWORD</label>
                  <input type="password" class="form-control" id="inputEmail4" name="memPw">
               </div>
               <div class="col-12">
                  <label for="inputEmail4" class="form-label">NAME</label>
                  <input type="text" class="form-control" id="inputEmail4" name="memName">
               </div>
               <div class="col-12">
                  <label for="inputEmail4" class="form-label">EMAIL</label>
                  <input type="email" class="form-control" id="inputEmail4" name="memEmail">
               </div>
               <div class="col-8">
                  <label for="inputEmail4" class="form-label">ADDRESS</label>
                  <input type="text" class="form-control" id="addr" name="memAddrs" onclick="sample4_execDaumPostcode()">
               </div>
               <div class="col-4 d-grid">
                  <label for="inputEmail5" class="form-label">&nbsp;</label>
                  <button type="button" class="btn btn-secondary" id="inputEmail5" onclick="sample4_execDaumPostcode()">우편번호</button>
               </div>
               <div class="col-12">
                  <input type="text" class="form-control" id="memAddr" name="memAddrs">
               </div>
               <div class="col-4">
                  <label for="inputState" class="form-label">TELL</label>
                  <select id="inputState" class="form-select" name="memTells">
                     <option value="010" selected>010</option>
                     <option value="011">011</option>
                  </select>
               </div>
               <div class="col-4">
                  <label for="inputCity" class="form-label">&nbsp;</label>
                  <input type="text" class="form-control" id="inputCity" name="memTells">
               </div>
               <div class="col-4">
                  <label for="inputCity" class="form-label">&nbsp;</label>
                  <input type="text" class="form-control" id="inputCity" name="memTells">
               </div>
               <div class="col-12 d-grid gap-2">
                  <button type="submit" class="btn btn-primary">JOIN</button>
               </div>
            </form> 
      </div>
    </div>
  </div>
</div>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/resources/js/common/menu.js"type="text/javascript"></script>
</body>
</html>