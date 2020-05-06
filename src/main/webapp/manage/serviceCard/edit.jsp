<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/manage/system/pageBase.jsp" %>
<%@ page info="服务卡片" %>

<form action="<%=path %>/manage/serviceCard" name="form" id="form" method="post">
    <div style="height:auto!important;height:550px;min-height:550px;">
        <h3 style="border-bottom: 1px solid #D7D7D7;color: #666666;font-size: 28px;padding-bottom: 20px;margin-bottom: 30px;">
            <%=getServletInfo()%>
            <a href="<%=path %>/manage/serviceCard/selectList" class="btn btn-primary"
               style="padding: 2px 15px;float:right;"><i class="icon-double-angle-left"></i>返回列表</a>
        </h3>
        <table width="100%" border="0" cellspacing="0" cellpadding="10" class="tableBasic">

            <tr style="display: none;">
                <td>id</td>
                <td><input type="text" value="${e.id}" name="id" label="id"/></td>
            </tr>
            <tr>
                <th style="text-align: right;" width="200">标题</th>
                <td style="text-align: left;"><input type="text" size="40" value="${e.title}" name="title" id="title"/></td>
            </tr>
            <tr>
                <th style="text-align: right;" width="200">内容</th>
                <td style="text-align: left;"><textarea name="content" id="content" data-rule="内容:required;"
                                                             style="width:850px;height:400px;">${e.content}</textarea></td>
            </tr>

            <tr>
                <td colspan="2" style="text-align: center;">
                    <c:choose>
                        <c:when test="${e.id!=0}">
                            <button method="update" onclick="commit(this)" class="btn btn-info"
                                    style="padding:2px 15px;">
                                保存
                            </button>
                        </c:when>
                        <c:otherwise>
                            <button method="insert" onclick="commit(this)" class="btn btn-info"
                                    style="padding:2px 15px;">
                                新增
                            </button>
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </table>
    </div>
</form>
<script type="text/javascript" src="<%=path%>/resource/js/MooTools-Core-1.6.0.js"></script>
<script type="text/javascript" src="<%=path%>/resource/js/pinyin.js"></script>
<script type="text/javascript">

    function commit(obj) {

        var _form = $("form");
        _form.attr("action", $(obj).attr("method"));
        _form.submit();
    }
</script>
<%@ include file="/manage/system/baseFoot.jsp" %>
