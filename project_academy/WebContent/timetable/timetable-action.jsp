<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="timetable.jsp" %>
<section>
	<jsp:useBean id="user" class="timetable.TimeTableDTO" />
	<jsp:setProperty property="*" name="user" />
	<c:set var="list" value="${dao_t.selectListByDate(user) }" />

	<table class="timetable">
		<thead>
			<tr>
				<th>1001호&nbsp;</th>
				<th>1002호&nbsp;</th>
				<th>1003호&nbsp;</th>
				<th>1004호&nbsp;</th>
				<th>1005호&nbsp;</th>
				<th>1006호&nbsp;</th>
			</tr>
		</thead>
		<tbody>
			
			<c:if test="${param.week == '평일' }">
				<tr>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '9:00~12:00' }">
								<c:if test="${dto.room == '1001호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '9:00~12:00' }">
								<c:if test="${dto.room == '1002호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '9:00~12:00' }">
								<c:if test="${dto.room == '1003호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '9:00~12:00' }">
								<c:if test="${dto.room == '1004호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '9:00~12:00' }">
								<c:if test="${dto.room == '1005호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '9:00~12:00' }">
								<c:if test="${dto.room == '1006호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
				</tr>							

				<tr>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '12:30~15:30' }">
								<c:if test="${dto.room == '1001호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '12:30~15:30' }">
								<c:if test="${dto.room == '1002호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '12:30~15:30' }">
								<c:if test="${dto.room == '1003호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '12:30~15:30' }">
								<c:if test="${dto.room == '1004호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '12:30~15:30' }">
								<c:if test="${dto.room == '1005호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '12:30~15:30' }">
								<c:if test="${dto.room == '1006호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
				</tr>

				<tr>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '15:30~18:30' }">
								<c:if test="${dto.room == '1001호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '15:30~18:30' }">
								<c:if test="${dto.room == '1002호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '15:30~18:30' }">
								<c:if test="${dto.room == '1003호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '15:30~18:30' }">
								<c:if test="${dto.room == '1004호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '15:30~18:30' }">
								<c:if test="${dto.room == '1005호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '15:30~18:30' }">
								<c:if test="${dto.room == '1006호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
				</tr>

				<tr>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '19:00~22:00' }">
								<c:if test="${dto.room == '1001호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '19:00~22:00' }">
								<c:if test="${dto.room == '1002호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '19:00~22:00' }">
								<c:if test="${dto.room == '1003호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '19:00~22:00' }">
								<c:if test="${dto.room == '1004호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '19:00~22:00' }">
								<c:if test="${dto.room == '1005호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '19:00~22:00' }">
								<c:if test="${dto.room == '1006호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
				</tr>
			</c:if>				

			<c:if test="${param.week == '주말' }">
				<tr>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '9:00~14:00' }">
								<c:if test="${dto.room == '1001호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '9:00~14:00' }">
								<c:if test="${dto.room == '1002호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '9:00~14:00' }">
								<c:if test="${dto.room == '1003호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '9:00~14:00' }">
								<c:if test="${dto.room == '1004호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '9:00~14:00' }">
								<c:if test="${dto.room == '1005호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '9:00~14:00' }">
								<c:if test="${dto.room == '1006호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
				</tr>

				<tr>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '14:30~19:30' }">
								<c:if test="${dto.room == '1001호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
					<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '14:30~19:30' }">
								<c:if test="${dto.room == '1002호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '14:30~19:30' }">
								<c:if test="${dto.room == '1003호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '14:30~19:30' }">
								<c:if test="${dto.room == '1004호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '14:30~19:30' }">
								<c:if test="${dto.room == '1005호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="dto" items="${list }">
							<c:if test="${dto.lessonTime == '14:30~19:30' }">
								<c:if test="${dto.room == '1006호' }">
									${dto.lessonTime }<br><span>${dto.lesson }</span><br><br><strong>${dto.teacher }</strong>
								</c:if>
							</c:if>
						</c:forEach>
					</td>
				</tr>				
			</c:if>
		</tbody>
	</table>
</section>
</body>
</html>