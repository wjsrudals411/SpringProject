<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/custom.css">
<meta charset="UTF-8">
<title>게시물 수정</title>
</head>
<body>

<div class="container">
    <div class="row">
        <form method="post" action="/reply/modify">
            <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd;">
                <thead>
                    <tr>
                        <th colspan="2" style="background-color: #eeeeee; text-align: center;">댓글 수정</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input type="text" class="form-control" placeholder="글 제목" name="writer" maxlength="50" readonly="readonly" value="${reply.writer}"></td>
                    </tr>

                    <tr>
                        <td><textarea class="form-control" placeholder="글 내용" name="content" maxlength="2480" style="height: 350px;">${reply.content}</textarea></td>
                    </tr>
                </tbody>
            </table>
            <p>
            <input type="hidden" name="bno" value="${reply.bno}">
			<input type="hidden" name="rno" value="${reply.rno}">
			
            <button type="submit" class="btn btn-primary pull-right">댓글 수정</button>
       	</p>
        </form>
    </div>
</div>



<!-- 댓글 끝 -->

</body>
</html>