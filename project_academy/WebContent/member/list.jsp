<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ include file="../header.jsp" %>
<section>
<c:if test="${login.usertype == 'A' }">
<table>
	<thead>
		<tr>
			<th>IDX</th>
			<th>USERTYPE</th>
			<th>USERID</th>
			<th>USERPW</th>
			<th>USERNAME</th>
			<th>BIRTHDATE</th>
			<th>GENDER</th>
			<th>EMAIL</th>
			<th>JOINDATE</th>
			<th>PHONENUMBER</th>			
		</tr>
	</thead>
	<tbody>	
	<c:forEach var="dto" items="${dao_m.selectList() }">
		<tr>
			<td>${dto.idx }</td>
			<td>${dto.usertype }</td>
			<td>${dto.userid }</td>
			<td>${dto.userpw }</td>
			<td>${dto.username }</td>
			<td>${dto.birthDate }</td>
			<td>${dto.gender }</td>
			<td>${dto.email }</td>
			<td>${dto.joinDate }</td>
			<td>${dto.phoneNumber }</td>
		</tr>
	</c:forEach>	
	</tbody>
</table>
</c:if>
</section>
</body>
</html>