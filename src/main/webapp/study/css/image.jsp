<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>display.jsp</title>
<%@ include file="/WEB-INF/views/common.jspf"%>
<style type="text/css">
span, img {
	border: 1px solid red;
	height: 150px;
	width: 150px;
/* 	display: inline-block; */
float: right;
}
</style>
</head>
<body>
	<h1>display : inline | block | inline-block</h1>
	<span>display span inline</span>
	<img style="vertical-align: bottom;" alt="100x100"
		src="http://www.placehold.it/100x100">
	<!-- placehold.it...기억해둘 것. -->

	<p>2015-09-09 09:24:18 INFO
		org.springframework.web.servlet.handler.SimpleUrlHandlerMapping:341 -
		Mapped URL path [/img/**] onto handler
		'org.springframework.web.servlet.resource.ResourceHttpRequestHandler#0'
		2015-09-09 09:24:18 INFO
		org.springframework.web.servlet.handler.SimpleUrlHandlerMapping:341 -
		Mapped URL path [/js/**] onto handler
		'org.springframework.web.servlet.resource.ResourceHttpRequestHandler#1'
		2015-09-09 09:24:18 INFO
		org.springframework.web.servlet.handler.SimpleUrlHandlerMapping:341 -
		Mapped URL path [/css/**] onto handler
		'org.springframework.web.servlet.resource.ResourceHttpRequestHandler#2'
		2015-09-09 09:24:18 INFO
		org.springframework.web.servlet.DispatcherServlet:507 -
		FrameworkServlet 'springDispatcherServlet': initialization completed
		in 1201 ms 9월 09, 2015 9:24:18 오전 org.apache.coyote.AbstractProtocol
		start 정보: Starting ProtocolHandler ["http-nio-8080"] 9월 09, 2015
		9:24:18 오전 org.apache.coyote.AbstractProtocol start 정보: Starting
		ProtocolHandler ["ajp-nio-8009"] 9월 09, 2015 9:24:18 오전
		org.apache.catalina.startup.Catalina start 정보: Server startup in 10263
		ms</p>
</html>