<%@page import="sh.model.ShMemberDto"%>
<%@page import="sh.model.ShQbbsDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Qbbsupdate</title>

</head>
<body>
<!-- 
<a href="logout.jsp">로그아웃</a>

<h1>글 수정</h1> -->

<%
String sseq = request.getParameter("seq");
int seq = Integer.parseInt(sseq.trim());

ShQbbsDto qbbs = (ShQbbsDto)request.getAttribute("Qbbs");
%>

<%
Object ologin = session.getAttribute("login");
ShMemberDto mem = null;
mem = (ShMemberDto)ologin;
%>

<div class="list_table" align="center">
   
<form action="QbbsupdateAf.do" method="post">
<input type="hidden" name="seq" value="<%=seq %>">
            
<table border="1">
   <col width="100"><col width="500"> 
      
   <tr>
      <th>아이디</th>
      <td>
         <input type="text" name="id" readonly="readonly" size="50" 
            value="<%=mem.getId() %>" style="border: 0;"> 
      </td>   
   </tr>
   <tr>
      <th>제목</th>
      <td>
         <input type="text" name="title" size="50" 
            value="<%=qbbs.getTitle() %>" style="border: 0;">      
      </td>
      </tr>
      <tr>
         <th>내용</th>
         <td>
            <textarea rows="10" cols="50" name="content" style="background-color:#fcfff2;"><%=qbbs.getContent() %></textarea>      
         </td>
      </tr>
      <tr>
         <td align="left" style="padding-left: 10px">
            
         </td>
         <td>
            <input type="submit" value="글수정" class="ebbsbutton">
         </td>
      </tr>
      
   </table>
   
   </form>

</div>

</body>
</html>