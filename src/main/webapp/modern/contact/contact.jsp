<%@ page language="java" contentType="text/html; UTF-8"
         pageEncoding="UTF-8"%>

<%@include file="/modern/common/common.jsp"%>
<body>
<%@include file="/modern/common/navigation.jsp"%>

<main id="main">

    <!-- ======= Contact Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>联系我们</h2>
          <ol>
            <li><a href="<%=path%>/index">首页</a></li>
            <li>联系我们</li>
          </ol>
        </div>

      </div>
    </section><!-- End Contact Section -->

    <!-- ======= Contact Section ======= -->
    <section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
      <div class="container">

        <div class="row">

          <div class="col-lg-6">

            <div class="row">
              <div class="col-md-12">
                <div class="info-box">
                  <i class="bx bx-map"></i>
                  <h3>地址</h3>
                  <p><%=SystemManage.getInstance().getContact().getAddress()%></p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info-box">
                  <i class="bx bx-envelope"></i>
                  <h3>邮箱</h3>
                  <p><%=SystemManage.getInstance().getContact().getMail()%></p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info-box">
                  <i class="bx bx-phone-call"></i>
                  <h3>电话</h3>
                  <p><%=SystemManage.getInstance().getContact().getPhone()%></p>
                </div>
              </div>
            </div>

          </div>

          <div class="col-lg-6">
            <form  id="messageForm"  method="post" onsubmit="return leaveMessage();" role="form" class="php-email-form">
              <div class="form-group">
                <input type="text" class="form-control" name="title" id="title" placeholder="标题" data-rule="minlen:4" data-msg="请输入标题" />
                <div class="validate"></div>
              </div>
              <div class="form-row">
                <div class="col-md-6 form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="姓名" data-rule="minlen:4" data-msg="请输入姓名" />
                  <div class="validate"></div>
                </div>
                <div class="col-md-6 form-group">
                  <input type="text" class="form-control" name="tel" id="tel" placeholder="电话" data-rule="minlen:4" data-msg="请输入电话" />
                  <div class="validate"></div>
                </div>
              </div>

              <div class="form-group">
                <textarea class="form-control" name="content" rows="5" data-rule="required" data-msg="请输入内容" placeholder="内容"></textarea>
                <div class="validate"></div>
              </div>
              <!--
              <div class="form-row">
                  <div class="col-md-6 form-group">
                    <input type="text" name="vcode" class="form-control" id="vcode" placeholder="验证码" data-rule="minlen:4" data-msg="请输入验证码" />
                    <div class="validate"></div>
                  </div>
                  <div class="col-md-6 form-group">
                    <img src="<%=path%>/getVerificationCode.do" style="margin-left:50px;height: 28px;width:85px;" id="codes" onclick="javaScript:reloadImg();"/>
                  </div>
                </div>
                 -->
              <div class="mb-3">
                <div class="loading">提交中</div>
                <div class="error-message"></div>
                <div class="sent-message">您的留言已经发送，感谢您的留言！</div>
              </div>
              <div class="text-center"><button type="submit">联系我们</button></div>
            </form>
          </div>

        </div>

        <div class="row entries">
        <div class="col-md-12">
          <div class="info-box">
            <%=SystemManage.getInstance().getContact().getContentHtml()%>
          </div>
        </div>
        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

<%@include file="/modern/common/foot.jsp" %>

<script>
    function leaveMessage(){
        var _url=" <%=path%>/message/leaveMessage";
        if($("#title").val()!='' && $("#name").val()!='' && $("#tel").val()!='' && $("#email").val()!='' && $("#content").val()!='') {
            $.ajax({
                type: 'POST',
                url: _url,
                data: $('#messageForm').serialize(),
                dataType: "html",
                success: function (data) {
                    $('#messageForm')[0].reset();
                    if(data=="ok"){
                        alert("您的留言已经发送，感谢您的留言！");
                        $(".leaveSuccess").animate({top:'40%'}).fadeIn("fast");
                        setTimeout(function(){
                            $(".leaveSuccess").animate({top:'40%'}).fadeOut("fast");
                        }, 3000);
                    }
                },
                error: function (er) {
                }
            });
        }
        return false;
    }
    /**
     * 更换验证码
     */
    function reloadImg() {
        document.getElementById("codes").src = "<%=path%>/getVerificationCode?" + "radom="
                + Math.random();
        $("#vcode").focus();
    }
</script>