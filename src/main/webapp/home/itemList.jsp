<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
	prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"
	prefix="fmt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin.css">
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.list_column {
  float: left;  
  margin-bottom: 8px;
  padding: 0 8px;
}

@media screen and (max-width: 650px) {
  .list_column {
    width: 100%;
    display: block;
  }
}

.list_card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.list_container {
  padding: 0 8px;
}

.list_container::after, .row::after {
  content: "";
  clear: both;
  
}

.list_title {
  color: grey;
}

.list_button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.list_button:hover {
  background-color: #555;
}
#photo{	
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
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
    
<table align="center">
<c:forEach var="item_list" items="${ITEM_LIST }" varStatus="vs" begin="1" step="1">
<c:choose>
<c:when test="${vs.index % 5 == 1 }">
<tr align="center"> 
</c:when>
</c:choose>
	<td>	
      <img id="photo" src="${pageContext.request.contextPath }/upload/${item_list.product_photo}" >     
        <h3>[��ǰ��]: ${item_list.product_name }</h3>        
        <p>[��   ��]:${item_list.product_price }��</p>
        <p>[�� �� ��]:${item_list.product_from }</p>
        <p> ${item_list.product_number }</p>
        <p><button class="list_button">Contact</button></p>     
   	</td>
<c:choose>

<c:when test="${vs.index % 5 == 0 }">
</tr> 
</c:when>

</c:choose>
</c:forEach>
</table>

</div>
</body>
</html>