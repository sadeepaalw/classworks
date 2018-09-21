<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<style>
.errorText{
color:#FF0000;}
.errorBanner{
color:#000000;
background-color:#ffeeee;
border:3px solid #ff0000;
margin: 16px;
padding: 3px;

}</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>add Event</title>
</head>
<body>

	<form:form commandName="event">
	<form:errors path="*" cssClass="errorBanner" element="div"></form:errors>
		<div>
			<h2> Add Event </h2>
		</div>
		<div>Enter Event</div>
		<div>
		<form:input path="eventName" cssErrorClass="errorText" element="div"></form:input>
		</div>
		<div>
			<input type="submit" value="add"/>
		</div>

	</form:form>

</body>
</html>