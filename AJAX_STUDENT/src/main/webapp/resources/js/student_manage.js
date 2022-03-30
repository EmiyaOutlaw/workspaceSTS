function selectStuListAjax(){
	var classCode = document.getElementById('a').value;
	
	$.ajax({
		url: '/student/sutdentListAjax', //요청경로
		type: 'post',
		data: {'classCode':classCode}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			//조회된 데이터를 화면에 뿌려준다.
			//테이블 용 삭제
			document.getElementById('stuListTbody').innerHTML = '';
			
			//태그에 다시 추가할 태그 생성
			var str = '';
			for(var i = 0; i < result.length ; i++){
				str += '<tr>';
				str += '<td>'+ (result.length - i) +'</td>';
				str += '<td><span onclick="showInfo('+ result[i].stuNum +');" style="cursor: pointer;">'+  result[i].stuName  + '</span></td>';
				str += '<td>'+ result[i].className+'</td>';
				str += '</tr>';
				
			}		 			 
			 
			document.getElementById('stuListTbody').innerHTML = str;
			
		},
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});
}

function showInfo(stuNum){
	
	$.ajax({
		url: '/student/stuDetail', //요청경로
		type: 'post',
		data: {'stuNum' :stuNum}, //필요한 데이터 '데이터이름':값
		
		success: function(result) {
			var str = '	<table class="stuInfoTable">';
			str += '<colgroup>';
			str += '<col width="20%">';
			str += '<col width="30%">';
			str += '<col width="20%">';
			str += '<col width="30%">';
			str += '</colgroup>';
			str += '<tr>';
			str += '<td>이름</td>';
			str += '<td colspan="3">' + result.stuName + '</td>';
			str += '</tr>';
			str += '<tr>';
			str += '<td>국어점수</td>';
			str += '<td><div id="korScoreDiv">' + result.korScore + '</div></td>';
			str += '<td>영어점수</td>';
			str += '<td><div id="engScoreDiv">' + result.engScore + '</div></td>';
			str += '</tr>';
			str += '</table>';
			str +='<div style="text-align: center" margin-top=16px;">          ';
			str +='		<input type="button" value="점수변경" onclick="setInput();">';
			str +='		<input type="button" value="확인" onclick="updateScore('+ result.stuNum +');">   ';
			str +='	</div>                                   ';			                                           
			document.getElementById('stuDetailDiv').innerHTML = str;		
						
								
		},
		error: function(stuNum) {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});
	
}


//점수 공간을 input tag로 변경
function setInput(){
	
	var korScoreDiv = document.getElementById('korScoreDiv');
	var originKorScore = korScoreDiv.innerText; 
	var korInput = '<input type="text" id="korScoreInput" style="width:90%" value="'+ originKorScore +'">';
	
	korScoreDiv.innerHTML = korInput;
	
	
	var engScoreDiv = document.getElementById('engScoreDiv');
	var originEngScore = engScoreDiv.innerText;
	var engInput = '<input type="text" id="engScoreInput" style="width:90%" value="'+ originEngScore +'">';
	engScoreDiv.innerHTML = engInput;
	
	$.ajax({
		url: '/student/changeScoreList', //요청경로
		type: 'post',
		data: {'stuNum' :result.stuNum}, //필요한 데이터 '데이터이름':값
		
		success: function(result) {
		
								
		},
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});
	
}

//점수변경 함수
function updateScore(stuNum){
	
	var korScore = document.getElementById('korScoreInput').value;
	var engScore = document.getElementById('engScoreInput').value;
	
	
	$.ajax({
		url: '/student/updateScore', //요청경로
		type: 'post',
		data: {'stuNum' : stuNum,
			  'korScore' : korscore,
			   'engScore' : engScore}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			//ajax 실행 성공 후 실행할 코드 작성
			alert('점수가 변경 되었습니다 ');
		
			document.getElementById('korScoreDiv').innerHTML = korScore;
			document.getElementById('engScoreDiv').innerHTML = engScore;
		},
		
		
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});

}

