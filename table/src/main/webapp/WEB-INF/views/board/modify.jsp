<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 수정</title>
<style>
	body{
		text-align: center;
	}
	table{
		border: 1px solid black;
		margin-left:auto; 
   	 	margin-right:auto;
   	 	border-collapse: collapse;
	}
	td{
		border: 1px solid black;
		height: 30px;
		padding:10px;
	}
	th{
		height: 30px;
		padding:10px;
	}
	.ko{
		background-color: gray;
	}
</style>
</head>
<body>
	<h1>게시판 수정</h1>

	<form method="post">

		<table>

			<tr>
				<td class="ko">제목</td>
				<td><input type="text" name="title" value="${view.title}"/></td>
			</tr>
			<tr>
				<td class="ko">내용</td>
				<td><input type="text" name="content" value="${view.content}"/></td>
			</tr>
			<tr>
				<td class="ko">글쓴이</td>
				<td><input type="text" name="writer" value="${view.writer}"/></td>
			</tr>


	
		
		</table>

		<br>
		<button type="submit">완료</button>

	</form>
</body>
</html>