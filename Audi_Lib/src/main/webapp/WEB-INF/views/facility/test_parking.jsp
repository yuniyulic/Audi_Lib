<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/facility/library_map.css">
<link rel="stylesheet" href="/resources/css/facility/common.css">
<link rel="stylesheet" href="/resources/css/facility/parking.css">
<style type="text/css"></style>
<script type="text/javascript" src="/resources/js/facility/parking.js?ver=2"></script>
</head>
<body>
<div class="Audi3040">
주차장 테스트 페이지

<div class="row">
	<!-- 달력 시작 -->
	<div class="col-5">
	</div>
	<div class="col-7">
		<table id="calendar">
			<tr class="calHeadTr">
				<td><label onclick="prevCalendar()" style="cursor: pointer;"><</label></td>
				<td align="center" id="tbCalendarYM" colspan="5">yyyy년 m월</td>
				<td><label onclick="nextCalendar()" style="cursor: pointer;">></label></td>
			</tr>
			<tr class="calBodyTr">
				<td align="center"><font color="red" class="calBodyTr">일</font></td>
				<td align="center">월</td>
				<td align="center">화</td>
				<td align="center">수</td>
				<td align="center">목</td>
				<td align="center">금</td>
				<td align="center"><font color="blue" class="calBodyTr">토</font></td>
			</tr>
		</table>
	</div>
	<!-- 달력 끝 -->


</div>
</div> <!-- Audi3040 -->

<script type="text/javascript">
	buildCalendar();//
</script>

</body>
</html>