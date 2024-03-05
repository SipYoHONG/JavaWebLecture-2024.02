<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
<title> Member List </title>
    <style>
        .mid-odd { color: blue; }
        .mid-even { color: red; }
        .age-under20 { color: blue; }
        .age-20andover { color: red; }
        .country-korea { background-color: orange; }
        .country-usa { background-color: skyblue; }
        .country-other { background-color: beige; }
        .name-first { background-color: yellow; }
        .name-last { background-color: cyan; }
        .name-other { background-color: beige; }
    </style>
</head>
<body>
	<h2> Member List </h2>
	<hr> 
	<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>나이</th>
			<th>국적</th>
		</tr>
		<c:forEach var="member" items="${members}" varStatus="status">
	        <tr>
	            <td class="${member.mid % 2 == 0 ? 'mid-even' : 'mid-odd'}">${member.mid}</td>
		        <td class="${status.index == 0 ? 'name-first' : status.last ? 'name-last' : 'name-other'}">${member.name}</td>
		        <td class="${member.age < 20 ? 'age-under20' : 'age-20andover'}">${member.age}</td>
		        <td class="${member.country == 'KR' ? 'country-korea' : member.country == 'USA' ? 'country-usa' : 'country-other'}">${member.country}</td>
	        </tr>
   		</c:forEach>
	</table>
</body>
</html>