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
<title>����������</title>
</head>
<body>
<div class="gbt">
<p >
	<strong>���� ������ > ȸ������ ����</strong>	
</p>
</div>
<!-- �޴� �׸�  -->
<!-- <div class="container" style="align:left; margin-top:15px" > -->
  <div class="row">
    <div class="col-sm-2">            
      <ul class="nav flex-column">
        <li class="nav-item">
          <a class="nav-link" href="../home/mypage.html" method="post">ȸ������ ����</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="../mypage/cart.html">��ٱ��� ����</a>
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
<!-- </div> -->
</div>
</body>
</html>