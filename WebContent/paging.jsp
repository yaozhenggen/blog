<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
	<table id="dg" title="班级信息" class="easyui-datagrid" fitColumns="true"
	 pagination="true" rownumbers="true" url="GradeListServlet">
		<thead>
			<tr>
				<th field="id" width="50">编号</th>
				<th field="title" width="100">标题</th>
				<th field="content" width="250">内容</th>
				<th field="createdTime" width="50">博客的时间</th>
				<th field="category" width="100">评论</th>
				<th field="categoryId" width="100">评论的id</th>
		
	</table>
</body>
</html>