<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
		position: relative;
	}	
	p {
		text-align: right;
		margin-top: 50px;
	}
	input[type=button] {
		border: 0;
	}
	input[type=button]:hover {
		cursor: pointer;		
		font-weight: bold;
		font-size: 16px;
	}
	nav > h1 {
	    font-size: xx-large;
	    text-align: center;
	    padding: 0;
	    margin: 0;
	}
	nav > p {
	    text-align: center;
	}
	table {
	    width: 100%;
	    border: 1px solid;
	    width: auto;
	    /* height: 200px; */
	    margin-left: auto;
	    margin-right: auto;
	    display: table-cell;
	}
	th {
		background-color: dodgerblue;
		height: 50px;
		font-size: x-large;
		border-radius: 15px;
		color: white;
		
	}	
	td {
		padding: 11px;
		font-weight: bold;
	}
	td:hover {
	    background-color: #dadada;
	}
</style>
<script>
	function setCookie(name, value, expiredays) {
		var date = new Date();
		date.setDate(date.getDate() + expiredays);
		document.cookie = escape(name) + "=" + escape(value) + "; expires=" + date.toUTCString();
	}
	
	function pop_close() {		
		setCookie("popupYN", "N", 1);
		self.close();		
	}
</script>
</head>
<body>	
	<nav>
		<h1>명예의 전당</h1>
		<p>수강생의 성공적인 취업을 진심으로 축하합니다</p>
	</nav>	
	<hr>	
		<table border="1">
			<th colspan="3">개발</th>


			<tr>
				<!-- 첫번째 줄 시작 -->
				<td>이 * 준 (콤텍시스템)</td>
				<td>우 * 빈 (휴먼컨설팅)</td>
				<td>김 * 조 (GS네오텍)</td>

			</tr>
			<!-- 첫번째 줄 끝 -->
			<tr>
				<!-- 두번째 줄 시작 -->
				<td>김 * 규 (비엑스아이)</td>
				<td>고 * (씨인플러스)</td>
				<td>강 * 나 (쓰리탑)</td>
			</tr>
			<tr>
				<!-- 두번째 줄 시작 -->
				<td>김 * 규 (이쓰리피에스)</td>
				<td>고 * (디지털플러스시스템)</td>
				<td>강 * 나 (이베이스넷)</td>
			</tr>
			<tr>
				<!-- 두번째 줄 시작 -->
				<td>김 * 규 (위썸)</td>
				<td>고 * (OK저축은행)</td>
				<td>강 * 나 (휴먼컨설팅)</td>
			</tr>
			<tr>
				<!-- 두번째 줄 시작 -->
				<td>김 * 규 (휴먼컨설팅)</td>
				<td>고 * (지에스)</td>
				<td>강 * 나 (휴먼컨설팅)</td>
			</tr>
			<tr>
				<!-- 두번째 줄 시작 -->
				<td>김 * 규 (휴먼그룹)</td>
				<td>고  *(컨설팅그룹)</td>
				<td>강 * 나 (휴먼컨설팅)</td>
			</tr>
			<tr>
				<!-- 두번째 줄 시작 -->
				<td>김 * 규 (삼성그룹)</td>
				<td>고 * (LG그룹)</td>
				<td>강 * 나 (EBS)</td>
			</tr>
			<tr>
				<!-- 두번째 줄 시작 -->
				<td>김 * 규(이글루시큐리티)</td>
				<td>고 * (비오텍)</td>
				<td>강 * 나 (윈스)</td>
			</tr>

		</table>
		<table border="1">
			<th colspan="3">서버/네트워크/보안</th>


			<tr>
				<!-- 첫번째 줄 시작 -->
				<td>이 * 준 (콤텍시스템)</td>
				<td>우 * 빈 (휴먼컨설팅)</td>
				<td>김 * 조 (GS네오텍)</td>

			</tr>
			<!-- 첫번째 줄 끝 -->
			<tr>
				<!-- 두번째 줄 시작 -->
				<td>김 * 규 (비엑스아이)</td>
				<td>고 * (씨인플러스)</td>
				<td>강 * 나 (쓰리탑)</td>
			</tr>
			<tr>
				<!-- 두번째 줄 시작 -->
				<td>김 * 규 (이쓰리피에스)</td>
				<td>고 * (디지털플러스시스템)</td>
				<td>강 * 나 (이베이스넷)</td>
			</tr>
			<tr>
				<!-- 두번째 줄 시작 -->
				<td>김 * 규 (위썸)</td>
				<td>고 * (OK저축은행)</td>
				<td>강 * 나 (휴먼컨설팅)</td>
			</tr>
			<tr>
				<!-- 두번째 줄 시작 -->
				<td>김 * 규 (휴먼컨설팅)</td>
				<td>고 * (지에스)</td>
				<td>강 * 나 (휴먼컨설팅)</td>
			</tr>
			<tr>
				<!-- 두번째 줄 시작 -->
				<td>김 * 규 (휴먼그룹)</td>
				<td>고  *(컨설팅그룹)</td>
				<td>강 * 나 (휴먼컨설팅)</td>
			</tr>
			<tr>
				<!-- 두번째 줄 시작 -->
				<td>김 * 규 (삼성그룹)</td>
				<td>고 * (LG그룹)</td>
				<td>강 * 나 (EBS)</td>
			</tr>
			<tr>
				<!-- 두번째 줄 시작 -->
				<td>김 * 규(이글루시큐리티)</td>
				<td>고 * (비오텍)</td>
				<td>강 * 나 (윈스)</td>
			</tr>

		</table>
		<table border="1">
			<th colspan="3">클라우드</th>


			<tr>
				<!-- 첫번째 줄 시작 -->
				<td>이 * 준 (콤텍시스템)</td>
				<td>우 * 빈 (휴먼컨설팅)</td>
				<td>김 * 조 (GS네오텍)</td>

			</tr>
			<!-- 첫번째 줄 끝 -->
			<tr>
				<!-- 두번째 줄 시작 -->
				<td>김 * 규 (비엑스아이)</td>
				<td>고 * (씨인플러스)</td>
				<td>강 * 나 (쓰리탑)</td>
			</tr>
			<tr>
				<!-- 두번째 줄 시작 -->
				<td>김 * 규 (이쓰리피에스)</td>
				<td>고 * (디지털플러스시스템)</td>
				<td>강 * 나 (이베이스넷)</td>
			</tr>
			<tr>
				<!-- 두번째 줄 시작 -->
				<td>김 * 규 (위썸)</td>
				<td>고 * (OK저축은행)</td>
				<td>강 * 나 (휴먼컨설팅)</td>
			</tr>
			<tr>
				<!-- 두번째 줄 시작 -->
				<td>김 * 규 (휴먼컨설팅)</td>
				<td>고 * (지에스)</td>
				<td>강 * 나 (휴먼컨설팅)</td>
			</tr>
			<tr>
				<!-- 두번째 줄 시작 -->
				<td>김 * 규 (휴먼그룹)</td>
				<td>고  *(컨설팅그룹)</td>
				<td>강 * 나 (휴먼컨설팅)</td>
			</tr>
			<tr>
				<!-- 두번째 줄 시작 -->
				<td>김 * 규 (삼성그룹)</td>
				<td>고 * (LG그룹)</td>
				<td>강 * 나 (EBS)</td>
			</tr>
			<tr>
				<!-- 두번째 줄 시작 -->
				<td>김 * 규(이글루시큐리티)</td>
				<td>고 * (비오텍)</td>
				<td>강 * 나 (윈스)</td>
			</tr>

		</table>
<!-- 		<br> -->
<!-- 		<table border="1 " > -->
<!-- 			<th colspan="6">서버/네트워크</th> -->


<!-- 			<tr> -->
<!-- 				첫번째 줄 시작 -->
<!-- 				<td>이 * 준 (콤텍시스템)</td> -->
<!-- 				<td>우 * 빈 (휴먼컨설팅그룹)</td> -->
<!-- 				<td>김 * 조 (GS네오텍)</td> -->

			
<!-- 				<td>김 * 규 (비엑스아이)</td> -->
<!-- 				<td>고 * (씨인플러스)</td> -->
<!-- 				<td>강 * 나 (쓰리탑)</td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				두번째 줄 시작 -->
<!-- 				<td>김 * 규 (이쓰리피에스)</td> -->
<!-- 				<td>고 * (디지털플러스시스템)</td> -->
<!-- 				<td>강 * 나 (이베이스넷)</td> -->
			
<!-- 				두번째 줄 시작 -->
<!-- 				<td>김 * 규 (위썸)</td> -->
<!-- 				<td>고 * (OK저축은행)</td> -->
<!-- 				<td>강 * 나 (휴먼컨설팅그룹)</td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				두번째 줄 시작 -->
<!-- 				<td>김 * 규 (휴먼컨설팅그룹)</td> -->
<!-- 				<td>고 * (지에스)</td> -->
<!-- 				<td>강 * 나 (휴먼컨설팅그룹)</td> -->
			
<!-- 				두번째 줄 시작 -->
<!-- 				<td>김 * 규 (휴먼그룹)</td> -->
<!-- 				<td>고  *(컨설팅그룹)</td> -->
<!-- 				<td>강 * 나 (휴먼컨설팅그룹)</td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				두번째 줄 시작 -->
<!-- 				<td>김 * 규 (삼성그룹)</td> -->
<!-- 				<td>고 * (LG그룹)</td> -->
<!-- 				<td>강 * 나 (EBS)</td> -->
			
<!-- 				두번째 줄 시작 -->
<!-- 				<td>김 * 규(이글루시큐리티)</td> -->
<!-- 				<td>고 * (비오텍)</td> -->
<!-- 				<td>강 * 나 (윈스)</td> -->
				
<!-- 			</tr> -->

<!-- 		</table> -->

<p>
	<input type="button" value="[닫기]" onclick="self.close();">
	<input type="button" value="[하루동안 닫기]" onclick="pop_close();">
</p>

</body>
</html>