<%@ page language="java" contentType="text/html; UTF-8"
         pageEncoding="UTF-8"%>

<%@include file="/modern/common/common.jsp"%>

<body>
<%@include file="/modern/common/navigation.jsp" %>


  <main id="main">

    <!-- ======= Blog Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>新闻动态</h2>

          <ol>
            <li><a href="<%=path%>/index">首页</a></li>
            <li><a href="<%=path%>/article">新闻动态</a></li>
            <li>${e.title}</li>
          </ol>
        </div>

      </div>
    </section><!-- End Blog Section -->

    <!-- ======= Blog Section ======= -->
    <section class="blog" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
      <div class="container">

        <div class="row">

          <div class="col-lg-8 entries">

            <article class="entry entry-single">
              <div class="entry-img">
                <img src="<%=SystemManage.getInstance().getSystemSetting().getImageRootPath()%>/${e.image}" alt="" class="img-fluid">
              </div>

              <h2 class="entry-title">
                <a href="blog-single.html">${e.title}</a>
              </h2>

              <div class="entry-meta">
                <ul>
                  <li class="d-flex align-items-center"><i class="icofont-user"></i> <a href="blog-single.html">${e.catename}</a></li>
                  <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i> <a href="blog-single.html"><time datetime="2020-01-01">${e.createtime}</time></a></li>
                  <li class="d-flex align-items-center"><i class="icofont-comment"></i> <a href="blog-single.html">${e.hit}</a></li>
                </ul>
              </div>

              <div class="entry-content">
                ${e.content}
              </div>

              <div class="entry-footer clearfix">
                <div class="float-left">
                  <i class="icofont-folder"></i>
                  <ul class="cats">
                    <li><a href="#">${e.keywords}</a></li>
                  </ul>

                  <i class="icofont-tags"></i>
                  <ul class="tags">
                    <li><a href="#">Creative</a></li>
                    <li><a href="#">Tips</a></li>
                    <li><a href="#">Marketing</a></li>
                  </ul>
                </div>

              </div>

            </article><!-- End blog entry -->


          </div><!-- End blog entries list -->

          <div class="col-lg-4">
              <%@include file="/modern/common/blog-search.jsp" %>
          </div><!-- End blog sidebar -->

        </div><!-- End row -->

      </div><!-- End container -->

    </section><!-- End Blog Section -->

  </main><!-- End #main -->


<%@include file="/modern/common/foot.jsp"%>
