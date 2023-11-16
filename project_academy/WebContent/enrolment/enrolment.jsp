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
		 		<th>수강</th>
		 	</tr>
		 </thead>
		 <tbody>
		 <c:forEach var="dto" items="${dao_e.selectTimetable() }" varStatus="status">		 
		 	<tr>		 		
		 		<td>${status.count }</td>
		 		<td>${dto.lesson }</td>
		 		<td>${dto.room }</td>
		 		<td>${dto.week }</td>
		 		<td>${dto.lessonTime }</td>
		 		<td>${dto.teacher }</td>
		 		<td><a href="enrolment-action.jsp?member_idx=${login.idx }&timetable_idx=${dto.idx }"><button>수강신청</button></a></td>		 					 		
		 	</tr>
		 </c:forEach>
		 </tbody>
	</table>
	<h3>클릭시 수강신청이 바로 진행됩니다!!</h3>
</section>
</body>
</html>