<%@page import="jxvt.com.cn.Category"%>
<%@page import="java.util.List"%>
<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>category page</title>
</head>
<%
      List list = (List)request.getAttribute("list");
      Category category=null;
%>
<body>
<script type="text/javascript">
   function del(){
	   var msg = "您真的要删除吗？\n\n请确认"
	   if(confirm(msg)==true){
		   return true;
	   }else {
		return false;
	}
   }
</script>
<div align="center">
<p>博文分类管理</p>
<table width="670" height="134" cellpadding="0" cellspacing="0" border="1">
  <tr>
    <td width="60">分类编号</td>
    <td width="510">分类名称</td>
    <td width="95">操作</td>
  </tr>
<%
for(int i=0;i<list.size();i++){
	 category=(Category)list.get(i);
%>
  <tr>
    <td><%=category.getId() %></td>
    <td><%=category.getName() %></td>
    <td><a href="/blog/CategoryServlet?method=edit&&id=<%=category.getId()%>"><img src="/blog/admin/images/edit.gif " border="0"/></a>｜
    <a href="/blog/CategoryServlet?method=delete&&id=<%=category.getId()%>" onclick="javascript:return del()"> <img src="/blog/admin/images/delete.gif" border="0"/></a></td>
 
  </tr>
  <%} %>
</table>
<p>&nbsp;</p>
</div>
</body>
</html>