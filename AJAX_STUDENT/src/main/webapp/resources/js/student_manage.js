
/* 페이지 로딩 후 실행 */
$(document).ready(function(){
	
});
	
/* 함수선언 영역*/
(function($){
	 /* aaa = function(){
	   
	 };*/
	 
	  selectStuList = function(){
	
		var classCode = $('#a').val();
		location.href = '/student/studentList?classCode=' + classCode;
	  }
	
	selectStuListAjax = function(){
		
		$.ajax({
			url: '/student/sutdentListAjax', //요청경로
			type: 'post',
			data: {}, //필요한 데이터 '데이터이름':값
			success: function(result) {
				//ajax 실행 성공 후 실행할 코드 작성
				alert('성공');
			},
			error: function() {
				//ajax 실행 실패 시 실행되는 구간
				alert('실패');
			}
		});
	}
	
})(jQuery);