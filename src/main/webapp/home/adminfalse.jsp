<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>

<script type="text/javascript">
$( document ).ready(function() {
    alert("관리자 전용 페이지입니다. 권한을 확인하세요 ." );
    window.location.replace("http://localhost:8080/Delivery/home/template.html");
});

</script>
</body>
</html>