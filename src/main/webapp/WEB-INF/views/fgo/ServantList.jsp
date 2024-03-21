<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" /><!-- el변수 cp에 경로저장 -->
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cp}/resources/Fgo.css" >
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .servant-info {
        display: inline-block; /* 가로로 나열하기 위해 인라인 블록 요소로 설정 */
        text-align: center; /* 텍스트를 가운데 정렬 */
        margin: 10px; /* 각 서번트 정보 사이의 간격 설정 */
    }
</style>
</head>
<body>
<fieldset>
    <legend class="centered">
    ★★★★★ SSR
    </legend>
  <c:forEach var="ServantList" items="${servant}">
    <c:if test="${ServantList.rarity == 5}">
    <div class="servant-info">
        <a href="${cp}/fgo/Status?id=${ServantList.id}">
        <img alt="서번트들" src="${ServantList.face}">
        </a>
        <br>
        <br>
        <a href="${cp}/fgo/Status?id=${ServantList.id}">
        ${ServantList.name}
        </a>
        <br>
    </div>
    </c:if>
  </c:forEach>
</fieldset>
<br>
<fieldset>
    <legend class="centered">
    ★★★★ SR
    </legend>
    
  <c:forEach var="ServantList" items="${servant}">
    <c:if test="${ServantList.rarity == 4}">
    <div class="servant-info">
    <a href="${cp}/fgo/Status?id=${ServantList.id}">
    <img alt="서번트들" src="${ServantList.face}">
    </a>
        <br>
        <br>
        <a href="${cp}/fgo/Status?id=${ServantList.id}">
        ${ServantList.name}
        </a>
        <br>
    </div>
    </c:if>
  </c:forEach>
</fieldset>
<br>
<fieldset>
    <legend class="centered">
    ★★★ R
    </legend>
  <c:forEach var="ServantList" items="${servant}">
    <c:if test="${ServantList.rarity == 3}">
    <div class="servant-info">
        <a href="${cp}/fgo/Status?id=${ServantList.id}">
        <img alt="서번트들" src="${ServantList.face}">
        </a>
        <br>
        <br>
        <a href="${cp}/fgo/Status?id=${ServantList.id}">
        ${ServantList.name}
        </a>
        <br>
    </div>
    </c:if>
  </c:forEach>
</fieldset>
<br>
<fieldset>
        <legend class="centered">
            ★★ UC
        </legend>
  <c:forEach var="ServantList" items="${servant}">
    <c:if test="${ServantList.rarity == 2}">
    <div class="servant-info">
        <a href="${cp}/fgo/Status?id=${ServantList.id}">
        <img alt="서번트들" src="${ServantList.face}">
        </a>
        <br>
        <br>
        <a href="${cp}/fgo/Status?id=${ServantList.id}">
        ${ServantList.name}
        </a>
        <br>
    </div>
    </c:if>
  </c:forEach>
</fieldset>

<br>
<fieldset>
    <legend class="centered">
    ★ C
    </legend>
  <c:forEach var="ServantList" items="${servant}">
    <c:if test="${ServantList.rarity == 1}">
    <div class="servant-info">
        <a href="${cp}/fgo/Status?id=${ServantList.id}">
        <img alt="서번트들" src="${ServantList.face}">
        </a>
        <br>
        <br>
        <a href="${cp}/fgo/Status?id=${ServantList.id}">
        ${ServantList.name}
        </a>
        <br>
    </div>
    </c:if>
  </c:forEach>
</fieldset>


</body>
</html>