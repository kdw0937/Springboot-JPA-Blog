<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  
  
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}

</style>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"> 
<title>Insert title here</title>
</head>
<body>
<div class="gbt">
<p>
	<strong>질문 게시판</strong>
</p>
</div>
<div class="row" >
<div class="col-1"></div>
	<div class="col-10 mx-auto"> 
<table id="customers">
  <tr>
    <th width="15%">글번호</th>
    <th width="50%">글제목</th>
    <th width="15%">작성자</th>
    <th width="20%">작성일</th>
  </tr>
  <tr>
    <td>Alfreds Futterkiste</td>
    <td>Maria Anders</td>
    <td>Germany</td>
    <td>test</td>
  </tr>
  </table>


<div class="text-right">
  <a href="../home/qnaWrite.html">
  <input type="submit" value="글쓰기"/>
  </a>
</div>

  </div>
  </div>  

</body>
</html>