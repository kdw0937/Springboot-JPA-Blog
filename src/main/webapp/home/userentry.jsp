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
<title>ȸ�� ����</title>
<style type="text/css">

</style>
</head>
<body>
<script type="text/javascript">
function idCheck(){
	if(document.frm.user_id.value == ""){
		alert("ID�� �Է��ϼ���.");
		document.frm.user_id.focus();
		return;
	}
	var url="../idcheck/idcheck.html?ID="+
			document.frm.user_id.value;
	window.open(url,"_blank","width=500,height=200");
}
function validate(form){
	if(form.user_name.value == ""){
		alert("�̸��� �Է��ϼ���.");
		form.user_name.focus(); return false;
	}
	if(form.user_id.value == ""){
		alert("ID�� �Է��ϼ���.");
		form.user_id.focus(); return false;
	}
	if(form.user_pw.value == ""){
		alert("��ȣ�� �Է��ϼ���.");
		form.user_pw.focus(); return false;
	}
	if(form.user_pw.value != form.CONFIRM.value){
		alert("��ȣ�� ��ġ���� �ʽ��ϴ�.");
		form.user_pw.focus(); return false;
	}
	if( !form.user_gender[0].checked && 
			!form.user_gender[1].checked){
		alert("������ �����ϼ���.");
		form.user_gender[0].focus(); return false;
	}
	
	if(form.idChecked.value == ""){
		alert("ID�ߺ��˻縦 ���ּ���."); return false;
	}
	if(confirm("�Է��� ������ �½��ϱ�?")){}
	else{ return false;}
}
</script>

<div class="center">
  	<p><strong><font size="10">ȸ������</font></strong></p>
</div>

<div>
<form:form name="frm" modelAttribute="user" cssClass="entryForm" method="post"
action="../entry/entry.html"
onSubmit="return validate(this)">
<div>
    <label for="user_id">I  D</label><br/>
    <form:input path="user_id" maxlength="20" placeholder="ID�� �Է��ϼ���." />
    <input type="button" value="�ߺ��˻�" onClick="idCheck()"/><br/>
  	<label for="user_pw">��й�ȣ</label><br/>
    <form:input path="user_pw" maxlength="20" placeholder="��й�ȣ�� �Է��ϼ���."/><br/>
    <label for="user_name">��  ��</label><br/>
    <form:input path="user_name" maxlength="20" placeholder="�̸��� �Է��ϼ���."/><br/>
    <label for="user_birth">�������</label><br/>
    <form:input path="user_birth" maxlength="20" placeholder="��������� �Է��ϼ���."/><br/>
    
    <label for="user_gender">��  ��</label><br/>
    <div class="btn-group">
        ����<form:radiobutton class="button" path="user_gender" value="M" />
        ����<form:radiobutton class="button" path="user_gender" value="F"/>
    </div><br/><br/>
    <label for="user_addr">��   ��</label><br/>
    <form:input path="user_addr" maxlength="50" placeholder="�ּҸ� �Է��ϼ���."/><br/>
    <label for="user_tel">��ȭ��ȣ</label><br/>
    <form:input path="user_tel" maxlength="50" placeholder="��ȭ��ȣ�� �Է��ϼ��� "/><br/>
   
    <label for="user_email">E-mail</label><br/>
    <form:input path="user_email" maxlength="50" cssClass="eamil" placeholder="Email �ּҸ� �Է��ϼ���. ��)gildong@naver.com"/>
    <br/>
   <%--  <form:hidden path="user_regist"/>
    <form:hidden path="user_point"/>
    <form:hidden path="user_grade"/> --%>
  
    <input type="submit" value="�����ϱ�">
    <input type="reset" value="����ϱ�">
  
</div>


</form:form>

</div>
</body>
</html>

