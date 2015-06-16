<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

here!

<%@ page language="java"%>
<%! int count = 0;%>
<% count ++; %>

<%= count  %>


<!-- The labels and ids have been omitted for brevity.  -->
<form:form commandName="MyModel"1
           name="myForm" 
           action="${pageContext.request.contextPath}/MyController/saveModel.action"2
           method="post">
   <form:input path="name"/>3
   <form:textarea path="description" rows="3" cols="20" />
   <form:checkbox path="validated" value="Magic"/>
   <form:select path="country">
      <form:option value="-" label="--Select Country"/>
      <form:options items="${countries}"/>4
   </form:select>
   <form:radiobuttons path="color" items="${colors}" />5

   <input type="submit" value="OK" />6
</form:form>

</body>
</html>