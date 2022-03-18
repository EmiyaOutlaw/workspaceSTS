//도서 등록 버튼 클릭 시 실행
function regBook(){
	
	var selectBox = document.getElementById("categorySelector").value;
	
	//카테고리 미 선택 시 alert
	if(selectBox == 1){
		alert('카테고리를 선택 해 주세요!');
		return;
	}
	
	//도서명 미입력 시 alert
	
	var bookName = document.getElementById("bookName").value
	
	if(bookName == ''){
		alert('도서명을 넣거라! 무례한 것아');
		return ;
	}
	
	//submit
	
	var formTag = document.getElementById('regItemForm');
	formTag.submt();
}