<%@ page language="java" contentType="text/html; UTF-8"
         pageEncoding="UTF-8" %>

<div class="sidebar">

  <h3 class="sidebar-title">搜索</h3>
  <div class="sidebar-item search-form">
    <form action="">
      <input type="text">
      <button type="submit"><i class="icofont-search"></i></button>
    </form>
  </div><!-- End sidebar search formn-->

  <h3 class="sidebar-title">分类</h3>
  <div class="sidebar-item categories">
    <ul>
        <c:forEach var="item" items="<%=SystemManage.getInstance().getArticleCategory()%>">
            <li><a href="<%=path%>/article/${item.code}">${item.catename}</a></li>
        </c:forEach>
    </ul>

  </div><!-- End sidebar categories-->

  <h3 class="sidebar-title">标签</h3>
  <div class="sidebar-item tags">
    <ul>
      <li><a href="#">App</a></li>
      <li><a href="#">IT</a></li>
      <li><a href="#">Business</a></li>
      <li><a href="#">Business</a></li>
      <li><a href="#">Mac</a></li>
      <li><a href="#">Design</a></li>
      <li><a href="#">Office</a></li>
      <li><a href="#">Creative</a></li>
      <li><a href="#">Studio</a></li>
      <li><a href="#">Smart</a></li>
      <li><a href="#">Tips</a></li>
      <li><a href="#">Marketing</a></li>
    </ul>

  </div><!-- End sidebar tags-->

</div><!-- End sidebar -->