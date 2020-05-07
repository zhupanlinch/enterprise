<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/manage/system/pageBase.jsp" %>
<%@ page info="首页信息" %>

<form action="<%=path %>/manage/home/insertOrUpdate" name="form" id="form" method="post">
    <div style="height:auto!important;height:550px;min-height:550px;">
        <h3 style="border-bottom: 1px solid #D7D7D7;color: #666666;font-size: 28px;padding-bottom: 20px;margin-bottom: 30px;">
            <%=getServletInfo()%>
        </h3>
        <table width="100%" border="0" cellspacing="0" cellpadding="10" class="tableBasic">

            <tr style="display: none;">
                <td>id</td>
                <td><input type="text" value="${e.id}" name="id" label="id"/></td>
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
                <th style="text-align: right;" width="200">主标题</th>
                <td style="text-align: left;"><input type="text" size="40" value="${e.title1}" name="title1" id="title1"/></td>
            </tr>
            <tr>
                <th style="text-align: right;" width="200">主内容</th>
                <td style="text-align: left;"><textarea name="content1" id="content1" data-rule="内容:required;"
                                                             style="width:850px;height:150px;">${e.content1}</textarea></td>
            </tr>
            <tr>
                <th style="text-align: right;" width="200">次标题</th>
                <td style="text-align: left;"><input type="text" size="40" value="${e.title2}" name="title2" id="title2"/></td>
            </tr>
            <tr>
                <th style="text-align: right;" width="200">次内容</th>
                <td style="text-align: left;"><textarea name="content2" id="content2" data-rule="内容:required;"
                                                             style="width:850px;height:150px;">${e.content2}</textarea></td>
            </tr>
            <tr>
                <th style="text-align: right;" width="200">历程标题</th>
                <td style="text-align: left;"><input type="text" size="40" value="${e.feature_title}" name="feature_title" id="feature_title"/></td>
            </tr>
            <tr>
                <th style="text-align: right;" width="200">历程内容</th>
                <td style="text-align: left;"><textarea name="feature_content" id="feature_content" data-rule="内容:required;"
                                                             style="width:850px;height:150px;">${e.feature_content}</textarea></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" class="btn btn-info" style="padding:2px 15px;" value="提交"/>
                </td>
            </tr>
        </table>
    </div>
</form>
<script type="text/javascript">

    KindEditor.ready(function (K) {
        var editor = K.editor({
            allowFileManager : true,
            uploadJson: '<%=path%>/resource/kindeditor/jsp/upload_json.jsp',
            fileManagerJson : '<%=path%>/resource/kindeditor/jsp/file_manager_json.jsp'
        });
        K('input[name=imageFile]').click(function() {
            editor.loadPlugin('image', function() {
                editor.plugin.imageDialog({
                    imageUrl : K('#image').val(),
                    clickFn : function(url) {
                        K('#image').val(url);
                        editor.hideDialog();
                    }
                });
            });
        });

    });

</script>
<%@ include file="/manage/system/baseFoot.jsp" %>
