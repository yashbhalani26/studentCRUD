<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div>
<a href="/add">Add New Student</a>	
    <h4>Students Records:</h4>
    <table border="1">
        <thead>
        <tr class="text-center">
            
            <th class="text-center"><b>First Name</b></th>
            <th class="text-center"><b>Last Name</b></th>
            <th class="text-center"><b>Mobile Number</b></th>
            <th class="text-center"><b>Email</b></th>
            <th class="text-center"><b>Gender</b></th>
            <th class="text-center"><b>City</b></th>
            <th class="text-center"><b>State</b></th>
            <th class="text-center"><b>Country</b></th>
            <th class="text-center" colspan='2'><b> Operation</b></th>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${list}" var="student">
            <tr>
            	
                <td><c:out value="${student.f_name}"></c:out></td>
                 <td><c:out value="${student.l_name}"></c:out></td>
                <td><c:out value="${student.mobile_number}"></c:out></td>
                <td><c:out value="${student.email}"></c:out></td>
                <td><c:out value="${student.gender}"></c:out></td>
                <td><c:out value="${student.city}"></c:out></td>
                <td><c:out value="${student.state}"></c:out></td>
                <td><c:out value="${student.country}"></c:out></td>
                <td>
                    <a href="/edit?id=${student.id}">
                   
                        <button type="submit" class="btn btn-primary">Edit Student</button>
                    </a>

                    <a href="/delete?id=${student.id}">
                        <button type="submit" class="btn btn-danger"
                                onclick="alert(' !! Warning !! Student record will be deleted.')">Delete Student
                        </button>
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</div>
<div><br></div>
</body>
</html>