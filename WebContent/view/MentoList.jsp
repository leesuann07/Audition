<%@page import="vo.MentoVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ArtistDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/dev/header.jsp"%>
<h1>멘토 점수 조회</h1>
<%
	ArtistDAO dao = new ArtistDAO();
	ArrayList<MentoVO> list = dao.getmentoList();
	if (!list.isEmpty()) {
%>

<table>
	<tr>
		<td>참가번호</td>
		<td>참가자명</td>
		<td>생년월일</td>
		<td>점수</td>
		<td>등급</td>
		<td>멘토이름</td>
	</tr>

	<%
		for (MentoVO vo : list) {
	%>
	<tr>
		<td><%=vo.getArtist_id()%></td>
		<td><%=vo.getArtist_name()%></td>
		<td><%=vo.getArtist_birth()%></td>
		<td><%=vo.getPoint()%></td>
		<%
			String grade = "";
					if (vo.getGrade() >= 90) {
						grade = "A";
					} else if (vo.getGrade() >= 80) {
						grade = "B";
					} else if (vo.getGrade() >= 70) {
						grade = "C";
					} else if (vo.getGrade() >= 60) {
						grade = "D";
					} else if (vo.getGrade() < 60) {
						grade = "E";
					}
		%>
		<td><%=grade%></td>
		<td><%=vo.getMento_name()%></td>
	</tr>

	<%
		}
	%>
</table>


<%
	}else{
		%>
		<h3>등록된 정보 없음</h3>
		<% 
	}
%>




<%@ include file="/dev/footer.jsp"%>