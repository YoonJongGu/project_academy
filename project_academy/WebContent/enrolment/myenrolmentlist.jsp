<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<section>
	<table>
		 <thead>
		 	<tr>
		 		<th>번호</th>			 		
		 		<th>강의과목</th>
		 		<th>강의실</th>
		 		<th>평일/주말</th>
		 		<th>강의시간</th>
		 		<th>강사명</th>
		 		<th>삭제</th>	 		
		 	</tr>
		 </thead>
		 <tbody>
		 <c:forEach var="map" items="${dao_e.selectMyList(login.idx) }" varStatus="status">		 
		 	<tr>		 		
		 		<td>${status.count }</td>
		 		<td>${map.get('lesson') }</td>
		 		<td>${map.get('room') }</td>
		 		<td>${map.get('week') }</td>
		 		<td>${map.get('lessonTime') }</td>
		 		<td>${map.get('teacher') }</td>
		 		<td><a href="delete.jsp?idx=${map.get('idx') }"><button>삭제</button></a></td> 				 					 		
		 	</tr>
		 </c:forEach>
		 </tbody>
	</table>
	<h3>클릭시 삭제가 바로 진행됩니다!!</h3>
</section>
</body>
</html>