<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initialscale=1">
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<%-- ${path}를 사용하면 패키지내의 정보가 절대경로로 변경됨 --%>
<link rel="stylesheet" type="text/css" href="${path}/resources/bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="${path}/resources/bootstrap/js/jquery.js"></script>
<script type="text/javascript" src="${path}/resources/bootstrap/js/front.js?v=1626279299959"></script>
<script type="text/javascript" src="${path}/resources/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${path}/resources/css/header.css">
<style>
	#header.no-bg #gnb>ul>li>a.gnb-txt-theater{background-image:url("${path}/resources/images/소통.png")}
	#footer .footer-bottom .ci{background-image:url("${path}/resources/images/중앙시네마.png")}
	#header.no-bg .ci a{background-image:url("${path}/resources/images/중앙시네마.png")}
	.rv_div {background-color:#fff; border:1px solid #b3b3b3; line-heihgt:1.25em; text-align: left; margin-top:3px;}
	.inbox {position:relative; padding:0 15px; background-color: #fff;}
	.text2 {height:72px;}
	.text {display:block; position: relative; overflow-x:hidden; overflow-y: auto; padding: 6px 0 0; padding-right:16px; border: none; resize:none}
	.guide {position:absolute; top: 6px; right: 25px; bottom: 5px; left:15px; z-index:10; border:none; color: #a1a1a1; line-height: 1.5; cursor:default;}
</style>
