<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>unit.jsp</title>
<%@ include file="/WEB-INF/views/common.jspf"%>
<style type="text/css">
.box{
/* margin: 10px; */
margin: 10pt;
background-color: red;
height: 20pt;
display: block;
}
</style>
</head>
<body>
	<h1>unit</h1>
	<h2>
	px : 픽셀 dpi(density per inch)<br>
	inch : 1inch = 2.54cm = 25.4mm<br>
	cm : 절대 단위<br>
	mm : 절대 단위<br>
	pt : 1pt = 1/72inch<br>
	pc : 1pc = 12pt<br>
	em : 1em = 현재폰트의 1배수.<br>
	ex : 1ex = 현재폰트의 1/2배수.<br>
	</h2>
	
	<div class="box" style="width: 1in;">box1</div>
	<div class="box" style="width: 2.54cm;">box2</div>
	<div class="box" style="width: 25.4mm;">box3</div>
	<div class="box" style="width: 6pc;">box4</div>
	<div class="box" style="width: 96px;">box5</div>
	
	<p>Hello Units</p>
	<p style="font-size: 1em">Hello Units 1em</p>
	<p style="font-size: 2em">Hello Units 2em</p>
	<p style="font-size: 1ex">Hello Units 1ex</p>
	<p style="font-size: 2ex">Hello Units 2ex</p>
</html>