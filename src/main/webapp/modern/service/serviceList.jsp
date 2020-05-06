<%@ page language="java" contentType="text/html; UTF-8"
         pageEncoding="UTF-8" %>

<%@include file="/modern/common/common.jsp" %>
<body>
<%@include file="/modern/common/navigation.jsp" %>

<main id="main">

    <!-- ======= Our Services Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>服务领域</h2>
          <ol>
            <li><a href="<%=path%>/index">首页</a></li>
            <li>服务领域</li>
          </ol>
        </div>

      </div>
    </section><!-- End Our Services Section -->

    <%@include file="/modern/common/service-card.jsp" %>

    <!-- ======= Service Details Section ======= -->
    <section class="service-details">
      <div class="container">

        <div class="row">

            <c:forEach var="item" items="<%=SystemManage.getInstance().getService()%>">
                <div class="col-md-6 d-flex align-items-stretch" data-aos="fade-up">
                    <div class="card">
                      <div class="card-img">
                        <img src="<%=SystemManage.getInstance().getSystemSetting().getImageRootPath()%>/${item.image}" alt="" class="img-fluid">
                      </div>
                      <div class="card-body">
                        <h5 class="card-title"><a href="#">${item.title}</a></h5>
                        <p class="card-text">${item.contentHtml}</p>
                      </div>
                    </div>
                  </div>
            </c:forEach>


        </div>

      </div>
    </section><!-- End Service Details Section -->

  </main><!-- End #main -->

<%@include file="/modern/common/foot.jsp"%>