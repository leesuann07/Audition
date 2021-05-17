<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/dev/header.jsp" %>
<h1>오디션 등록</h1>
<form name = "frm" method="post" action="/view/InsertPro.jsp" >
<table style="width: 700px">
<tr>
<td>참가번호</td>
<td><input type="text" id="artist_id" name="artist_id"></td>
</tr>
<tr>
<td>참가자명</td>
<td><input type="text" id="artist_name" name="artist_name"></td>
</tr>
<tr>
<td>생년월일</td>
<td><input type="text" id="artist_birth" name="artist_birth"></td>
</tr>
<tr>
<td>성별(남성:M 여성:F)</td>
<td>남성:<input type="radio" value="M" id = "artist_gender" name="artist_gender">여성:<input type="radio" value="F" id = "artist_gender" name="artist_gender"></td>
</tr>
<tr>
	<td>특기</td>
	<td>
	<select id="talent" name="talent">
		<option value="1">보컬</option>
		<option value="2">댄스</option>
			<option value="3">랩</option>
	</select></td>
	</tr>
	<tr>
<td>소속사</td>
<td><input type="text" id="agency" name="agency"></td>
</tr>
<tr>
	<td colspan="2">
		<input type="button" value="오디션등록" onclick="return checkfrm()">
		<input type="reset" value="다시쓰기">
	</td>
</tr>
</table>
</form>
<script>
function checkfrm() {
	if(document.frm.artist_id.value.trim() == ""){
		alert("참가번호가 입력되지 않았습니다!");
		return false;
	}
	if(document.frm.artist_name.value.trim() == ""){
		alert("참가자명이 입력되지 않았습니다!");
		return false;
	}
	if(document.frm.artist_birth.value.trim() == ""){
		alert("생년월일이 입력되지 않았습니다!");
		return false;
	}if(document.frm.artist_gender.value.trim() == ""){
		alert("성별이 입력되지 않았습니다!");
		return false;
	}
	if(document.frm.talent.value.trim() == ""){
		alert("특기가 입력되지 않았습니다!");
		return false;
	}
	if(document.frm.agency.value.trim() == ""){
		alert("소속사가 입력되지 않았습니다!");
		return false;
	}else{
		document.frm.submit();
	}
	
}



</script>

<%@ include file="/dev/footer.jsp" %>