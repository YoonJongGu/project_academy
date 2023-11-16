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
	<c:forEach var="map" items="${dao_b.selectList() }" varStatus="status">
		<tr>
			<td>${status.count}</td>
			<td>${map.get('username') }</td>
			<td>${map.get('title') }</td>
			<td>${map.get('writeDate') }</td>
			<td>${map.get('views') }</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</section>

</body>
</html>