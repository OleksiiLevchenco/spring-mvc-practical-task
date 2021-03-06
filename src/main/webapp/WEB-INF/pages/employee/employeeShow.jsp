<%@page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springForm" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Employee</title>
</head>

<jsp:include page="../fragments/header.jsp" />

<body>
<c:if test="${not empty msg}">
    <div class="${css}">
        <strong>${msg}</strong>
    </div>
</c:if>

<h1>Employee details</h1>

<table>

    <tr class="oddLine">
        <th>ID</th>
        <td>${employeeAttribute.id}</td>
        <td rowspan="2"><img src="${employeeAttribute.imgUrl} " height="150"/></td>
    </tr>
    <tr class="evenLine">
        <th>Name</th>
        <td>${employeeAttribute.name}</td>
    </tr>

</table>



<spring:url var="updateUrl" value="/shops/${shop.id}/employees/${employeeAttribute.id}/update" />
<spring:url var="deleteUrl" value="/shops/${shop.id}/employees/${employeeAttribute.id}/delete" />
<c:url var="employeesUrl" value="/shops/${shop.id}/employees" />


<div style="margin-top: 15px">

    <div  style="margin-left: 15px; display: inline;">
        <a href="${updateUrl}">
            <button>Edit</button>
        </a>
    </div>

    <div style="margin-left: 15px; display: inline; width: 150px ">
        <a href="${deleteUrl}">
            <button>Delete</button>
        </a>
    </div>

    <div style="margin-left: 15px; display: inline;">
        <a href="${employeesUrl}">
            <button>Back</button>
        </a>
    </div>




</div>

<jsp:include page="../fragments/footer.jsp" />

</body>

</html>
