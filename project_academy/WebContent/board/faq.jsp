<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<section>
<table>
	<thead>
		<tr>
			<th>글번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>등록일</th>
			<th>조회수</th>			
		</tr>
	</thead>
	<tbody>
	<c:forEach var="map" items="${dao_b.selectFAQ() }" varStatus="status">
		<tr onclick="location.href='detail.jsp?idx=${map.get('idx') }'" class="items">
			<td>${status.count}</td>
			<td>${map.get('username') }</td>
			<td>${map.get('title') }</td>
			<td>${map.get('writeDate') }</td>
			<td>${map.get('views') }</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
	<a href="faq_Insert.jsp"><button>글쓰기</button></a>
</section>
</body>
</html>