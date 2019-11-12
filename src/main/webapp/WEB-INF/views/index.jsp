<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: vietngatran
  Date: 12/11/2019
  Time: 09:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<h1>Caculator</h1>
<%--<form:form action="caculate" method="post">--%>
<%--    <form:input path="number1" value="${number1}"/>--%>
<%--    <form:input path="number2" value="${number2}"/>--%>
<%--  <form:button type="submit" name="caculator" value="+">Add(+)</form:button>--%>
<%--  <form:button type="submit" name="caculator" value="-">Sub(+)</form:button>--%>
<%--  <form:button type="submit" name="caculator" value="*">Multi(+)</form:button>--%>
<%--  <form:button type="submit" name="caculator" value="/">Div(+)</form:button>--%>
<%--</form:form>--%>

<form action="caculate" method="post">
  <p><input type="number" name="number1" value="${number1}">
    <input type="number" name="number2" value="${number2}">
  </p>
  <p>
    <button type="submit" name="caculator" value="+">Add(+)</button>
    <button type="submit" name="caculator" value="-">Sub(-)</button>
    <button type="submit" name="caculator" value="*">Multi(+)</button>
    <button type="submit" name="caculator" value="/">Div(/)</button>
</form>
<p>Result: ${result}</p>
</body>
</html>
