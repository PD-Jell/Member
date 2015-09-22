<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width; initial-scale=1.0; user-scalable=no;">
<title>mediaquery.jsp</title>
<%@ include file="/WEB-INF/views/common.jspf"%>
<style type="text/css">
article {
	margin: 5px;
	border: 1px solid red;
}
/* 600,768, */
@media screen and (min-width : 600px) and (max-width : 767px) {
	.col-half {
		width: 47%;
		float: left;
		background-color: blue;
	}
}

@media screen and (min-width : 768px) {
	.col-third {
		width: 31%;
		float: left;
		background-color: red;
	}
}
</style>
</head>
<body>
	<h1>mediaquery</h1>
	<!-- section, article은 다 block이다. -->
	<section>
		<article class="col-third col-half">atricle1</article>
		<article class="col-third col-half">atricle2</article>
		<article class="col-third col-half">atricle3</article>
	</section>
</html>