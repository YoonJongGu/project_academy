<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<section>
	<form action="statistics-action.jsp">
		<p>연도선택&nbsp;&nbsp;							
		<select name="timeYear">				
				<option value="2022">2022년</option>
				<option value="2021">2021년</option>
				<option value="2020">2020년</option>
		</select>
		</p>
		<input type="submit" value="검색">
	</form>
</section>