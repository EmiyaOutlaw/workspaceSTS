<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="hidden" value="${cartVO.itemCode }" id="itemCode">
<script type="text/javascript">
	var result = confirm('장바구니에 상품이 등록 되었습니다.\n장바구니로 이동 하시겠습니까?')
	
	if(result){
		location.href='/cart/cartList';
	}
	else{
		var itemCode = document.getElementById('itemCode').value;
		location.hef='/item/itemDetail?itemCode=${cartVO.itemCode}' + itemCode;
	}
</script>
</body>
</html>