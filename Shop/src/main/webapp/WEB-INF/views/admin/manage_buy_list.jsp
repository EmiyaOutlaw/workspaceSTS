<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.searchTable{
   text-align: center;
}
.searchTable > :not(:first-child) {
  /*   border-top: 2px solid currentColor; */
    border-top: 1px solid #dee2e6;
}
.searchTable .searchTitle{
   background-color: #eeeeee;
}
textarea{
	resize: none;
}
</style>
</head>
<body>
<div class="row">
   <div class="col">
      <div class="row">
         <div class="col">
            <table class="table align-middle searchTable">
              <colgroup>
                 <col width="15%">
                 <col width="">
                 <col width="15%">
                 <col width="*">
                 <col width="15%">
              </colgroup>
              <tbody>
                 <tr>
                  <td class="searchTitle">주문번호</td>
                  <td><input type="text" class="form-control"></td>   
                  <td class="searchTitle">구매자</td>
                  <td><input type="text" class="form-control"></td>
                  <td rowspan="2">
                  <button type="button" class="btn btn-secondary w-100 h-100">검 색</button>
                  </td>
                </tr>
                <tr>
                  <td class="searchTitle">구매일시</td>
                  <td colspan="3">
                  <div class="row">
                     <div class="col-5">
                     <input type="date" class="form-control">
                     </div>
                     <div class="col-1 text-center align-self-center">
                        ~
                     </div>
                     <div class="col-5">
                        <input type="date" class="form-control">
                     </div>
                  </div>
                  </td>   
                </tr>
                </tbody>
            </table>
         </div>
      </div>
      <div class="row">
         <div class="col">
            <table class="table table-striped table-hover align-middle">
              <colgroup>
                 <col width="10%">
                 <col width="*">
                 <col width="*">
                 <col width="*">
              </colgroup>
              <thead>
                <tr>
                  <th scope="col">No</th>
                  <th scope="col">주문번호</th>
                  <th scope="col">구매자</th>
                  <th scope="col">구매일시</th>
                </tr>
              </thead>
              <tbody>
              	<c:forEach items="${buyList}" var="buyInfo" varStatus="status">
	                 <tr>
	                  <td>${status.index + 1}</td>
	                  <td><span style="cursor: pointer" onclick="selectBuyListDetail();">
	                  	${buyInfo.orderNum }
	                  </span></td>   
	                  <td>${buyInfo.memId }(${buyInfo.memberVO.memName })</td>
	                  <td>${buyInfo.buyDate }</td>
	                </tr>
                </c:forEach>
              </tbody>
            </table>
         </div>
      </div>
   </div>
</div>


<!-- Modal -->
<div class="modal fade" id="buyInfoModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      	<div class="row">
            <div class="col text-center">
               <table class="table table-striped table-hover align-middle">
              <colgroup>
                 <col width="10%">
                 <col width="15%">
                 <col width="*">
                 <col width="10%">
                 <col width="15%">
                 <col width="15%%">
              </colgroup>
              <thead>
                <tr>
                  <th scope="col">No</th>
                  <th scope="col">상품이미지</th>
                  <th scope="col">상품명</th>
                  <th scope="col">수량</th>
                  <th scope="col">구매가격</th>
                  <th scope="col">구매자</th>
                </tr>
              </thead>
              <tbody>
                 <tr>
                  <td>1</td>
                  <td>
                     <img width="50px;" alt="" src="/resources/images/1648097539159_마인_메인.jpg">
                  </td>
                  <td>테스트상품1</td>
                  <td>10</td>
                  <td>\10,000</td>
                  <td>테스터</td>
                </tr>
                <tr>
                  <td>2</td>
                  <td>
                     <img width="60px;" alt="" src="/resources/images/1648128286894_엑셀실무_메인.pg.jpg">
                  </td>
                  <td>테스트상품2</td>
                  <td>5</td>
                  <td>\20,000</td>
                  <td>테스터</td>
                </tr>
              </tbody>
            </table>
            </div>
         </div>
      </div>
    </div>
  </div>
</div>


</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/resources/js/admin/manage_buy_list.js?ver=31"type="text/javascript"></script>
</html>