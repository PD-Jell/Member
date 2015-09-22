<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gridview.jsp</title>
<%@ include file="/WEB-INF/views/common.jspf"%>
<style type="text/css">
</style>
</head>
<body>
	<h1>gridview</h1>
	<section class="w3-row">
	<!-- l은 데스크톱일 때, m은 태블릿일 때 -->
		<article class="w3-col s12 m6 l4 w3-red">article1</article>
		<article class="w3-col s6 m6 l4 w3-green">article2</article>
		<article class="w3-col s6 m12 l4 w3-blue">article3</article>
	</section>
</html>