<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/custom.css">
    <title>JSP 게시판 웹 사이트</title>
    <style type="text/css">
        a, a:hover {
            color: #000000;
            text-decoration: none;
        }
        .table th, .table td {
            text-align: center;
        }
        .pagination {
            margin: 20px 0;
            display: flex;
            justify-content: center;
        }
        .pagination a, .pagination span {
            margin: 0 5px;
            padding: 8px 12px;
            border: 1px solid #ddd;
            background-color: #f9f9f9;
            color: #333;
            cursor: pointer;
            text-decoration: none;
        }
        .pagination a:hover {
            background-color: #ddd;
        }
        .pagination .active {
            background-color: #007bff;
            color: #fff;
        }
        .search-container {
            margin-top: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .search-container select, .search-container input, .search-container button {
            margin: 0 5px;
        }
        .search-container button {
            padding: 6px 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        .search-container button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div id="nav">
    <%@ include file="../include/nav.jsp" %>
</div>

<div class="container">
    <div class="row">
        <table class="table table-striped" style="border: 1px solid #dddddd;">
            <thead>
                <tr>
                    <th style="background-color: #eeeeee;">번호</th>
                    <th style="background-color: #eeeeee;">제목</th>
                    <th style="background-color: #eeeeee;">작성일</th>
                    <th style="background-color: #eeeeee;">작성자</th>
                    <th style="background-color: #eeeeee;">조회수</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${list}" var="list">
                    <tr>
                        <td>${list.bno}</td>
                        <td><a href="/board/view?bno=${list.bno}">${list.title}</a></td>
                        <td><fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd" /></td>
                        <td>${list.writer}</td>
                        <td>${list.viewCnt}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
<a href="/board/write" class="btn btn-primary pull-right">글쓰기</a>
        <div class="pagination">
            <c:if test="${page.prev}">
                <a href="/board/listPageSearch?num=${page.startPageNum - 1}${page.searchTypeKeyword}">이전</a>
            </c:if>
            <c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
                <c:choose>
                    <c:when test="${select != num}">
                        <a href="/board/listPageSearch?num=${num}${page.searchTypeKeyword}">${num}</a>
                    </c:when>
                    <c:otherwise>
                        <span class="active">${num}</span>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
            <c:if test="${page.next}">
                <a href="/board/listPageSearch?num=${page.endPageNum + 1}${page.searchTypeKeyword}">다음</a>
            </c:if>
        </div>

        <div class="search-container">
            <select name="searchType">
                <option value="title" <c:if test="${page.searchType eq 'title'}">selected</c:if>>제목</option>
                <option value="content" <c:if test="${page.searchType eq 'content'}">selected</c:if>>내용</option>
                <option value="title_content" <c:if test="${page.searchType eq 'title_content'}">selected</c:if>>제목+내용</option>
                <option value="writer" <c:if test="${page.searchType eq 'writer'}">selected</c:if>>작성자</option>
            </select>
            <input type="text" name="keyword" value="${page.keyword}" />
            <button type="button" id="searchBtn">검색</button>
        </div>

    </div>
</div>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>

<script>
    document.getElementById("searchBtn").onclick = function () {
        let searchType = document.getElementsByName("searchType")[0].value;
        let keyword = document.getElementsByName("keyword")[0].value;
        location.href = "/board/listPageSearch?num=1" + "&searchType=" + searchType + "&keyword=" + keyword;
    };
</script>

</body>
</html>
