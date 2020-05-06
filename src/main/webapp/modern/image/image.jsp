<%@ page language="java" contentType="text/html; UTF-8"
         pageEncoding="UTF-8"%>

<%@include file="/modern/common/common.jsp"%>
<body>
<%@include file="/modern/common/navigation.jsp"%>

<main id="main">

    <!-- ======= Our Portfolio Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>团队风采</h2>
          <ol>
            <li><a href="<%=path%>/index">首页</a></li>
            <li>团队风采</li>
          </ol>
        </div>

      </div>
    </section><!-- End Our Portfolio Section -->

    <!-- ======= Portfolio Section ======= -->
    <section class="portfolio">
      <div class="container">

        <div class="row">
          <div class="col-lg-12">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">全部</li>
            </ul>
          </div>
        </div>

        <div class="row portfolio-container" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">

          <c:forEach var="item" items="${data}">
            <div class="col-lg-4 col-md-6 filter-web">
              <div class="portfolio-item">
                <img src="<%=SystemManage.getInstance().getSystemSetting().getImageRootPath()%>/${item.image}" class="img-fluid" alt="">
                <div class="portfolio-info">
                  <h3><a href="<%=SystemManage.getInstance().getSystemSetting().getImageRootPath()%>/${item.image}" data-gall="portfolioGallery" class="venobox" title="${item.title}">${item.title}</a></h3>
                  <a href="<%=SystemManage.getInstance().getSystemSetting().getImageRootPath()%>/${item.image}" data-gall="portfolioGallery" class="venobox" title="${item.title}"><i class="icofont-plus"></i></a>
                </div>
              </div>
            </div>
          </c:forEach>

        </div>

      </div>
    </section><!-- End Portfolio Section -->

  </main><!-- End #main -->

<%@include file="/modern/common/foot.jsp" %>
