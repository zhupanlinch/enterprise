<%@ page language="java" contentType="text/html; UTF-8"
         pageEncoding="UTF-8" %>
<!-- ======= Header ======= -->
<header id="header" class="fixed-top header-transparent">
<div class="container">

  <div class="logo float-left">
    <h1 class="text-light"><a href="<%=path%>/index"><span><%=SystemManage.getInstance().getSystemSetting().getTitle()%></span></a></h1>
    <!-- Uncomment below if you prefer to use an image logo -->
    <!-- <a href="index.html"><img src="<%=SystemManage.getInstance().getSystemSetting().getImageRootPath() %><%=SystemManage.getInstance().getSystemSetting().getLogo() %>" alt="" class="img-fluid"></a>-->
  </div>

  <nav class="nav-menu float-right d-none d-lg-block">
    <ul>
      <li class="active"><a href="<%=path%>/index">首 页<i class="la la-angle-down"></i></a></li>
      <li><a href="<%=path%>/about">关于我们</a></li>
      <li><a href="<%=path%>/service">服务领域</a></li>
      <li><a href="<%=path%>/article">新闻动态</a></li>
      <li><a href="<%=path%>/image">团队风采</a></li>
      <li><a href="<%=path%>/recruitment">诚聘英才</a></li>
      <li><a href="<%=path%>/contact">联系我们</a></li>
    </ul>
  </nav><!-- .nav-menu -->

</div>
</header><!-- End Header -->