<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="./css/button.css">
<link rel="stylesheet" href="./css/table.css">
<link rel="stylesheet" href="./css/main.css">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<%@ include file="common/header.jsp"%>
	<div id="output">
		<section>
			<h2>book 등록</h2>
			<form action="insertBook.do" method="post">
				제목 : <input type="text" name="title" id="title"><br>
				출판사 : <input type="text" name="publisher" id="publisher"><br>
				가 격 : <input type="number" name="price" id="price"><br>
				<input type="submit" value="등록"> <input type="reset"
					value="취소">

			</form>
		</section>
	</div>
	<%@ include file="common/footer.jsp"%>
</body>
</html>