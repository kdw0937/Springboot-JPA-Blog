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
<title>��ǰ ���</title>
</head>
<body>
<div class="gbt">
<p>
	<strong>������ ������ > ��ǰ ���</strong>
</p>
</div>
<div class="row">
    <div class="col-sm-2">      
      <ul class="nav flex-column">       
        <li class="nav-item">
          <a class="nav-link" href="../product/open.html">��ǰ ���</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="../read/product.html">��ǰ ���</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">ȸ�� ����</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">�߰� 1</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">�߰� 2</a>
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
   <%--  <label for="product_number">��ǰ ��ȣ</label><br/>
    <form:input path="product_number" maxlength="20" placeholder="��ǰ ��ȣ�� �Է��ϼ���." /> --%>
   
  	<label for="product_name">��ǰ �̸�</label><br/>
    <form:input path="product_name" maxlength="20" placeholder="��ǰ �̸��� �Է��ϼ���."/><br/>
    <label for="product_from">�� �� ��</label><br/>
    <form:input path="product_from" maxlength="20" placeholder="��������  �Է��ϼ���."/><br/>
    <label for="product_price">��ǰ ����</label><br/>
    <form:input path="product_price" maxlength="20" placeholder="��ǰ ������ �Է��ϼ���."/><br/>
    <label for="product_kindof">��ǰ ����</label><br/>
    <form:input path="product_kindof" maxlength="20" placeholder="��ǰ ������ �Է��ϼ���."/><br/>
    <label for="product_kindof">����</label><br/>
    <form:input type="file" path="image_file" size="20"/> 
    <br/>
    <label for="product_site">����Ʈ &nbsp;&nbsp;</label>
    <div class="btn-group">
        <form:radiobutton class="button" path="site" value="Y" />&nbsp;���Ŀ���&nbsp;
        <form:radiobutton class="button" path="site" value="R" />&nbsp;������&nbsp;
        <form:radiobutton class="button" path="site" value="A"/>&nbsp;�Ƹ���&nbsp;
    </div><br/>
    <label for="cateName">ī�װ�</label>
     <form:select path="cateName">
    	<option value="figure">�ǱԾ�</option>
    	<option value="gundam">�Ǵ� �����</option>    	
    	<option value="rego">���� ��</option>
    	<option value="fishing">���� ���</option>
    	<option value="game">����/����CD</option>    	
    	<option value="golf">���� ��ǰ</option>
    	<option value="bike">�������</option>    	
    	<option value="music_etc">������</option>
    	<option value="car">�ڵ��� ��ǰ</option>
    	<option value="salon">�̿� ���</option>
    </form:select>
  <br/>
    <label for="context">��  ��</label><br/>
    <form:textarea path="content" rows="10" 
    style="width:70%; border: 0; resize: none; outline-style:solid;"/>
   
    <input type="submit" value="��ǰ ���">
    <input type="reset" value="����ϱ�">
  
</div>


</form:form>

</div>
    </div>
  </div>

</body>
</html>