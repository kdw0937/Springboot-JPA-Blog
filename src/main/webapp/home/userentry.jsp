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
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/userentry.css">
<title>회원 가입</title>
<style type="text/css">

</style>
</head>
<body>
<script type="text/javascript">
function idCheck(){
	if(document.frm.user_id.value == ""){
		alert("ID를 입력하세요.");
		document.frm.user_id.focus();
		return;
	}
	var url="../idcheck/idcheck.html?ID="+
			document.frm.user_id.value;
	window.open(url,"_blank","width=500,height=200");
}
function validate(form){
	if(form.user_name.value == ""){
		alert("이름을 입력하세요.");
		form.user_name.focus(); return false;
	}
	if(form.user_id.value == ""){
		alert("ID를 입력하세요.");
		form.user_id.focus(); return false;
	}
	if(form.user_pw.value == ""){
		alert("암호를 입력하세요.");
		form.user_pw.focus(); return false;
	}
	if(form.user_pw.value != form.CONFIRM.value){
		alert("암호가 일치하지 않습니다.");
		form.user_pw.focus(); return false;
	}
	if( !form.user_gender[0].checked && 
			!form.user_gender[1].checked){
		alert("성별을 선택하세요.");
		form.user_gender[0].focus(); return false;
	}
	
	if(form.idChecked.value == ""){
		alert("ID중복검사를 해주세요."); return false;
	}
	if(confirm("입력한 내용이 맞습니까?")){}
	else{ return false;}
}
</script>

<div class="center">
  	<p><strong><font size="10">회원가입</font></strong></p>
</div>

<div>
<form:form name="frm" modelAttribute="user" cssClass="entryForm" method="post"
action="../entry/entry.html"
onSubmit="return validate(this)">
<div>
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
  
    <input type="submit" value="가입하기">
    <input type="reset" value="취소하기">
  
</div>


</form:form>

</div>
</body>
</html>

