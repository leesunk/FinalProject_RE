<%@page import="sh.model.ShMemberDto"%>
<%@page import="sh.model.ShQbbsDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8" />


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Qbbsdetail.jsp</title>



</head>
<body>

   <%
      Object ologin = session.getAttribute("login");
      ShMemberDto mem = null;
      ShQbbsDto qbbs = (ShQbbsDto) request.getAttribute("Qbbs");
      if (ologin != null) {
         mem = (ShMemberDto) ologin;
   %>


   <%
      /* // readcount 갱신
         dao.readcount(seq); */
   %>

   <div align="center">
      <table class="list_table">
         <col width="150">
         <col width="600">

         <tr>
            <th>작성자</th>
            <td><%=qbbs.getId()%></td>
         </tr>
         <tr>
            <th>제목</th>
            <td><%=qbbs.getTitle()%></td>
         </tr>
         <tr>
            <th>작성일</th>
            <td><%=qbbs.getWdate()%></td>
         </tr>
         <tr>
            <th>조회수</th>
            <td><%=qbbs.getReadcount()%></td>
         </tr>
       <%--   <tr>
            <th>정보</th>
            <td><%=qbbs.getRef()%>-<%=qbbs.getStep()%>-<%=qbbs.getDepth()%></td>
         </tr> --%>
         <tr>
            <th>내용</th>
            <td align="center"><textarea rows="5" cols="90" style="background-color:#fcfff2;"
                  readonly="readonly"><%=qbbs.getContent()%></textarea>
               <form action="Qanswer.do" method="get">
                  <input type="hidden" name="seq" value="<%=qbbs.getSeq()%>">
                  <!-- 댓글달기할때 로그인 한 사람만 달기로 -->
               <c:if test="${login.id ne null }">
                  <input type="submit" id="_submit"
                     class="ebbsbutton" value="댓글  달기 ">
               </c:if>
               </form></td>
         </tr>
      </table>
      <table>

         <tr style="width: 800px">
            <td>
               <button type="button" name="backBtn" id="_backBtn" value="back"
                  class="ebbsbutton"
                  onclick="location.href='Qbbslist.do'">목록 보기</button>
            </td>

            <td>
               <%
                  if (qbbs.getId().equals(mem.getId())) {
               %>
               <button type="button" onclick="deleteQbbs('<%=qbbs.getSeq()%>')" class="ebbsbutton">삭제</button>
               <button type="button" onclick="updateQbbs('<%=qbbs.getSeq()%>')" class="ebbsbutton">수정</button>
               <%
                  }
               %>
            </td>
         </tr>
      </table>

   </div>
   <%
      } else {
   %>

   <%
      /* // readcount 갱신
         dao.readcount(seq); */
   %>

   <div align="center">
      <table class="list_table">
         <col width="150">
         <col width="600">

         <tr>
            <th>작성자</th>
            <td><%=qbbs.getId()%></td>
         </tr>
         <tr>
            <th>제목</th>
            <td><%=qbbs.getTitle()%></td>
         </tr>
         <tr>
            <th>작성일</th>
            <td><%=qbbs.getWdate()%></td>
         </tr>
         <tr>
            <th>조회수</th>
            <td><%=qbbs.getReadcount()%></td>
         </tr>
         <%-- <tr>
            <th>정보</th>
            <td><%=qbbs.getRef()%>-<%=qbbs.getStep()%>-<%=qbbs.getDepth()%></td>
         </tr> --%>
         <tr>
            <th>내용</th>
            <td align="center"><textarea rows="5" cols="90"
                  readonly="readonly"><%=qbbs.getContent()%></textarea>
               <form action="Qanswer.do" method="get">
                  <input type="hidden" name="seq" value="<%=qbbs.getSeq()%>">
                  <c:if test="${login.id ne null }">
                  <input type="submit" id="_submit"
                     class="ebbsbutton" value="댓글  달기 ">
                     </c:if>
               </form></td>
         </tr>
      </table>
      <table>
         <!-- <col width="300"><col width="300"> -->
         <tr style="width: 800px">
            <td>
               <button type="button" name="backBtn" id="_backBtn" value="back"
                  class="ebbsbutton"
                  onclick="location.href='Qbbslist.do'">목록 보기</button>
            </td>
         </tr>

         <c:if test="${login.id eq ShQbbs.id && login.id ne null}">
            <tr>

               <td>
                  <button type="button" onclick="deleteQbbs('<%=qbbs.getSeq()%>')" class="ebbsbutton">삭제</button>
               </td>
               <td>
                  <button type="button" onclick="updateQbbs('<%=qbbs.getSeq()%>')"  class="ebbsbutton">수정</button>
               </td>
            </tr>
         </c:if>

      </table>

   </div>
   <%
      }
   %>
   <script type="text/javascript">
      function deleteQbbs(seq) {
         location.href = "Qbbsdelete.do?seq=" + seq;
      }

      function updateQbbs(seq) {
         location.href = "Qbbsupdate.do?seq=" + seq;
      }


   </script>



</body>
</html>	