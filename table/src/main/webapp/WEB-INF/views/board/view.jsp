<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록 상세 보기(1명)</title>
<style>
body {
	text-align: center;
}

table {
	border: 1px solid black;
	margin-left: auto;
	margin-right: auto;
	border-collapse: collapse;
}

td {
	border: 1px solid black;
	height: 30px;
	padding: 10px;
}

th {
	height: 30px;
	padding: 10px;
}

.ko {
	background-color: gray;
}

p {
	color: red;
}

.inp {
	text-align: left;
}
</style>
</head>
<body>
	<h1>게시판 목록 상세보기</h1>

	<form method="post">

		<table>
			<tr>
				<td class="ko">게시물번호</td>
				<td class="inp"><input type="text" name="bno"
					value=${view.bno }></td>
			</tr>
			<tr>
				<td class="ko">제목</td>
				<td class="inp"><input type="text" name="title"
					value=${view.title }></td>
			</tr>
			<tr>
				<td class="ko">내용</td>
				<td class="inp"><input type="text" name="content"
					value=${view.content }></td>
			</tr>
			<tr>
				<td class="ko">글쓴이</td>
				<td class="inp"><input type="text" name="writer"
					value=${view.writer }></td>
			</tr>
			<tr>
				<td class="ko">글쓴날</td>
				<td class="inp"><input type="text" name="regdate"
					value=${view.regdate }></td>
			</tr>
			<tr>
				<td class="ko">조회수</td>
				<td class="inp"><input type="text" name="viewcnt"
					value=${view.viewcnt }></td>
			</tr>


		</table>

		<br>
		<button type="button"
			onclick="location.href='/board/modify?bno=${view.bno}' ">게시물
			수정</button>
		<button type="button"
			onclick="location.href='/board/delete?bno=${view.bno}' ">게시물
			삭제</button>
		<button type="button" onclick="location.href='/board/list' ">게시판
			목록</button>

	</form>

	<hr />

	<ul>
		<li>첫번째 댓글</li>
		<li>두번째 댓글</li>
		<li>세번째 댓글</li>
	</ul>

	<div>
		<p>
			<label>댓글 작성자</label> <input type="text">
		</p>
		<p>
			<textarea rows="5" cols="50"></textarea>
		</p>
		<p>
			<button type="button">댓글 작성</button>
		</p>
	</div>
</body>
</html>