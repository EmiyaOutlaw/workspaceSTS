//장바구니 상품 삭제 
function deleteCart(tag){
	var result = confirm('자네 진심인가?');
	
	if(result){
		//var formTag = document.getElementById('deleteCartForm');
		
		//var formTAg = document.getElementsByClassName('deleteCartForm');
		//formTag.submit();
		
		
		tag.parentNode.submit(); //부모 태그 찾아가기
		
	
	}
}

//상품 수량 변경

function updateItemCnt(selectedTag, itemCode){
	
	var itemCnt = selectedTag.parentNode.previousElementSibling.firstElementChild.value;
	
	
	
	$.ajax({
		url: '/cart/updateItemCnt', //요청경로
		type: 'post',
		data: {'itemCode':itemCode, 'itemCnt':itemCnt}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			//ajax 실행 성공 후 실행할 코드 작성
			alert('상품 수량을 변경하였지 훗! ');
		},
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});
	
	
}