<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/manage/system/pageBase.jsp" %>
<%@ page info="服务卡片" %>

<div style="height:auto!important;height:550px;min-height:550px;">
    <h3 style="border-bottom: 1px solid #D7D7D7;color: #666666;font-size: 28px;padding-bottom: 20px;margin-bottom: 30px;">
        <%=getServletInfo()%>
        <a href="toAdd" class="btn btn-primary"
           style="padding: 2px 15px;float:right;">
            <i class="icon-plus "></i>添加
        </a>
    </h3>

    <table class="table table-bordered table-hover table-striped">
        <tr >
            <th width="300">标题</th>
            <th>内容</th>
            <th>操作</th>
        </tr>
        <c:forEach var="item" items="${pager.list}">
            <tr>
                <td>${item.title}</td>
                <td>${item.content}</td>
                <td><a href="toEdit?id=${item.id}">编辑</a> | <a href="delete?id=${item.id}">删除</a></td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="71" style="text-align: center;">
                <%@ include file="/manage/system/page.jsp" %>
            </td>
        </tr>
    </table>
</div>


<%@ include file="/manage/system/baseFoot.jsp" %>