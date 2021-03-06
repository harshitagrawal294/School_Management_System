<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@page session="true"%>
<spring:url var="style" value="/style" />
<html>

<link rel="stylesheet" type="text/css" href="${style}/bootstrap/css/bootstrap.min.css" /><head>
<script src="${style}/bootstrap/js/bootstrap.min.js"></script>
<script src="${style}/bootstrap/js/jquery.min.js"></script>

<link rel="stylesheet" type="text/css" href="${style}/css/studentReportSection.css" />

<head>
<title>Edit Status</title>
</head>

<c:if test="${pageContext.request.userPrincipal.name != null}">
        
        <%@include file="./shared/navbarTeacher.jsp" %>
        <div class="wrapper">
            <table>
            <caption>Edit Status</caption>
            <thead>
            <tr>
                <th>HomeworkID</th>
                <th>StudentID</th>
                <th>Status</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${statusList.status}" var="homework" varStatus="status">
                <tr>
                    <td>${homework.homeworkID}</td>
					<td>${homework.studentID}</td>
					<td>${homework.status}</td>
                </tr>
            </c:forEach>
            </tbody>
        	</table>
        </div>
    
</c:if>