<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.1/dist/tailwind.min.css" rel="stylesheet" type="text/css" />
	<link href="https://cdn.jsdelivr.net/npm/daisyui@1.9.0/dist/full.css" rel="stylesheet" type="text/css" />
    <title>Spring Boot Application</title>
</head>

<body>
	<section class="section section-article-write">
		<div class="container mx-auto">
			<form action="w-full">
				<div class="form-control">
					<label class="label">
						<span class="label-text">Warning: ${statusCode eq "01" ? '예약된 정보가 없습니다.': 'QR정보'}</span>
					</label>
				</div>
				<div class="form-control">
					<img width="240" height="240" style="" alt="" src="data:image/jpeg;base64,${base64img}">
				</div>
			</form>
		</div>
	</section>
</body>
<%-- <body>
    <table>
    <tr>
    <td>
       <h3>Warning: ${statusCode eq "01" ? '예약된 정보가 없습니다.': 'QR정보'}</h3>
       <c:if test="${statusCode eq '00'}">
           <img width="240" height="240" style="margin-left:60px;"alt="" src="data:image/jpeg;base64,${base64img}">
           <h5>data2 : ${base64img.substring(0,10)}...</h5>
       </c:if>
       <td>
    </tr>
    </table>
    
    <script>
    //setInterval(function () { alert('hello'); }, 3000);
    </script>
 --%>    
</html>
<%--
// 디코더:
https://www.rapidtables.org/ko/web/tools/base64-to-image.html
--%>