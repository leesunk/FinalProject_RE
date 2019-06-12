<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>

<!-- css 할때 임포트 해줘야 되요 !!!! -->
<style type="text/css">
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

text, textarea {
	
}

</style>

<!-- <style type="text/css">
body, div {
	float: center;
}

#_frmForm {
	margin-bottom: 100px;
}

#_nbbs_id, #_nbbs_title, #_nbbs_content {
	width: 95%; 
	background-color: transparent; 
	border: none;
}

#_nbbs_content {
	resize: none;
}

.write_table {
	/* text-align: center; */
	border-collapse: collapse;
	position: relative;
	width: 800px;
	height: 300px;
	
}

.write_table th {
	border-top: 1px solid gray;
	border-left: 1px solid gray;
	border-bottom: 1px solid gray;
	border-right: 1px solid gray;
	text-align: center;
}

.write_table td {
	border-top: 1px solid gray;
	border-left: 1px solid gray;
	border-bottom: 1px solid gray;
	border-right: 1px solid gray;
	text-align: center;
}
</style> -->

<script>

</script>

<form action="nbbsuploadAf.do" name="frmForm" id="_frmForm"  method="post">

<div class="nbbs_write" align="center">

<h2 align="center"><strong>공지사항 작성</strong></h2>

<table class="list_table">
<col width="100"><col width="600">
<tr style="height: 40px;">
	<th>ID</th>
	<td>
		<input type="text" name="id" id="_nbbs_id" 
			placeholder="admin" readonly="readonly">
	</td>
</tr>
<tr style="height: 40px;">
	<th>제목</th>
	<td>
		<input type="text" name="title" id="_nbbs_title" 
			placeholder="제목을 입력하세요" style="width: 100%; height: 100%">
	</td>
</tr>
<tr>
	<th>내용</th>
	<td style="background-color: #fcfff2;">
		<textarea rows="10" cols="75" name="content" id="_nbbs_content"
				placeholder="내용을 입력하세요" style="width: 100%; height: 100%"></textarea>
	</td>
</tr>

</table>

<!-- <table>

</table> -->

</div>

<div style="padding-bottom: 20px" align="center">
<table>
<tr>
	<td>
		<input type="button" id="_uploadBtn" value="작성 완료" class="btn btn-default btn-block"
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
$("#_uploadBtn").on("click", function () {
	$("#_frmForm").submit();
});

$("#_cancelBtn").on("click", function () {
	history.back();
});

//관리자가 아닌 사람이 제로 여기에 접근하면 로그인한 아이디를 불러와 강제로 사전 차단해줌
var id = <%=request.getAttribute("login") %>;	
$(document).ready(function () {
//	alert(id).toString();	
});
</script>









