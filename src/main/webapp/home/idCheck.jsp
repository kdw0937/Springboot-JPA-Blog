<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
input[type=text], select {
  width: 25%;
  padding: 6px 10px;
  margin: 4px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  algin:center;
  text-align:center;
}
input[type=submit] {
  width: 15%;
  background-color: #4CAF50;
  color: white;
  padding: 8px 10px;
  margin: 4px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=button] {
 width: 15%;
  background-color: #4CAF50;
  color: white;
  padding: 8px 10px;
  margin: 4px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
</style>
<script type="text/javascript">
function idOk(){
	opener.document.frm.user_id.value=document.frm.ID.value;
	opener.document.frm.idChecked.value="yes";
	self.close();
	
}
</script>
</head>
<body>
<h2 align="center">ID�ߺ� Ȯ��</h2>
<form action="../idcheck/idcheck.html" method="get" name="frm">
���̵� : <input type="text" name="ID" value="${ID }"/>
<input type="submit" value="�ߺ��˻�"/><br/>
<c:if test="${DUP == 'YES' }">
	<script type="text/javascript">
		opener.documet.frm.user_id.value="";
	</script>
	${ID }�� �̹� ������Դϴ�.	
</c:if>
<c:if test="${DUP != 'YES' }">
	${ID }�� ��� �����մϴ�.
	<input type="button" value="����ϱ�" onClick="idOk()"/>
</c:if>
</form>
</body>
</html>