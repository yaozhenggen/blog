<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<h2>修改密码 </h2>
<form id="form1" name="form1" method="post" action="/blog/UserServlet">
<input type="hidden" name="method" value="change" />    
 <table width="395" height="154" border="0">
    <tr>
      <td width="73">原密码</td>
      <td width="312"><label for="oldPassword"></label>
      <input name="oldPassword" type="text" id="oldPassword" size="20" /></td>
    </tr>
    <tr>
      <td>新密码</td>
      <td><label for="newPassword"></label>
      <input name="newPassword" type="text" id="newPassword" size="20" /></td>
    </tr>
    <tr>
      <td>确认密码</td>
      <td><label for="fileField"></label>
      <label for="fileField"></label>
      <label for="reNewPassword"></label>
      <input name="reNewPassword" type="text" id="reNewPassword" size="20" /></td>
    </tr>
    <tr>
      <td><input type="submit" name="button" id="button" value="提交" /></td>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
<%@ include file="footer.jsp"%>