<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
I need to read this in <a href="?lang=en">English</a> | <a href="?lang=si">Sinhala</a> | <a href="?lang=jp">Japan</a>

<h2>Add Activity for ${event.eventName} </h2>
<form:form  commandName="activities" >
<div>
<div><spring:message code="activity.caption" ></spring:message></div>
<div>
	<form:input path="ActivityName"/><br>
 	<%-- <form:input path="ActivityCode"/> --%> 
</div>
<div>
	<button type="submit"><spring:message code="activity.button" ></spring:message></button>
</div>
</div>
</form:form>
</body>
</html>