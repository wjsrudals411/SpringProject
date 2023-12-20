<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 조회</title>

</head>


<body>

<div id="nav">
	<%@ include file="../include/nav.jsp" %>
</div>


<!-- 
<label>제목</label>
${view.title}<br />

<label>작성자</label>
${view.writer}<br />

<label>내용</label><br />
${view.content}<br />
 -->
 
<div class="container">
    <div class="row">
        <form method="post">
            <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd;">
                <thead>
                    <tr>
                        <th colspan="2" style="background-color: #eeeeee; text-align: center;">게시판 글쓰기 양식</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input type="text" class="form-control" placeholder="글 제목" name="title" maxlength="50" value="${view.title}"></td>
                    </tr>

                    <tr>
                        <td><input type="text" class="form-control" placeholder="작성자" name="writer" maxlength="50" value="${view.writer}"></td>
                    </tr>

                    <tr>
                        <td><textarea class="form-control" placeholder="글 내용" name="content" maxlength="2480" style="height: 350px;">${view.content}</textarea></td>
                    </tr>
                </tbody>
            </table>
            <a href="/board/modify?bno=${view.bno}" class="btn btn-primary pull-right">게시물 수정</a>
            <a href="/board/delete?bno=${view.bno}" class="btn btn-primary pull-left">게시물 삭제</a>
        </form>
    </div>
</div>

<div class="container mt-3">
    <h2>댓글 작성</h2>
    <form method="post" action="/reply/write">
        <div class="form-group">
            <label for="writer">댓글 작성자</label>
            <input type="text" class="form-control" id="writer" name="writer">
        </div>
        <div class="form-group">
            <label for="content">댓글 내용</label>
            <textarea class="form-control" rows="5" id="content" name="content"></textarea>
        </div>
        <input type="hidden" name="bno" value="${view.bno}">
        <button type="submit" class="btn btn-primary">댓글 작성</button>
    </form>
</div>


<div class="container mt-3">
    <h2>댓글 목록</h2>
    <ul class="list-group">
        <!-- 댓글 목록 부분 -->
        <c:forEach items="${reply}" var="reply">
            <li class="list-group-item">
                <div>
                    <p>${reply.writer} / <fmt:formatDate value="${reply.regDate}" pattern="yyyy-MM-dd" /></p>
                    <p>${reply.content }</p>
                                    
                    <p>
                        <a href="/reply/modify?bno=${view.bno}&rno=${reply.rno}" class="btn btn-sm btn-primary">수정</a>
                        <a href="/reply/delete?bno=${view.bno}&rno=${reply.rno}" class="btn btn-sm btn-danger">삭제</a>
                    </p>
                    
                    <hr />
                </div>
            </li>
        </c:forEach>
    </ul>
</div>


</body>
</html>