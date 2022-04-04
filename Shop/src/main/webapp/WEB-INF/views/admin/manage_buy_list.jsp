<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                 <tr>
                  <td>1</td>
                  <td>주문번호!!</td>   
                  <td>구매자!!</td>
                  <td>날짜!!!</td>
                </tr>
              </tbody>
            </table>
         </div>
      </div>
   </div>
</div>
</body>
</html>