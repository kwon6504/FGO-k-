<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<!-- el변수 cp에 경로저장 -->
<html>
<head>
<link rel="stylesheet" href="${cp}/resources/Fgo.css">
<title>Home</title>
</head>
<body>
	<div class="centered-text">
		<h1>-FGO INFO_BOARD-</h1>
	</div>
	<fieldSet>
		<legend class="centered"> 오리지널클래스 </legend>
		<div class="centered-text">
			<ul class="horizontal-list">
				<li><a href="${cp}/fgo/ServantList?className=saber">[세이버]</a></li>
				<li><a href="${cp}/fgo/ServantList?className=archer">[아쳐]</a></li>
				<li><a href="${cp}/fgo/ServantList?className=lancer">[랜서]</a></li>
				<li><a href="${cp}/fgo/ServantList?className=rider">[라이더]</a></li>
				<li><a href="${cp}/fgo/ServantList?className=caster">[캐스터]</a></li>
				<li><a href="${cp}/fgo/ServantList?className=assassin">[어새신]</a></li>
				<li><a href="${cp}/fgo/ServantList?className=berserker">[버서커]</a></li>
			</ul>
		</div>
	</fieldSet>
	<br>
	<br>
	<fieldset>
		<legend class="centered"> 엑스트라클래스 </legend>
		<div class="centered-text">
			<ul class="horizontal-list">
				<li><a href="${cp}/fgo/ServantList?className=shielder">[실더]</a></li>
				<li><a href="${cp}/fgo/ServantList?className=ruler">[룰러]</a></li>
				<li><a href="${cp}/fgo/ServantList?className=alterEgo">[얼터에고]</a></li>
				<li><a href="${cp}/fgo/ServantList?className=avenger">[어벤저]</a></li>
				<li><a href="${cp}/fgo/ServantList?className=moonCancer">[문캔서]</a></li>
				<li><a href="${cp}/fgo/ServantList?className=foreigner">[포리너]</a></li>
				<li><a href="${cp}/fgo/ServantList?className=pretender">[프리텐더]</a></li>
			</ul>
		</div>
	</fieldSet>
	<br>
	<br>
	<fieldset>
		<legend>게시판</legend>
		<div>
		<a href="${cp}/board/getlist?category=notification">공지게시판</a>
		<br>
		<a href="${cp}/board/getlist?category=free">자유게시판</a>
		<br>
		<a href="${cp}/board/getlist?category=party">파티게시판</a>
		</div>
	</fieldset>
</body>
</html>