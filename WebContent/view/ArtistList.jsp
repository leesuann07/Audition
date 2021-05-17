<%@page import="vo.ArtistVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ArtistDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/dev/header.jsp"%>
<h1>참가자 목록 조회</h1>
<%
	ArtistDAO dao = new ArtistDAO();
	ArrayList<ArtistVO> list = dao.getAritstList();

	if (!list.isEmpty()) {
%>
<table>
	<tr>
		<td>참가번호</td>
		<td>참가자명</td>
		<td>생년월일</td>
		<td>성별</td>
		<td>특기</td>
		<td>소속사</td>
	</tr>
	<%
		for (ArtistVO vo : list) {
	%>

	<tr>
		<td><%=vo.getArtist_id()%></td>
		<td><%=vo.getArtist_name()%></td>
		<td><%=vo.getArtist_birth()%></td>
		<td><%=vo.getArtist_gender()%></td>
		<td><%=vo.getTalent()%></td>
		<td><%=vo.getAgency()%></td>
	</tr>



	<%
		}
	%>

</table>


<%
	}
%>

<%@ include file="/dev/footer.jsp"%>