<%@ page import="com.enterprise.entity.ArticleCategory" %>
<%@ page language="java" contentType="text/html; UTF-8"
         pageEncoding="UTF-8" %>

<%@include file="/modern/common/common.jsp" %>

<body>
<%@include file="/modern/common/navigation.jsp" %>

<main id="main">

    <!-- ======= Blog Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>新闻动态</h2>

          <ol>
            <li><a href="<%=path%>/index">首 页</a></li>
            <li>新闻动态</li>
          </ol>
        </div>

      </div>
    </section><!-- End Blog Section -->

    <!-- ======= Blog Section ======= -->
    <section class="blog" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
      <div class="container">

        <div class="row">

          <div class="col-lg-8 entries">

            <c:forEach var="item" items="${pager.list}">
                <article class="entry">
                  <div class="entry-img">
                    <img src="<%=SystemManage.getInstance().getSystemSetting().getImageRootPath()%>/${item.image}" alt="" class="img-fluid">
                  </div>

                  <h2 class="entry-title">
                    <a href="<%=path%>/article/${item.id}">${item.title}</a>
                  </h2>

                  <div class="entry-meta">
                    <ul>
                      <li class="d-flex align-items-center"><i class="icofont-user"></i> <a href="<%=path%>/article/${item.id}">${item.catename}</a></li>
                      <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i> <a href="<%=path%>/article/${item.id}">
                      <time datetime="2020-01-01">${item.createtime}</time></a></li>
                      <li class="d-flex align-items-center"><i class="icofont-comment"></i> <a href="<%=path%>/article/${item.id}">${item.keywords}</a></li>
                    </ul>
                  </div>

                  <div class="entry-content">
                    <p>
                      ${item.description}
                    </p>
                    <div class="read-more">
                      <a href="<%=path%>/article/${item.id}">查看详情</a>
                    </div>
                  </div>

                </article><!-- End blog entry -->
            </c:forEach>

            <div class="blog-pagination">
                <%@include file="/modern/common/page.jsp" %>
            </div>

          </div><!-- End blog entries list -->

          <div class="col-lg-4">
            <%@include file="/modern/common/blog-search.jsp" %>
          </div><!-- End blog sidebar -->

        </div><!-- End .row -->

      </div><!-- End .container -->

    </section><!-- End Blog Section -->

  </main><!-- End #main -->

<%@include file="/modern/common/foot.jsp" %>
