<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
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
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
 
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/yahoo.css">
<title>Japan Delivery_yahoo_auction</title>
</head>
<body>
<div class="gbt">
<p>
	<strong>������ > ��ü ī�װ�</strong>
</p>
</div>
<div class="yahoo_row">	
  <div class="yahoo_column">
    <div class="yahoo_card">
      <a href="../rakuten/figure.html">�׼� �ǱԾ�</a><br/>
      <a href="../rakuten/gundam.html">�Ǵ� �����</a><br/>        
      <br/><br/>
    </div>
  </div>

  <div class="yahoo_column">
    <div class="yahoo_card">
      <a href="../rakuten/lego.html">���� ��</a><br/>
      <a href="../rakuten/fishing.html">���� ���</a><br/>
      <a href="../rakuten/game.html">����/����CD</a> 
      <p>      </p>     
    </div>
  </div>
  
  <div class="yahoo_column">
    <div class="yahoo_card">      
      <a href="../rakuten/golf.html">������ǰ</a><br/>
      <a href="../rakuten/bike.html">������� ���</a><br/>       
    </div>
  </div>
  
  <div class="yahoo_column">
    <div class="yahoo_card">      
      <a href="../rakuten/music.html">���� ���</a><br/>
      <a href="../rakuten/car.html">�ڵ��� ��ǰ</a><br/>
      <a href="../rakuten/salon.html">�̿���</a><br/>      
    </div>
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