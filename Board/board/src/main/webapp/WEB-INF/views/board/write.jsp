<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 작성</title>
</head>
<body>

<div id="nav">
	<%@ include file="../include/nav.jsp" %>
</div>

	<div class="container">
		<div class="row">
			<form method="post">
				<table class="table table-striped" style="text-align:enter; border : 1px solid #dddddd;">
					<thead>
						<tr>
							<th colspan="2" style="background-color: #eeeeee; text-align:center;">게시판 글쓰기 양식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="글 제목" name="title" maxlength="50"></td>
						</tr>
						
						<tr>
							<td><input type="text" class="form-control" placeholder="작성자" name="writer" maxlength="50"></td>
						</tr>
						
						
						<tr>
							<td><textarea class="form-control" placeholder="글 내용" name="content" maxlength="2480" style="height:350px;"></textarea></td>	
						</tr>
					</tbody>
				</table>
				<input type="submit" class="btn btn-primary pull-right">
			</form>
		</div>
	</div>




</body>
</html>