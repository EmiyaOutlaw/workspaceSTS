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

function updateItemCnt(selectedTag, itemCode, itemPrice){
	
	var itemCnt = selectedTag.parentNode.previousElementSibling.firstElementChild.value;
	
	$.ajax({
		url: '/cart/updateItemCnt', //요청경로
		type: 'post',
		data: {'itemCode':itemCode, 'itemCnt':itemCnt}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			
			//ajax 실행 성공 후 실행할 코드 작성
			alert('상품 수량을 변경하였지 훗! ');
			
			//총 가격 변경 
			var totalPrice = itemCnt * itemPrice;
			//closest :선택한 태그 기준으로 가장 가까운 부모 태그를 찾아간다.
			//id나 클래스로도 찾아 갈 수 있다. 
			selectedTag.closest('td').nextElementSibling.innerText = '￦'+ totalPrice.toLocaleString();
			
			
			//총 구매 가격 변경 
			var buyPrice = 0;
			var totalPriceTds = document.getElementsByClassName('totalPriceTd');
			for(var i = 0; i < totalPriceTds.length; i++){
				var originPrice = totalPriceTds[i].innerText; //￦10,000
				//originPrice.replace(',', '0'); //앞에 있는 걸 뒤에 있는걸로 대신한다.
				//substr(시작 인데스, 길이):문자열 자르기 함수
				var price = parseInt(originPrice.substr(1, originPrice.length-1).replace(/,/g, '')); //￦10,000 -> 10,000
				buyPrice += price;
			}
			document.getElementById('buyPriceDiv').innerText = '￦' + buyPrice.toLocaleString();
			
		},
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});
	
	
}

//체크박스 전체 선택, 전체 해제
function checkAll(){
	var isCheckd = document.getElementById('check').checked;
	var checkboxes = document.getElementsByClassName('chk');

	//제목줄의 체크박스가 체크 되었을 때...
	if(isCheckd){	
		for(var i = 0; i < checkboxes.length; i++){
			checkboxes[i].checked = true;
			
		}
	}
	
	else{
		for(var i = 0; i < checkboxes.length; i++){
			checkboxes[i].checked = false;
			
		}
	}
}

//선택 삭제

function deleteCarts(){

	/*var checkboxes = document.getElementsByClassName('chk')
		
		
		var cnt = 0;
		for(var i = 0; i < checkboxes.length; i++){
			if(checkboxes[i].checked){
				cnt++;
				
			}
			
		}
		*/
	//선택된 체크박스 		
	var chk = document.querySelectorAll('.chk:checked');		
			
	if(chk.length == 0){
		alert('삭제할 상품을 선택하세요');
		return;

	}


	var itemCodeArr = [];
	for(var i = 0; i < chk.length; i++)
		itemCodeArr[i] = chk[i].value;
		
		location.href='/cart/deleteCarts?itemCodeArr=' + itemCodeArr;
		
}


//선택 구매
function buy(){
	
	//평상시 하는 방법 
	//필요한 데이터를 가져온다.(상품코드, 수량)
	//체크한 상품의 상품코드
	var checkboxes = document.querySelectorAll('.chk:checked'); 
	
	var objArr = [];
		
	for(var i = 0; i <checkboxes.length; i ++){
		var obj = new Object();
		
		obj.itemCode = checkboxes[i].value; //itemCode는 check박스의 value값에 들어가게 세팅을 이미 해 놓아서 이렇게 쓰임. 
		obj.itemCnt = checkboxes[i].closest('tr').querySelector('input[type="number"]').value
		
		objArr[i] = obj;	
	}
	
	
	//JSON.stringify(objArr);
	
	$.ajax({
		url: '/buy/insertBuys', //요청경로
		type: 'post',
		data: {'data':JSON.stringify(objArr)}, //필요한 데이터 '데이터이름':값
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

//json(javascrip Object notation) vs javascript Object

