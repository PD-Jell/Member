<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>json.jsp</title>
<%@include file="/WEB-INF/views/common.jspf" %>
<style type="text/css">
	p{
		
/* 		transition : background-color 1s; */
		transition : transform 1s;
		
	 }
</style>
<%--position : relative 는 위치를 변경해줄수 있게 허용 해주는거 디폴트는 스테틱이다 --%>

<script type="text/javascript">
// XML
// JSON (Javascript Object Notation)
// 	var member = {
// 			email : "xxx@webapp.com", 
// 			password : "1234", 
// 			name : "홍길동",
// 			gender : "male",
// 			hobby : ["programming", "reading"],
// 			comment : "열공할테다",
// 			reception : true
// 	};
$(document).ready(function() {
	
		$('.btn1').on("click", function(){
			// Ajax(Async javascript and xml) 로 member.json 을 가져와야한다.
			$.getJSON("member.json", function(member) {
				var message = "email = " + member.email + "<br>" +
				  "name = " + member.name + "<br>" +
				  "password = " + member.password + "<br>" +
				  "gender = " + member.gender + "<br>" +
				  "comment = " + member.comment + "<br>" + 
				  "hobby =  " + member.hobby + "<br>" +
				  "reception =" + member.reception + "<br>"; 
			  console.log(member);		
		$('p').html(message);
		$.each(member.hobby, function(index, value) {
// 			  console.log("hobby[= " + index +"] =" + member.hobby[index]);
			  console.log("hobby[= " + index +"] =" + value);
		});
//        each 는 배열을 처리하는거
		for(var i=0; i<member.hobby.length; i++){
			  console.log("hobby[= " + i +"] =" + member.hobby[i]);
		}
	
		});
		});
		
		
		$('.btn2').on("click", function(){
			$.getJSON("member.json", function(member) {		
				var message = "email = " + member.email + "<br>" +
				  "name = " + member.name + "<br>" +
				  "password = " + member.password + "<br>" +
				  "gender = " + member.gender + "<br>" +
				  "comment = " + member.comment + "<br>" + 
				  "hobby =  " + member.hobby + "<br>" +
				  "reception =" + member.reception + "<br>"; 
		$('p').text(message);
		});
		});
	
		
		
		$('.btn3').on("click", function(){
			$.getJSON("member.json", function(member) {		
				var message = "email = " + member.email + "<br>" +
				  "name = " + member.name + "<br>" +
				  "password = " + member.password + "<br>" +
				  "gender = " + member.gender + "<br>" +
				  "comment = " + member.comment + "<br>" + 
				  "hobby =  " + member.hobby + "<br>" +
				  "reception =" + member.reception + "<br>"; 
		$('p').append(message);
		});
		});
		
		
		$('.btn4').on("click", function(){
			$.getJSON("member.json", function(member) {		
				var message = "email = " + member.email + "<br>" +
				  "name = " + member.name + "<br>" +
				  "password = " + member.password + "<br>" +
				  "gender = " + member.gender + "<br>" +
				  "comment = " + member.comment + "<br>" + 
				  "hobby =  " + member.hobby + "<br>" +
				  "reception =" + member.reception + "<br>";
		$('p').prepend(message);
		});
		});
		
// 		$('p').on("click", function() {
// 			$(this).css("background-color", "red");
// 		});

		$('p').on("click", function() {
			$(this).css("transform", "translate(50px, 50px)");
		});
		
});
</script>
<%-- 	$('button').on(events, selector, data, handler) events 이름하고 function 만 주면된다 --%>

</head>
<body>
<h1>Json</h1>
<button class="btn1">member print text</button>
<button class="btn2">member print html</button>
<button class="btn3" title="메세지를 추가해주는거">member print append</button>
<button class="btn4" title="append랑 순서가다름">member print prepend</button>
<p>
</p>
</body>
</html>