<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
	prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags"
	prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="form" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin.css">
<style type="text/css">

</style>
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>상품 등록</title>
</head>
<body>
<div class="gbt">
<p>
	<strong>관리자 페이지 > 상품 등록</strong>
</p>
</div>
<div class="row">
    <div class="col-sm-2">      
      <ul class="nav flex-column">       
        <li class="nav-item">
          <a class="nav-link" href="../product/open.html">상품 등록</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="../read/product.html">상품 목록</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">회원 관리</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">추가 1</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">추가 2</a>
        </li>
       <!--  <li class="nav-item">
          <a class="nav-link disabled" href="#">Disabled</a>
        </li> -->
      </ul>      
      <hr class="d-sm-none">
    </div>    
    
    <div class="col-sm-10">

<div class="center">
<form:form action="../product/entry.html" method="post" 
	modelAttribute="product_Info"  
	enctype="multipart/form-data">
<div class="sub_center">
   <%--  <label for="product_number">상품 번호</label><br/>
    <form:input path="product_number" maxlength="20" placeholder="상품 번호를 입력하세요." /> --%>
   
  	<label for="product_name">상품 이름</label><br/>
    <form:input path="product_name" maxlength="20" placeholder="상품 이름을 입력하세요."/><br/>
    <label for="product_from">원 산 지</label><br/>
    <form:input path="product_from" maxlength="20" placeholder="원산지를  입력하세요."/><br/>
    <label for="product_price">상품 가격</label><br/>
    <form:input path="product_price" maxlength="20" placeholder="상품 가격을 입력하세요."/><br/>
    <label for="product_kindof">상품 수량</label><br/>
    <form:input path="product_kindof" maxlength="20" placeholder="상품 수량을 입력하세요."/><br/>
    <label for="product_kindof">사진</label><br/>
    <form:input type="file" path="image_file" size="20"/> 
    <br/>
    <label for="product_site">사이트 &nbsp;&nbsp;</label>
    <div class="btn-group">
        <form:radiobutton class="button" path="site" value="Y" />&nbsp;야후옥션&nbsp;
        <form:radiobutton class="button" path="site" value="R" />&nbsp;라쿠텐&nbsp;
        <form:radiobutton class="button" path="site" value="A"/>&nbsp;아마존&nbsp;
    </div><br/>
    <label for="cateName">카테고리</label>
     <form:select path="cateName">
    	<option value="figure">피규어</option>
    	<option value="gundam">건담 프라모델</option>    	
    	<option value="rego">레고 블럭</option>
    	<option value="fishing">낚시 장비</option>
    	<option value="game">게임/음악CD</option>    	
    	<option value="golf">골프 용품</option>
    	<option value="bike">오토바이</option>    	
    	<option value="music_etc">음향기기</option>
    	<option value="car">자동차 부품</option>
    	<option value="salon">미용 기기</option>
    </form:select>
  <br/>
    <label for="context">내  용</label><br/>
    <form:textarea path="content" rows="10" 
    style="width:70%; border: 0; resize: none; outline-style:solid;"/>
   
    <input type="submit" value="상품 등록">
    <input type="reset" value="취소하기">
  
</div>


</form:form>

</div>
    </div>
  </div>

</body>
</html>