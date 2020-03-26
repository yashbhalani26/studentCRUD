<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Data</title>
</head>
<body>
	

	<div align="center">
        <h1>Update Student</h1>
        <br />
        <form action='/edit/${student.id}' method='post'>
 	
            <table border="1" cellpadding="10">                 
                <tr>
                    <td>First Name:</td>
                    <td><input type="text" name="f_name" value="${student.f_name}"></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><input type="text" name="l_name" value="${student.l_name}"></td>
                </tr>
                <tr>
                    <td>Mobile Number:</td>
                    <td><input type="text" name="mobile_number" value="${student.mobile_number}"></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="email" name="email" value="${student.email}"></td>
                </tr>
 				<tr>
                    <td>Gender:</td>
                    <td><input type="radio" name="gender"  value="male" <c:if test="${student.gender=='male'}">checked</c:if>>Male
						<input type="radio" name="gender" value="female" <c:if test="${student.gender=='female'}">checked</c:if>>Female
					</td>
                </tr>
				<tr>
                    <td>City:</td>
                    <td><input type="text" name="city" value="${student.city}"></td>
                </tr> 
				<tr>
                    <td>State:</td>
                    <td><input type="text" name="state" value="${student.state}"></td>
                </tr>  
				<tr>
					<td>Country:</td>
					<td>
						<select id="country" name="country" value="${student.country}">
   
						   <option value="Cameroon" <c:if test="${student.country=='Cameroon'}">selected</c:if>>Cameroon</option>
						   <option value="Canada" <c:if test="${student.country=='Canada'}">selected</c:if>>Canada</option>
						   <option value="Canary Islands" <c:if test="${student.country=='Canary Islands'}">selected</c:if>>Canary Islands</option>
						   <option value="Cape Verde" <c:if test="${student.country=='Cape Verde'}">selected</c:if>>Cape Verde</option>
						   <option value="Cayman Islands" <c:if test="${student.country=='Cayman Islands'}">selected</c:if>>Cayman Islands</option>
						   <option value="Central African Republic" <c:if test="${student.country=='Central African Republic'}">selected</c:if>>Central African Republic</option>
						   <option value="China" <c:if test="${student.country=='China'}">selected</c:if>>China</option>
						   <option value="India" <c:if test="${student.country=='India'}">selected</c:if>>India</option>
						   <option value="Zambia" <c:if test="${student.country=='Zambia'}">selected</c:if>>Zambia</option>
						   <option value="Zimbabwe" <c:if test="${student.country=='Zimbabwe'}">selected</c:if>>Zimbabwe</option>
						</select>
					</td>
				</tr>                          
                <tr>
                    <td colspan="2"><button type="submit">Save</button> </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>