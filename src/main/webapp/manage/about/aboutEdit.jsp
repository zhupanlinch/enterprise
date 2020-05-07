<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/manage/system/pageBase.jsp" %>
<%@ page info="关于我们" %>
<form action="<%=path %>/manage/about" name="form" id="form" method="post">
    <div style="height:auto!important;height:550px;min-height:550px;">
        <h3 style="border-bottom: 1px solid #D7D7D7;color: #666666;font-size: 28px;padding-bottom: 20px;margin-bottom: 30px;">
            <%=getServletInfo()%>
        </h3>
        <table width="100%" border="0" cellspacing="0" cellpadding="10" class="tableBasic">

            <tr style="display: none;">
                <td>id</td>
                <td><input type="hidden" value="${e.id}" name="id" label="id"/></td>
            </tr>
            <tr>
                <th style="text-align: right;">缩略图</th>
                <td style="text-align: left;"><input type="text"  size="40"
                                                     id="image" name="image" value="${e.image}"
                />
                    <input type="button" name="imageFile" value="选择图片" class="btn btn-primary" style="padding: 0px 12px;margin-top: -5px;"/>
                </td>
            </tr>
            <tr>
                <th style="text-align: right;" width="200">标题</th>
                <td style="text-align: left;"><input type="text" size="40" value="${e.title}" name="title"
                                                     data-rule="文章标题:required;title;length[1~45];"
                                                     id="title"/></td>
            </tr>
            <tr>
                <th style="text-align: right;" width="200">内容</th>
                <td style="text-align: left;">
     <textarea name="contentHtml" id="contentHtml" data-rule="内容:required;"
               style="width:850px;height:400px;visibility:hidden;">${e.contentHtml}</textarea>
                </td>
            </tr>
            <tr>
                <th style="text-align: right;" width="200">服务数据</th>
                <td style="text-align: left;">
                <input type="text" size="40" value="${e.client}" name="client" id="client"/>
                <input type="text" size="40" value="${e.project}" name="project" id="project"/>
                <input type="text" size="40" value="${e.hours}" name="hours" id="hours"/>
                <input type="text" size="40" value="${e.worker}" name="worker" id="worker"/></td>
            </tr>
            <tr>
                <th style="text-align: right;" width="200">文字</th>
                <td style="text-align: left;">
                <input type="text" size="40" value="${e.label1}" name="label1" id="label1"/>
                <input type="text" size="40" value="${e.label2}" name="label2" id="label2"/>
                <input type="text" size="40" value="${e.label3}" name="label3" id="label3"/>
                <input type="text" size="40" value="${e.label4}" name="label4" id="label4"/></td>
            </tr>
            <tr>
                <th style="text-align: right;" width="200">数据</th>
                <td style="text-align: left;">
                <input type="text" size="40" value="${e.num1}" name="num1" id="num1"/>
                <input type="text" size="40" value="${e.num2}" name="num2" id="num2"/>
                <input type="text" size="40" value="${e.num3}" name="num3" id="num3"/>
                <input type="text" size="40" value="${e.num4}" name="num4" id="num4"/></td>
            </tr>
            <tr>
                <th style="text-align: right;" width="200">柱形图标题</th>
                <td style="text-align: left;"><input type="text" size="40" value="${e.skill_title}" name="skill_title" id="skill_title"/></td>
            </tr>
            <tr>
                <th style="text-align: right;" width="200">柱形图内容</th>
                <td style="text-align: left;"><textarea id="description" name="skill_content" class="textArea" cols="120"  data-rule="description;length[1~400];"
                                              rows="4">${e.skill_content}</textarea></td>
            </tr>
            <tr>
                <th style="text-align: right;" width="200">轮播标题</th>
                <td style="text-align: left;"><input type="text" size="40" value="${e.worker_title}" name="worker_title" id="worker_title"/></td>
            </tr>
            <tr>
                <th style="text-align: right;" width="200">轮播内容</th>
                <td style="text-align: left;"><textarea id="description" name="worker_content" class="textArea" cols="120"  data-rule="description;length[1~400];"
                                              rows="4">${e.worker_content}</textarea></td>
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

<script type="text/javascript">

    var content;
    KindEditor.ready(function (K) {
        content = K.create('textarea[name="contentHtml"]', {
            filterMode: false,
            allowFileManager: true,
            uploadJson: '<%=path%>/resource/kindeditor/jsp/upload_json.jsp',
            fileManagerJson: '<%=path%>/resource/kindeditor/jsp/file_manager_json.jsp'

        });

        K('input[name=getHtml]').click(function (e) {
            alert(editor.html());
        });
        K('input[name=isEmpty]').click(function (e) {
            alert(editor.isEmpty());
        });
        K('input[name=getText]').click(function (e) {
            alert(editor.text());
        });
        K('input[name=selectedHtml]').click(function (e) {
            alert(editor.selectedHtml());
        });
        K('input[name=setHtml]').click(function (e) {
            editor.html('<h3>Hello KindEditor</h3>');
        });
        K('input[name=setText]').click(function (e) {
            editor.text('<h3>Hello KindEditor</h3>');
        });
        K('input[name=insertHtml]').click(function (e) {
            editor.insertHtml('<strong>插入HTML</strong>');
        });
        K('input[name=appendHtml]').click(function (e) {
            editor.appendHtml('<strong>添加HTML</strong>');
        });

        K('input[name=clear]').click(function (e) {
            editor.html('');
        });

    });
    function commit(obj) {
        content.sync();
        var _form = $("form");
        _form.attr("action", $(obj).attr("method"));
        _form.submit();
    }
</script>


<%@ include file="/manage/system/baseFoot.jsp" %>

