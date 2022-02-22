<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
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

th {
	background-color: gray;
	border: 1px solid black;
	height: 30px;
	padding: 10px;
}

td {
	border: 1px solid black;
	height: 30px;
	padding: 10px;
}
</style>
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
</head>
<body>
	<h1>게시판 목록</h1>


	<div id="nav">
		<%@ include file="../include/nav.jsp"%>
	</div>
	<br>

	<table>
		<tr>
			<th>게시물번호</th>
			<th>제목</th>
			<th>내용</th>
			<th>글쓴이</th>
			<th>글쓴날</th>
			<th>조회수</th>
		</tr>

		<c:forEach items="${list}" var="list">
			<tr>
				<td><a href="/board/view?bno=${list.bno}">${list.bno}</a></td>
				<td>${list.title}</td>
				<td>${list.content}</td>
				<td>${list.writer}</td>
				<td>${list.regdate}</td>
				<td>${list.viewcnt}</td>
			</tr>
		</c:forEach>
	</table>

	<div>
		<c:if test="${pageMaker.prev}">
			<span><a
				href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></span>
		</c:if>

		<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
			var="idx">

			<span> <c:if test="${select != idx}">
					<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
				</c:if> <c:if test="${select == idx}">
					<b>${idx}</b>
				</c:if>
			</span>
		</c:forEach>

		<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
			<span><a
				href="list${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></span>
		</c:if>
	</div>
	<div class="search">
		<select name="searchType">
			<option value="n"
				<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
			<option value="t"
				<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
			<option value="c"
				<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
			<option value="w"
				<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>글쓴이</option>
			<option value="tc"
				<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
		</select> 
		
		<input type="text" name="keyword" id="keywordInput" value="${scri.keyword}" />

		<button id="searchBtn" type="button">검색</button>

		<script>
			$(function() {
				$('#searchBtn').click(function() {
					self.location = "list"+ '${pageMaker.makeQuery(1)}'+ "&searchType="
									+ $("select option:selected").val()+ "&keyword="
									+ encodeURIComponent($('#keywordInput').val());
				});
			});
		</script>
	</div>
</body>
</html>