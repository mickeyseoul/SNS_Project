<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
updateBackgroundForm.jsp<br>

<center>

<form action="updateImage.my" method="post" enctype="multipart/form-data">
	<input type="hidden" name="name" value="background">
	<input type="hidden" name="no" value="${ login.no }">
	<input type="file" name="uploadBackground"><br>
	<input type="submit" value="사진등록">
</form>


</center>