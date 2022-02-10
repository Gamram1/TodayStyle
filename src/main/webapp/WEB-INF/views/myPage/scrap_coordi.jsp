<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- jQuery 라이브러리 --%>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>오늘 뭐 입지?</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/common/common.css">
    <link rel="stylesheet" href="/resources/common/header.css">
	<link rel="stylesheet" href="/resources/common/footer.css">
	<link rel="stylesheet" href="/resources/css/myPage/scrap.css">
    <script src="/resources/common/common.js"></script>

    <style>
        
    </style>

</head>

<body>
<div id="wrap">
    <jsp:include page="/WEB-INF/views/common/header.jsp" />

    <div id="content">
        <div id="body">
            <div id="profile-wrapwrap">
                <jsp:include page="/WEB-INF/views/myPage/include/profile.jsp" />
            </div>
            <div class="contents-wrap">
                <div class="contents-title-wrap">
                    <div class="contents-title">스크랩북</div>
                    <div class="contents-num">${requestScope.ScrapCoordiList.size() }</div>
                </div>
                <div id="btn-wrap">
                	<a href = "/myPage/scrapCoordi.do"><div class="btn-style-mint btn" id="coordiBtn">코디</div></a>
                	<a href = "/myPage/scrapItTem.do"><div class="btn-style-line btn" id="ittemBtn">잇템</div></a>
                </div>
                <div class="contents-area">
                
                	<c:choose>
	                	<c:when test="${!requestScope.ScrapCoordiList.isEmpty() }">
	                		<c:forEach items="${requestScope.ScrapCoordiList }" var="scList" varStatus="i">
		                		<a>
			                        <div class="contents">
			                            <img src="${scList.coordiFilepath }">
			                            <div class="userData">
			                                <a href="">
			                                    <div class="profile scrapUserProfile"><a><img src="${scList.profileFilepath }"></a></div>
			                                    <div class="ScrapUserName">${scList.coordiNickname }</div>
			                                </a>
			                                <div class="scrapIcon"><img src="/resources/images/icon/saved_on.png"></div>
			                            </div>
			                        </div>
			
			                    </a>
		                    </c:forEach>
	                	</c:when>
	                	<c:otherwise>
		                	<a>
			                	<div class="contents-area-null"> 저장된 스크랩이 없습니다.</div>
			                </a>
	                	</c:otherwise>
                	</c:choose>
                
                    
                    
                </div>
                <div id="space"></div>

            </div>

        </div>


    </div>

    <jsp:include page="/WEB-INF/views/common/footer.jsp" />

    <jsp:include page="/WEB-INF/views/myPage/include/followModal.jsp" />

   
</div>


</body>

</html>
