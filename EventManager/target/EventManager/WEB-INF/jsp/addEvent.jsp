<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>add Event</title>
</head>
<body>

	<form:form commandName="event">

		<div>
			<h2> Add Event </h2>
		</div>
		<div>Enter Event</div>
		<div>
		<form:input path="eventName"></form:input>
		</div>
		<div>
			<input type="submit" value="add"/>
		</div>

	</form:form>

</body>
</html>