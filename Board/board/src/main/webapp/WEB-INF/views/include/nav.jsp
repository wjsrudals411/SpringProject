<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1">

<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/custom.css">
<title>JSP 게시판 웹 사이트</title>
<style type="text/css">
    a, a:hover {
        color: #000000;
        text-decoration: none;
    }

    .jumbotron {
        margin-top: 20px; /* 익명게시판과 네비게이션 바 사이의 여백 조절 */
        text-align: center; /* 가운데 정렬 */
    }
</style>

<nav class="navbar navbar-default">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed"
                data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                aria-expanded="false">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            <li class="active"><a href="/board/listPageSearch?num=1">글 목록(페이징 + 검색)</a></li>
            <li class="active"><a href="/board/list">글 목록</a></li>
        </ul>
    </div>
</nav>

<div class="jumbotron">
    <div class="container">
        <h1>익명게시판</h1>
        <!-- 추가적인 익명게시판 내용 등을 여기에 포함할 수 있습니다. -->
    </div>
</div>
