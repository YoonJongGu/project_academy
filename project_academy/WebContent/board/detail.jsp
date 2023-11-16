<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section>
	${dao_b.viewsCount(param.idx) }
	<c:set var="map" value="${dao_b.selectOne(param.idx) }" />
	<p>${map.get('title') }</p>
	<hr>
	<p>${map.get('username') }</p>
	<hr>
	<p>${map.get('writeDate') }</p>
	<hr>
	<p>${map.get('contents') }</p>
	<hr>
	<c:if test="${map.get('userid') == login.userid }">
		<a href="modify.jsp?idx=${param.idx }"><button>수정</button></a>
		<a onclick="delBtn();"><button>삭제</button></a>
	</c:if>	
	<button onclick="history.back();">목록으로</button>
</section>
<script>
	function delBtn() {
		if(confirm('정말 삭제하시겠습니까?')) {
			location.href='delete.jsp?idx=${param.idx }';
		}
		else {
			location.href='detail.jsp?idx=${param.idx }';
		}
	}
</script>
</body>
</html>