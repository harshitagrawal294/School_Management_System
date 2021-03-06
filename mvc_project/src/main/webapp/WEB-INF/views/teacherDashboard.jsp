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
<title>${topic}</title>
<style>
ul {
  list-style: none;
}
td:first-child {
font-weight: bold;
}
</style>
</head>
<html>
<body>
<c:if test="${pageContext.request.userPrincipal.name != null}">
        	<%@include file="./shared/navbarTeacher.jsp" %>
        	<div class="wrapper">
			<table>
			  <caption>${topic}</caption>
			<tbody>
			
        	<tr>
	        	<td>Teacher ID</td>
	        	<td>${teacher.teacherID}</td>
        	</tr>
        	<tr>
	        	<td>First Name</td>
	        	<td>${teacher.firstName}</td>
        	</tr>
        	<tr>
	        	<td>Middle Name</td>
	        	<td>${teacher.middleName}</td>
        	</tr>
        	<tr>
	        	<td>Last Name</td>
	        	<td>${teacher.lastName}</td>
        	</tr>
        	<tr>
	        	<td>gender</td>
	        	<td>${teacher.gender}</td>
        	</tr>
        	<tr>
	        	<td>DOB</td>
	        	<td>${teacher.DOB}</td>
        	</tr>
        	<tr>
	        	<td>Mobile No</td>
	        	<td>${teacher.mobNo}</td>
        	</tr>
        	<tr>
	        	<td>Email ID</td>
	        	<td>${teacher.email}</td>
        	</tr>
        	<tr>
	        	<td>House No</td>
	        	<td>${teacher.houseNo}</td>
        	</tr>
        	<tr>
	        	<td>Street</td>
	        	<td>${teacher.street}</td>
        	</tr>
        	<tr>
	        	<td>Locality</td>
	        	<td>${teacher.locality}</td>
        	</tr>
        	<tr>
	        	<td>City</td>
	        	<td>${teacher.city}</td>
        	</tr>
        	<tr>
	        	<td>State</td>
	        	<td>${teacher.state}</td>
        	</tr>
        	<tr>
	        	<td>Pin Code</td>
	        	<td>${teacher.pincode}</td>
        	</tr>
        	<tr>
	        	<td>Aadhar No</td>
	        	<td>${teacher.aadharNo}</td>
        	</tr>
        	<tr>
	        	<td>Salary</td>
	        	<td>${teacher.salary}</td>
        	</tr>
        	<tr>
	        	<td>Marital Status</td>
	        	<td>${teacher.maritalStatus}</td>
        	</tr>
        	<tr>
	        	<td>Qualification</td>
	        	<td>${teacher.qualification}</td>
        	</tr>
        	<tr>
	        	<td>Join Date</td>
	        	<td>${teacher.joinDate}</td>
        	</tr>
        	<tr>
	        	<td>Resign Date</td>
	        	<td>${teacher.resignDate}</td>
        	</tr>
        	<tr>
	        	<td>Languages</td>
	        	<td>
	        	<ul>
	        	<c:forEach items="${languages}" var="listVar">
	        	<li><c:out value="${listVar.language}"/></li>
				</c:forEach>
	        	</ul>
	        	</td>
        	</tr>
        	

		  </tbody>
		</table>
        </div>
</c:if>
</body>
</html>
