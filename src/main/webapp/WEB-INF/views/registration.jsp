<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<div class="container-fluid">
		<div class="row-fluid">
			<div class="span8" >

				<h1>Registration Form</h1>
			
				<div id="message" class="alert alert-info">
					<spring:message code="message.registration.instructions"/>
				</div>
			
				<form:form id="registrationForm" method="post" modelAttribute="registrationDTO">
			
					<spring:message code="message.registration.type.username" var="typeUsernme" />
				  	<form:input cssClass="input-block-level" path="username" placeholder="${typeUsernme}" autocomplete="off" />
			 		
					<form:errors path="username" cssClass="alert alert-error" element="div"  />

					<spring:message code="message.registration.type.password" var="typePassword" />
					<form:input cssClass="input-block-level" path="password" placeholder="${typePassword}" autocomplete="off" />

					<form:errors path="password" cssClass="alert alert-error" element="div"  />

					<spring:message code="message.registration.type.email" var="typeEmail" />
					<form:input cssClass="input-block-level" path="email" placeholder="${typeEmail}" autocomplete="off" />

					<form:errors path="email" cssClass="alert alert-error" element="div"  />

					<c:if test="${not empty message}">
						<div id="message" class="alert alert-success" >
							<spring:message code="message.youWrote" arguments="${message}" htmlEscape="true" />
						</div>
					</c:if>
					
				  	<button type="submit" class="btn">Submit</button>
					
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>