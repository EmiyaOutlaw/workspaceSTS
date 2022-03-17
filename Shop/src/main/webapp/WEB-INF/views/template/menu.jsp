<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<span class="loginSpan" data-bs-toggle="modal" data-bs-target="#loginModal">Login</span>
		<span class="joinSpan" data-bs-toggle="modal" data-bs-target="#joinModal">Join</span>
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
					<a class="navbar-brand" href="#">Navbar</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarNav"
						aria-controls="navbarNav" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarNav">
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="#">Home</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="#">IT/인터넷</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="#">사회과학</a>
							</li>
							<li class="nav-item"><a class="nav-link">경제/경영</a>
							</li>
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
 		<div class="row">
 			<div class="mb-3">
  				<input class="form-control" type="text" placeholder="Input ID here">	
 			</div>
 		</div>
 		<div class="row">
 			<div class="mb-3">
  				<input class="form-control" type="text" placeholder="Input Password here">				
 			</div>		
 		</div>
	 		<div class="row">
	 			<div class="col d-grid gap-2 ">
					<button type="button" class="btn btn-secondary">Login</button>
				</div>		
	 		</div>   
      </div>
    </div>
  </div>
</div>

<!--join Modal  -->
<div class="modal fade" id="joinModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
 		<div class="row">
 			<div class="mb-3">
  				<input class="form-control" type="text" placeholder="아이디">	
 			</div>
 		</div>
 		<div class="row">
 			<div class="mb-3">
  				<input class="form-control" type="text" placeholder="비밀번호">				
 			</div>		
 		</div>
 		<div class="row">
 			<div class="mb-3">
  				<input class="form-control" type="text" placeholder="이름">				
 			</div>		
 		</div>
 		<div class="row">
 			<div class="mb-3">
  				<input class="form-control" type="text" placeholder="전화번호">				
 			</div>		
 		</div>
 		<div class="row">
 			<div class="mb-3">
  				<input class="form-control" type="text" placeholder="이메일">				
 			</div>		
 		</div>
 		<div class="row">
 			<div class="mb-3">
  				<input class="form-control" type="text" placeholder="주소">				
 			</div>		
 		</div>
	 		<div class="row">
	 			<div class="col d-grid gap-2 ">
					<button type="button" class="btn btn-secondary">Join</button>
				</div>		
	 		</div>   
      </div>
    </div>
  </div>
</div>
</body>
</html>