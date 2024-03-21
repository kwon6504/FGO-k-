<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${cp}/resources/Fgo.css">
</head>
<style>

.left {
	text-align: left; /* 텍스트를 왼쪽 정렬 */
}

.skills-info {
	display: inline-block; /* 가로로 나열하기 위해 인라인 블록 요소로 설정 */
	text-align: center; /* 텍스트를 가운데 정렬 */
	margin: 10px; /* 각 서번트 정보 사이의 간격 설정 */
}
</style>
<body>
	<fieldset>
		<legend class="left">
			${status.name}
		</legend>

		<c:forEach var="skill" items="${status.skills}">
			<div class="skills-info">
				<c:if test="${skill.priority == 1}">
				<img alt="스킬아이콘" src="${skill.icon}" data-bs-toggle="tooltip" data-bs-placement="bottom" data-bs-title="${skill.detail}"> <br> ${skill.name}
				</c:if>
				<br>
			</div>
		</c:forEach>
		<%-- <img alt="스킬아이콘" src="${status.skills.get(0).icon}">
<br>
${status.skills.get(0).name} 
<img alt="스킬아이콘" src="${status.skills.get(1).icon}">
<br>
${status.skills.get(1).name} 
<img alt="스킬아이콘" src="${status.skills.get(2).icon}">
<br>
${status.skills.get(2).name} --%>
</fieldset>

<script>
	$(function () {
		$('[data-bs-toggle="tooltip"]').tooltip()
	})
</script>
</body>
</html>