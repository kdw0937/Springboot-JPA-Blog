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
<title>마이페이지</title>
</head>
<body>
<div class="gbt">
<p >
	<strong>마이 페이지 > 회원정보 변경</strong>	
</p>
</div>
<!-- 메뉴 항목  -->
<!-- <div class="container" style="align:left; margin-top:15px" > -->
  <div class="row">
    <div class="col-sm-2">            
      <ul class="nav flex-column">
        <li class="nav-item">
          <a class="nav-link" href="../home/mypage.html" method="post">회원정보 수정</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="../mypage/cart.html">장바구니 보기</a>
        </li>        
       <!--  <li class="nav-item">
          <a class="nav-link disabled" href="#">Disabled</a>
        </li> -->
      </ul>      
      <hr class="d-sm-none">
    </div>    
    <div class="center">
    <form:form name="frm" modelAttribute="user" cssClass="entryForm" method="post"
action="../mypage/entry.html" onSubmit="return validate(this)">
    <div class="sub_center">
     
       <label for="user_id">I  D</label><br/>
    <form:input path="user_id" maxlength="20" placeholder="ID를 입력하세요." />
    <input type="button" value="중복검사" onClick="idCheck()"/><br/>
  	<label for="user_pw">비밀번호</label><br/>
    <form:input path="user_pw" maxlength="20" placeholder="비밀번호를 입력하세요."/><br/>
    <label for="user_name">이  름</label><br/>
    <form:input path="user_name" maxlength="20" placeholder="이름을 입력하세요."/><br/>
    <label for="user_birth">생년월일</label><br/>
    <form:input path="user_birth" maxlength="20" placeholder="생년월일을 입력하세요."/><br/>
    
    <label for="user_gender">성  별</label><br/>
    <div class="btn-group">
        남성<form:radiobutton class="button" path="user_gender" value="M" />
        여성<form:radiobutton class="button" path="user_gender" value="F"/>
    </div><br/><br/>
    <label for="user_addr">주   소</label><br/>
    <form:input path="user_addr" maxlength="50" placeholder="주소를 입력하세요."/><br/>
    <label for="user_tel">전화번호</label><br/>
    <form:input path="user_tel" maxlength="50" placeholder="전화번호를 입력하세요 "/><br/>
   
    <label for="user_email">E-mail</label><br/>
    <form:input path="user_email" maxlength="50" cssClass="eamil" placeholder="Email 주소를 입력하세요. 예)gildong@naver.com"/>
    <br/>
   <%--  <form:hidden path="user_regist"/>
    <form:hidden path="user_point"/>
    <form:hidden path="user_grade"/> --%>
  
    <input type="submit" value="변경하기">
    <input type="reset" value="취소하기">
  </div>
  </form:form>
  </div>
<!-- </div> -->
</div>
</body>
</html>