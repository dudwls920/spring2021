<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록 입력 폼</title>
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
	<h1>게시판 목록 등록</h1>

	<form method="post">

		<table>
			<tr>
				<td class="ko">글번호</td>
				<td class="inp"><input type="text" name="bno" /></td>
			</tr>
			<tr>
				<td class="ko">제목</td>
				<td class="inp"><input type="text" name="title" /></td>
			</tr>
			<tr>
				<td class="ko">내용</td>
				<td class="inp"><input type="text" name="content" /></td>
			</tr>
			<tr>
				<td class="ko">글쓴이</td>
				<td class="inp"><input type="text" name="writer" /></td>
			</tr>

	
		
		</table>

		<br>
		<button type="submit">등록</button>
		<button type="reset">다시 작성</button>
		<button type="button" onclick="location.href='/board/list' ">게시판 목록</button>

	</form>
</body>
</html>