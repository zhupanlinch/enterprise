<%@ page language="java" contentType="text/html; UTF-8"
         pageEncoding="UTF-8" %>

<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>

<ul class="justify-content-center">
<pg:pager url="${pager.pagerUrl}" items="${pager.total}"
          export="currentPageNumber=pageNumber"
          maxPageItems="${pager.pageSize}" maxIndexPages="10" isOffset="true">

    <pg:param name="cc" />
    <pg:prev>
        <li><a href="${pageUrl}"><i class="icofont-rounded-left"></i></a></li>
    </pg:prev>
    <pg:pages>
        <c:choose>
            <c:when test="${currentPageNumber==pageNumber}">
                <li class="active"><a>${pageNumber}</a></li>
            </c:when>
            <c:otherwise>
                <li><a href="${pageUrl}">${pageNumber}</a></li>
            </c:otherwise>
        </c:choose>
    </pg:pages>
    <pg:next>
        <li><a href="${pageUrl}"><i class="icofont-rounded-right"></i></a></li>
    </pg:next>
</pg:pager>

</ul>