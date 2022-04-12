//joinModal 선택
var joinModal = document.getElementById('joinModal');
var loginModal = document.getElementById('loginModal');

//joinModal이 닫힐 때 자동시작하는 이벤트
joinModal.addEventListener('hidden.bs.modal', function (event) {
	//joinModal안에 있는 모든 input태드 선택
	var tags = document.querySelectorAll('#joinModal input');
	
	//선택된 태그들의 value값을 빈값으로 세팅
	for(var i = 0; i < tags.length ; i++){
		tags[i].value = '';
	}
});

//lginModal이 닫힐 때 자동시작하는 이벤트
loginModal.addEventListener('hidden.bs.modal', function (event) {
	//joinModal안에 있는 모든 input태드 선택
	var tags = document.querySelectorAll('#loginModal input');
	
	//선택된 태그들의 value값을 빈값으로 세팅
	for(var i = 0; i < tags.length ; i++){
		tags[i].value = '';
	}
});


var loginButton = document.getElementById("loginButton") //버튼을 만들고
loginButton.addEventListener("click", loginFunc);// 'click'이란 id의 버튼을 누르면  signFunc 함수를 실행 

function loginFunc(){
	var memberId = document.getElementById('memberId').value; 
	var memberPassword = document.getElementById('memberPassword');
	
	if(memberId == "memberId.value" && memberPassword == "memberPassword.value"){
		alert("로그인 성공")
		conole.log("로그인 성공했습니다.");
	}
	else{
		alert("로그인 실패")
	 	console.log("로그인 실패했습니다.")	
	}
	
}

