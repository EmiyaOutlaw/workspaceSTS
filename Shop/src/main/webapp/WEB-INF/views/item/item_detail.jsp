<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row justify-content-center">
		<div class="col-6">
			<div class="row">
				<div class="col">
					<c:forEach items="${item.imgList }" var="img">
						<c:if test="${img.isMain eq 'Y' }">
							<img alt="" src="/resources/images/${img.attachedImgName }" width="100%">
						</c:if>
					</c:forEach>
				</div>
				<div class="col">
					<div class="co-12" style="height: 20%; display: flex; align-items: center;">
						${item.itemName }
					</div>
					<div class="co-12" style="height: 20%; display: flex; align-items: center;">
						<span id="priceSpan" data-price="${item.itemPrice }">
							<fmt:formatNumber value="${item.itemPrice }" pattern="\#,###"/>
						</span>
					</div>
					<div class="co-12" style="height: 20%; display: flex; align-items: center;">
						수량 <input id="ea" type="number" class="form-control" value="1" min="1" max="10">
					</div>
					<div class="co-12" style="height: 20%; display: flex; align-items: center;">
						<span id="totalPriceSpan">${item.itemPrice }</span>
					</div>
					<div class="co-12 d-grid gap-2 d-md-block" style="height: 20%; display: flex; align-items: center;">
						<button class="btn btn-primary">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
							<path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
							</svg>
							장바구니
						</button>				
						<button class="btn btn-success">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cash-coin" viewBox="0 0 16 16">
						  <path fill-rule="evenodd" d="M11 15a4 4 0 1 0 0-8 4 4 0 0 0 0 8zm5-4a5 5 0 1 1-10 0 5 5 0 0 1 10 0z"/>
						  <path d="M9.438 11.944c.047.596.518 1.06 1.363 1.116v.44h.375v-.443c.875-.061 1.386-.529 1.386-1.207 0-.618-.39-.936-1.09-1.1l-.296-.07v-1.2c.376.043.614.248.671.532h.658c-.047-.575-.54-1.024-1.329-1.073V8.5h-.375v.45c-.747.073-1.255.522-1.255 1.158 0 .562.378.92 1.007 1.066l.248.061v1.272c-.384-.058-.639-.27-.696-.563h-.668zm1.36-1.354c-.369-.085-.569-.26-.569-.522 0-.294.216-.514.572-.578v1.1h-.003zm.432.746c.449.104.655.272.655.569 0 .339-.257.571-.709.614v-1.195l.054.012z"/>
						  <path d="M1 0a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h4.083c.058-.344.145-.678.258-1H3a2 2 0 0 0-2-2V3a2 2 0 0 0 2-2h10a2 2 0 0 0 2 2v3.528c.38.34.717.728 1 1.154V1a1 1 0 0 0-1-1H1z"/>
						  <path d="M9.998 5.083 10 5a2 2 0 1 0-3.132 1.65 5.982 5.982 0 0 1 3.13-1.567z"/>
						</svg>
						바로구매
						</button>				
					</div>	
				</div>
			</div>
			<div class="row">
				<div class="col">
					${item.itemDetail }
				</div>
			</div>
			<div class="row">
				<div class="col">
					<c:forEach items="${item.imgList }" var="img">
						<c:if test="${img.isMain eq 'N' }">
							<img alt="" src="/resources/images/${img.attachedImgName }" width="100%">
						</c:if>
					</c:forEach>
				</div>
			</div>		
		</div>
	</div>
	<script type="text/javascript" src="/resources/js/item/item_detail.js"></script>
</body>
</html>