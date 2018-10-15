<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@include file="header.jsp" %>
<style type="text/css" media="all">
        @import url("/blog/admin/css/screen.css");
</style>
    <link rel="stylesheet" href="/blog/admin/css/print.css" type="text/css" media="print" />
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
</head>

<body>

<p>管理评论内容：</p>
<display:table name="list" pagesize="2" class="isis" requestURI="/CommentServlet" id="c">
 <display:column property="id" title="编号" sortable="true"/>
 <display:column property="username" title="作者" sortable="true"/>
 <display:column property="content" title="内容"/>
 <display:column property="createtime" title="时间" sortable="true"/>
 <display:column title="操作">
		<a href="/blog/servlet/CommentServlet?method=edit&id=${c.id}"><img src="/blog/admin/images/edit.gif " border="0"/></a>
		<a href="/blog/servlet/CommentServlet?method=delete&id=${c.id}" onclick="javascript:return del()"><img src="/blog/admin/images/delete.gif" border="0"/></a>
	</display:column>
</display:table>

<%@include file="footer.jsp" %>