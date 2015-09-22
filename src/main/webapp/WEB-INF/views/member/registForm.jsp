<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registForm.jsp</title>

<%@ include file="/WEB-INF/views/common.jspf"%>

<!-- 클래스로 지정, .class로 지정, #id로 지정. 둘이 겹치면 둘 다 됨. 
opacity는 투명도. 0이 투명. 여기서 쓴건 본문에서 오버라이드 할 수 있다.
transform은 element를 변형시킨다. (-moz-rotate(-45deg); 처럼...)
moz는 mozilla에 있는 rotate함수를 켜겠다..라는 의미. webkit도 있다.
inline은 텍스트 크기만큼만 영역을 차지하겠다..
inline-block은 inline과 block속성을 다 사용하겠다...
-->
<style type="text/css">
/* .fade { */
/* 	opacity: 0.7; */
/* 	border-radius: 10px; */
/* 	background-color: #DDFFDD; */
/* } */
form {
	width: 400px;
/* 	border: 1px solid orange; */
	border-top: 1px double red;
	border-bottom: 1px double red;
}

.center{
	text-align: center;
	text-shadow: 5px 5px 1px blue;
}

#member {
	margin: auto auto;
}

/* .none { */
/* 	display: none; */
/* } */

/* .block { */
/* 	display: block; */
/* } */
label[for^=gender], label[for^=hobby] {
	padding-left: 5px;
	padding-right: 10px;
	color: orange;
}
/* 시작이 gender이면 모두 적용. */
/* =앞에 ^,*,%가 올 수 있음. */
</style>


<script type="text/javascript">
	//	준비 핸들러.
	// 	불러오기가 끝나면 알아서 얘가 작동하게끔..head로 올리려면 반드시 필요함.
	
// 	$(document).ready(
// 			function() {
// 				$('form').slideToggle().slideToggle(1000).fadeOut(500).fadeIn(
// 						500,
// 						function() {
// 							$('label[for^=gender]').css('backgroundColor',
// 									'pink').fadeOut(1000).fadeIn(1000);
// 						});
// 			});
	
	//css를 정할때에는 -가 아닌 낙타로 줘야한다.
</script>

</head>
<body>

	<!-- 	<button id="xxx1">display=none</button> -->
	<!-- 	<button id="xxx2">display=block</button> -->
	<!-- 	<script type="text/javascript"> -->
	<!-- 		$('#xxx1').click(function() { -->
	<!-- 			$('h1').addClass('none').removeClass('block'); -->
	<!-- 		}); -->
	<!-- 		$('#xxx2').click(function() { -->
	<!-- 			$('h1').addClass('block').removeClass('none'); -->
	<!-- 		}); -->
	<!-- 	</script> -->
	<%-- 	<%=pageContext.getRequest().getLocale()%> --%>

	<h1 class="center">
		<a href="regist"><spring:message code="member.regist.title" /></a>
	</h1>

	<form:form commandName="member" action="regist" method="post">
		<%-- cssClass="fade" --%>

		<%-- Global Error를 div로 만들도록.. --%>
		<form:errors element="div" />

		<!-- Email -->
		<div class="form-group">
			<label for="email"><spring:message code="member.regist.email" /></label>
			<form:input path="email" cssClass="form-control" />
			<form:errors path="email" />
		</div>
		<!-- Password -->
		<div class="form-group">
			<label for="password"><spring:message
					code="member.regist.password" /></label>
			<form:password path="password" cssClass="form-control" />
			<form:errors path="password" />
		</div>
		<!-- Name -->
		<div class="form-group">
			<label for="name"><spring:message code="member.regist.name" /></label>
			<form:input path="name" cssClass="form-control" />
			<form:errors path="name" />
		</div>
		<!-- Gender -->
		<div class="form-group">
			<div>
				<spring:message code="member.regist.gender" />
			</div>
			<form:radiobuttons path="gender" items="${gender}"
				cssStyle="margin:0px 5px;" />
			<form:errors path="gender" />
		</div>
		<!-- Hobby -->
		<div class="form-group">
			<div>
				<spring:message code="member.regist.hobby" />
			</div>
			<form:checkboxes items="${hobby}" path="hobby" itemLabel="label"
				itemValue="code" />
			<form:errors path="hobby" />
		</div>
		<!-- Comment -->
		<div class="form-group">
			<div>
				<spring:message code="member.regist.comment" />
			</div>
			<form:textarea path="comment" cssClass="form-control" rows="10" />
			<form:errors path="comment" />
		</div>

		<!-- 		Email Receive true/false -->
		<div class="form-group">
			<label for="reception"><spring:message
					code="member.regist.reception" /></label>
			<form:checkbox path="reception" />
			<form:errors path="reception" />
		</div>

		<!-- Submit -->
		<input type="submit" value="회원가입" />
	</form:form>

</body>
</html>