<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Spring Boot Application</title>
</head>
<body>
    <table>
    <tr>
    <td>
       <h3>Warning: ${statusCode eq "01" ? '예약된 정보가 없습니다.': 'QR정보'}</h3>
       <c:if test="${statusCode eq '00'}">
           <img width="370" height="370" alt="" src="data:image/jpeg;base64,"+${base64img}>
           <h5>data2 : ${base64img}</h5>
       </c:if>
       <td>
    </tr>
    </table>
    
    <script>
    //setInterval(function () { alert('hello'); }, 3000);
    </script>
    
</html>
<%--
// 디코더:
https://www.rapidtables.org/ko/web/tools/base64-to-image.html
--%>