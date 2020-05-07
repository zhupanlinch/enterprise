<%@ page language="java" contentType="text/html; UTF-8"
         pageEncoding="UTF-8" %>
<!-- ======= Footer ======= -->
  <footer id="footer" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>站内链接</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="<%=path%>/about">关于我们</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="<%=path%>/service">服务领域</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="<%=path%>/article">新闻动态</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="<%=path%>/message">在线留言</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="<%=path%>/contact">联系我们</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>友情链接</h4>
            <ul>
              <c:forEach var="item" items="<%=SystemManage.getInstance().getFriendLinks()%>">
                  <li><i class="bx bx-chevron-right"></i><a href="${item.url}" target="${item.target}">${item.name}</a></li>
              </c:forEach>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-contact">
            <h4>联系我们</h4>
            <p>
              <%=SystemManage.getInstance().getContact().getAddress()%> <br><br>
              <strong>电话:</strong> <%=SystemManage.getInstance().getContact().getPhone()%><br>
              <strong>邮箱:</strong> <%=SystemManage.getInstance().getContact().getMail()%><br>
            </p>

          </div>

          <div class="col-lg-3 col-md-6 footer-info">
            <h3>关于我们</h3>
            <p><%=SystemManage.getInstance().getAbout().getSkill_content()%></p>
          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright 2016 <%=SystemManage.getInstance().getSystemSetting().getTitle()%> <%=SystemManage.getInstance().getSystemSetting().getIcp()%>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
</body>
<!-- Template Main JS File -->
 <script src="<%=path%>/modern/assets/js/main.js"></script>
</html>
