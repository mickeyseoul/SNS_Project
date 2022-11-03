<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
updateProfileForm.jsp<br>

<center>

<form action="updateImage.my" method="post" enctype="multipart/form-data">
	<input type="hidden" name="name" value="profile">
	<input type="hidden" name="no" value="${ login.no }">
	<input type="file" name="uploadProfile"><br>
	<input type="submit" value="사진등록">
</form>


</center>