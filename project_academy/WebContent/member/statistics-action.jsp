<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="statistics.jsp" %>
<section>
	<table>
		<thead>
			<tr>
				<td>가입 연도</td>
				<td>가입 월</td>			
				<td>인원수</td>			
			</tr>
		</thead>
		<tbody>					
			<c:forEach var="map" items="${dao_m.statistics(param.timeYear) }">	
				<tr>
					<td>${map.get('year') }</td>
					<td>${map.get('month') }</td>
					<td>${map.get('count') }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</section>
</body>
</html>