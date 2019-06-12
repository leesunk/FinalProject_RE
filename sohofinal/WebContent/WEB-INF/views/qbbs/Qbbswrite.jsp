<%@page import="sh.model.ShMemberDto"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



</head>
<body>

<%
Object ologin = session.getAttribute("login");
ShMemberDto mem = (ShMemberDto)ologin;
%>

<h1 align="center">글쓰기</h1>

<div align="center">

	<form action="QbbswriteAf.do" method="post">

		<table border="1" class="list_table">
			<col width="200"><col width="400"> 
			
			<tr>
				<th>아이디</th>
				<td>
					<input type="text" name="id" readonly="readonly" size="50px" 
						value="<%=mem.getId() %>">
				</td>
			</tr>	
			<tr>
				<th>제목</th>
				<td>
					<input type="text" name="title" size="50px">		
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea rows="20" cols="50px" name="content"></textarea>		
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="글쓰기" class="ebbsbutton"><a href="Qbbslist.do" class="ebbsbutton">글목록</a>
				</td>
			</tr>
		
		</table>
	
	</form>

</div>



</body>
</html>