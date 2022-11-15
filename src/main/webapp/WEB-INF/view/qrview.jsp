<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.1/dist/tailwind.min.css" rel="stylesheet" type="text/css" />
	<link href="https://cdn.jsdelivr.net/npm/daisyui@1.9.0/dist/full.css" rel="stylesheet" type="text/css" />
	<link href="https://community.sparkplus.co/files/css/qr.css?1664348961"rel="stylesheet" type="text/css" /> 
    <title>Spring Boot Application</title>
</head>

<body>
	<div class="inner_wrap">
        <form name="booking_frm" id="qr_frm">
            <input type="hidden" name="able_time" value="{&quot;MON&quot;:{&quot;start_at&quot;:&quot;00:00&quot;,&quot;end_at&quot;:&quot;24:00&quot;,&quot;use&quot;:true},&quot;TUE&quot;:{&quot;start_at&quot;:&quot;00:00&quot;,&quot;end_at&quot;:&quot;24:00&quot;,&quot;use&quot;:true},&quot;WED&quot;:{&quot;start_at&quot;:&quot;00:00&quot;,&quot;end_at&quot;:&quot;24:00&quot;,&quot;use&quot;:true},&quot;THU&quot;:{&quot;start_at&quot;:&quot;00:00&quot;,&quot;end_at&quot;:&quot;24:00&quot;,&quot;use&quot;:true},&quot;FRI&quot;:{&quot;start_at&quot;:&quot;00:00&quot;,&quot;end_at&quot;:&quot;24:00&quot;,&quot;use&quot;:true},&quot;SAT&quot;:{&quot;start_at&quot;:&quot;00:00&quot;,&quot;end_at&quot;:&quot;24:00&quot;,&quot;use&quot;:true},&quot;SUN&quot;:{&quot;start_at&quot;:&quot;00:00&quot;,&quot;end_at&quot;:&quot;24:00&quot;,&quot;use&quot;:true}}">
            <input type="hidden" name="seq_member" value="11ED06364E8279CA8FB50AE9EC11143E">
            <input type="hidden" name="type" value="ALWAYS">
            <input type="hidden" name="log_key" value="4230ae8e09919bc3228efd86354cc494">
            <input type="hidden" name="start_date_at" value="1668516700">
            <input type="hidden" name="end_date_at" value="">
            <input type="hidden" name="enable_dow" value="MON,TUE,WED,THU,FRI,SAT,SUN">
            <input type="hidden" name="visit_price" value="0">
            <input type="hidden" name="visit_property" value="11EB08B338F25952A0C30AE156125F54">
            <input type="hidden" name="bcode" value=""><!--수정필요-->
            <input type="hidden" name="fcode" value="9Pl3Qzx7tlg2vNiQnajsNXsoR58Czy,KI7Z4aa6rN3sI7C3JO6im6Q9F3EQ0D,nO4zYJSLT3A80eSaPGsJJiMTVngF94">
            <input type="hidden" name="visit_floor" value="">
            <input type="hidden" name="dow" value="">
            <input type="hidden" name="interval_day" value="0">
            <input type="hidden" name="visit_type" value="DAY">
            <input type="hidden" name="payment_type" value="contract">
            <input type="hidden" name="rest_per_day" value="무제한">
            <input type="hidden" name="limit_per_day" value="0">
            <input type="hidden" name="yn_limit_per_day" value="N">
            <input type="hidden" name="rest_per_month" value="무제한">
            <input type="hidden" name="limit_per_month" value="0">
            <input type="hidden" name="yn_limit_per_month" value="N">
            <input type="hidden" name="sub_count" value="1"> <!--사용횟수가 변경되면 수정해야함-->
            <input type="hidden" name="needed_credit" value="0.00"><!--수정필요-->
            <input type="hidden" name="needed_invoice" value="0원원"><!--수정필요-->
            <input type="hidden" name="rest_credit" value="22.50"><!--수정필요-->
        </form>
        <div class="box_qr" id="11ED647EAB973B2A8FB50AE9EC11143E">
        <div class="qr_box" name="timeout">
            <em class="qr_count">999초</em>
            <span class="qr_img" id="qr_img">
                <img src="data: ;base64,${base64img}" id="qr_image" class="img_block" alt="">
            </span>
            <strong class="tit_space _alias">을지로점</strong>
            <div class="txt_ellipsis2">2022.12.31 (화)</div>
            <div class="qr_memo">-</div>
            <div class="type_qr_detail">
            <strong class="screen_out">QR 상세보기</strong>
            <div class="box_qr" id="layer_11ED647EAB973B2A8FB50AE9EC11143E">
                <div class="qr_info">
                    <strong class="tit_space _alias">을지로점 <em class="lab_day my">당일</em></strong>
                    <div class="box_define">
                        <dl class="list_define"><dt>방문층</dt><dd class="_floor">17층, 19층, 20층</dd></dl>
                        <dl class="list_define"><dt>방문일정</dt><dd class="_date_at">2022.11.15 00:00 - 24:00</dd></dl>
                        <dl class="list_define"><dt>결제금액</dt><dd class="_amount">무료</dd></dl>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
    <div class="txt_noti">해당 페이지는 당일 예약건만 확인할 수 있습니다.</div>
</div>
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