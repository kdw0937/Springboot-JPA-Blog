<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>		
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mystyle2.css">
<meta charset="EUC-KR">
<title>Insert title here</title>

</head>
<body>
<div class="my-site">
	<div class="header">
	<div id="box-left"><a target="_self" href="../home/template.html"><img src="${pageContext.request.contextPath}/img/logo.png" width="400" height="70"></a></div>
	<div id="box-center">
	<input type="text" name="keyword" id="keywordInput" value="${scri.keyword}" style="width:60%;"/>
	<button id="searchBtn" type="button">검색</button>
	</div>
	<div id="box-right" >			
	<c:choose>
		<c:when test="${sessionScope.loginUser != null }">
			<jsp:include page="welcome.jsp"/>
		</c:when>
		<c:when test="${HEADER != null }">
			<jsp:include page="${HEADER }"/>
		</c:when>	
		<c:otherwise>
			<jsp:include page="../login/login.html"></jsp:include>
		</c:otherwise>
		</c:choose>		
	</div>	
	</div>	<!-- header 끝  -->
		
	<div class="gnb clearfix">
	<jsp:include page="../home/gnb.jsp"></jsp:include>
	</div>
	
	
	<div class="main clearfix">	
	<div class="content">				
		<c:choose>
			<c:when test="${BODY != null }">
				<jsp:include page="${BODY }"></jsp:include>
			</c:when>
			<c:otherwise>
				<jsp:include page="../home/intro.jsp"></jsp:include>
			</c:otherwise>
		</c:choose>	
		</div>	
	</div>	
		
	
	<div class="footer">
	<jsp:include page="../home/copyright.jsp"></jsp:include>	
	</div>	
</div>


</body>
</html>