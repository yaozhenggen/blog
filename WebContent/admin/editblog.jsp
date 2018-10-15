<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="header.jsp"%>
<%@page import="jxvt.com.cn.Category"%>
<%@page import="java.util.*"%>
<%@page import="jxvt.com.cn.Blog"%>
<script type="text/javascript" src="/blog/admin/fckeditor/fckeditor.js"></script>
<script type="text/javascript">
window.onload = function()
{
  var oFCKeditor = new FCKeditor( 'content' ) ;
      oFCKeditor.BasePath = "/blog/admin/fckeditor/" ;
      oFCKeditor.ToolbarSet = 'Default' ;
      oFCKeditor.Height=400;
      oFCKeditor.ReplaceTextarea() ;
}
</script>

<% Blog blog=(Blog)request.getAttribute("blog");%>


<h2>修改博文</h2>
<form id="form1" name="form1" method="post" action="/blog/PostEditBlogServlet">
	<input type="hidden" name="id" value="<%=blog.getId() %>" />

	<table id="tab">
		<tr>
			<td>主题:</td>
			<td><input name="title" type="text" id="title" size="100"
				value="<%=blog.getTitle()%>" /></td>
		</tr>

		<tr>
			<td>分类:</td>
			<td><select name="category" id="select">
				<%
	                List category = (List)request.getAttribute("categorys");
					int oldcid=blog.getCategoryId();
	                for(int i=0;i<category.size();i++){
	    	            Category c = (Category)category.get(i);
	    	            if(c.getId().equals(oldcid)){
	            %>
			        <option value="<%=c.getId() %>" selected="selected"><%=c.getName() %></option>
					<%}else{%>
					<option value="<%=c.getId() %>"><%=c.getName() %></option>
					<%} 
	    	} %>
	    	
			</select></td>
		</tr>


		<tr>
			<td colspan="2">内容: <br /> <textarea name="content" cols="60" rows="18" id="content"><%=blog.getContent()%></textarea>
			</td>
		</tr>

		<tr>
			<td colspan="2"><input type="submit" name="submit" value="更新" />
			</td>
		</tr>
	</table>
</form>
<%@include file="footer.jsp"%>

