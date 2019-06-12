<%@page import="sh.model.ShMemberDto"%>
<%@page import="sh.model.ShNbbsDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
Object ologin = session.getAttribute("login");
ShMemberDto mem = (ShMemberDto)ologin;

String getSeq = request.getParameter("seq");
int seq = Integer.parseInt(getSeq.trim());

ShNbbsDto nbbsdto = (ShNbbsDto)request.getAttribute("nbbs");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
body, div {
	float: center;
}

@import url("/css/table.css");

.list_table {
	width: 1000px;
}

.list_table th {
	border-bottom: 1px solid #81c341;
}

.list_table td {
	text-align: left;
	padding-left: 20px;
}

input {
	width: 100%;
}

#_nbbs_id, #_nbbs_title, #_nbbs_content {
	width: 100%; 
	background-color: transparent; 
	border: none;
}

#_nbbs_content {
	resize: none;
}
</style>
</head>
<body>

<form action="nbbsupdateAf.do" name="frmForm" id="_frmForm"  method="post">

<div class="nbbs_update" align="center">

<h2 align="center"><strong>공지사항 수정</strong></h2>
<span>※ 제목과 내용만 수정 가능합니다 (내용 수정 필수)</span>

<input type="hidden" name="seq" id="_seq" value="<%=nbbsdto.getSeq() %>">

<table class="list_table">
<col width="100"><col width="600">
<tr style="height: 40px;">
	<th>ID</th>
	<td>
		<%=nbbsdto.getId() %>
		<%-- <input type="text" name="id" id="_nbbs_id" value="<%=nbbsdto.getId() %>" readonly="readonly" style="border: 0px;"> --%>
	</td>
</tr>
<tr style="height: 40px;">
	<th>제목</th>
	<td>
		<input type="text" name="title" id="_nbbs_title" value="<%=nbbsdto.getTitle() %>" style="border: 0px;">
	</td>
</tr>
<tr>
	<th><b>내용</b></th>
	<td style="background-color: #fcfff2;">
		<textarea rows="10" cols="75" name="content" id="_nbbs_content"><%=nbbsdto.getContent() %></textarea>
	</td>
</tr>
<!-- <tr>
	<td></td><td align="center" style="border: 0;"><input type="submit" id="_updateBtn" value="올리기" class="ebbsbutton" ></td>
</tr> -->
</table>

</div>

<div style="padding-bottom: 20px" align="center">
<table>
<tr>
	<td>
		<input type="button" id="_updateBtn" value="수정하기" class="btn btn-default btn-block"
			style="width: 100px">
	</td>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td>
		<input type="button" id="_cancelBtn" value="취소" class="btn btn-default btn-block"
			style="width: 100px">
	</td>
</tr>
</table>
</div>

<div style="padding-bottom: 20px">

</div>

</form>

<script type="text/javascript">
$("#_updateBtn").on("click", function () {
	$("#_frmForm").submit();
	alert("글이 수정되었습니다.");
});

$("#_cancelBtn").on("click", function () {
	history.back();
});
</script>

</body>
</html>
