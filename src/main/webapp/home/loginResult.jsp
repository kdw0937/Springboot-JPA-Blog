<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<div class="container" style="text-align:center; align:center">
<div align="center" style="padding:15px;">
  <h2>로그인</h2>
  <p>서비스를 사용 하려면 먼저 로그인 해주세요.</p>
  <div align="center">
  <form action="../login/template.html" method="post">
    <label for="id">ID</label>
    <input type="text" class="form-control" id="user_id" placeholder="Enter ID" name="user_id">
    <br/>
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="user_pw" placeholder="Enter password" name="user_pw">
    <br/><br/><br/>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> 기억하기
      </label>
    </div>
    <button type="submit" class="btn btn-primary">로그인</button> &nbsp;&nbsp;
    <button type="reset" class="btn btn-primary">취소</button>
  </form>
  </div>
  </div>
  </div>


</body>
</html>
