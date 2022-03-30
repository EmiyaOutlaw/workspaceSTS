function selectStuListAjax(){
	
	var classCode = document.getElementById('selectClass').value;
	
	$.ajax({
		url: '/student/studentListAjax', //요청경로
		type: 'post',
		data: {'classCode':classCode}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			//조회된 데이터를 화면에 뿌려준다.
			//테이블용 삭제
			document.getElementById('stuListTbody').innerHTML = '';
			
			//태그에 다시 추가할 태그 생성
			var str  = '';
			for(var i = 0; i < result.length; i++){
				str +=;
				str +=;
				str +=;
				str +=;
				str +=;
				
			}
			
			
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});
	
}