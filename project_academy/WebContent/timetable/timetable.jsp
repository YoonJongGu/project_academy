<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<section>
	<form action="timetable-action.jsp">
		<p>평일 / 주말&nbsp;
			<select name="week">
				<option value="평일" ${param.week == '평일' ? 'selected' : '' }>평일</option>
				<option value="주말" ${param.week == '주말' ? 'selected' : '' }>주말</option>
			</select>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;날짜&nbsp;	
			<select name="timeYear">
				<option value="2023" ${param.timeYear == '2023' ? 'selected' : '' }>2023년</option>
				<option value="2022" ${param.timeYear == '2022' ? 'selected' : '' }>2022년</option>
				<option value="2021" ${param.timeYear == '2021' ? 'selected' : '' }>2021년</option>
				<option value="2020" ${param.timeYear == '2020' ? 'selected' : '' }>2020년</option>
			</select>
			<select name="timeMonth">
				<option value="1" ${param.timeMonth == '1' ? 'selected' : '' }>1월</option>
				<option value="2" ${param.timeMonth == '2' ? 'selected' : '' }>2월</option>
				<option value="3" ${param.timeMonth == '3' ? 'selected' : '' }>3월</option>
				<option value="4" ${param.timeMonth == '4' ? 'selected' : '' }>4월</option>
				<option value="5" ${param.timeMonth == '5' ? 'selected' : '' }>5월</option>
				<option value="6" ${param.timeMonth == '6' ? 'selected' : '' }>6월</option>
				<option value="7" ${param.timeMonth == '7' ? 'selected' : '' }>7월</option>
				<option value="8" ${param.timeMonth == '8' ? 'selected' : '' }>8월</option>
				<option value="9" ${param.timeMonth == '9' ? 'selected' : '' }>9월</option>
				<option value="10" ${param.timeMonth == '10' ? 'selected' : '' }>10월</option>
				<option value="11" ${param.timeMonth == '11' ? 'selected' : '' }>11월</option>
				<option value="12" ${param.timeMonth == '12' ? 'selected' : '' }>12월</option>
			</select>
		</p>
		<input type="submit" value="검색">
	</form>
</section>