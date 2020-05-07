<%@ page language="java" contentType="text/html; UTF-8"
         pageEncoding="UTF-8"%>

<%@include file="/front/common/common.jsp"%>
<body>
<%@include file="/front/common/navigation.jsp"%>
<div class="banner" style="background-image: url(<%=path%>/resource/images/banner.jpg)"></div>
<div class="warp_main">
    <div class="warp_left">
        <div class="warp_left_box">
            <h3>关于我们</h3>

        </div>
    </div>
    <div class="warp_right">
        <div class="breadcrumb">
            <a href="<%=path%>/index">首页</a>
            >
            <a href="<%=path%>/about">关于我们</a>
        </div>
        <div style="overflow: hidden;">
            <div class="article_content">

                    <%=SystemManage.getInstance().getAbout().getContentHtml()%>
            </div>
        </div>
    </div>
</div>
<%@include file="/front/common/foot.jsp" %>
