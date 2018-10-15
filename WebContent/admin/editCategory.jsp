<%@page import="jxvt.com.cn.Category"%>
<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改博客分类信息</title>
</head>
<% 
   Category category = (Category)request.getAttribute("category");
%>
<body>
<form id="form1" name="form1" method="post" action="/blog/CategoryServlet">
<input type="hidden" name="method" value="update"/>
<input type="hidden" name="id" value="<%=category.getId()%>"/>
  <table width="491" height="126" border="1">
    <tr>
      <td width="139">分类的名称：</td>
      <td width="336">
          <label>
                <input type="text" name="name" id="name" value="<%=category.getName()%>"/>
          </label>
      </td>
    </tr>
    <tr>
      <td>显示的顺序</td>
      <td>
         <label>
               <input type="text" name="level" id="level" maxlength="2" <%=category.getLevel()%>/>
         </label>
      </td>
    </tr>
    <tr>
      <td>
         <label>
                <input type="submit" name="button" id="button" value="提交" />
         </label>
      </td>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
</body>
</html>