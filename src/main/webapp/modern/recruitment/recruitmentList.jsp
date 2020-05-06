<%@ page language="java" contentType="text/html; UTF-8"
         pageEncoding="UTF-8" %>

<%@include file="/modern/common/common.jsp" %>
<%@page import="java.util.Map" %>
<%@page import="java.util.LinkedHashMap" %>
<%
    Map<String,String> natures = new LinkedHashMap<String,String>();
    natures.put("0","全职");
    natures.put("1","兼职");

    Map<String,String> educations = new LinkedHashMap<String,String>();
    educations.put("0","不限");
    educations.put("1","高中");
    educations.put("2","专科");
    educations.put("3","本科");

    Map<String,String> experiences = new LinkedHashMap<String,String>();
    experiences.put("0","不限");
    experiences.put("1","1年");
    experiences.put("2","2年");
    experiences.put("3","3年");
    experiences.put("4","4年");
    experiences.put("5","5年");
    experiences.put("6","6年");
    experiences.put("7","7年");
    experiences.put("8","8年");
    experiences.put("9","9年");
    experiences.put("10","10年");
%>
<body>
<%@include file="/modern/common/navigation.jsp" %>


<main id="main">

    <!-- ======= Blog Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>诚聘英才</h2>

          <ol>
            <li><a href="<%=path%>/index">首 页</a></li>
            <li>诚聘英才</li>
          </ol>
        </div>

      </div>
    </section><!-- End Blog Section -->

    <!-- ======= Blog Section ======= -->
    <section class="blog" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
      <div class="container">

        <div class="row">

          <div class="col-lg-8 entries">

            <c:forEach var="item" items="<%=SystemManage.getInstance().getRecruitments()%>">
                <article class="entry">

                  <h2 class="entry-title">
                    <a href="">${item.position}</a>
                  </h2>

                  <div class="entry-meta">
                    <ul>
                      <li class="d-flex align-items-center">
                        工作性质：
                        <c:forEach var="natures" items="<%=natures%>">
                           <c:if test="${item.nature eq natures.key }">
                               ${natures.value}
                           </c:if>
                        </c:forEach>
                      </li>
                      <li class="d-flex align-items-center">
                        工作经验：
                        <c:forEach var="experiences" items="<%=experiences%>">
                            <c:if test="${item.experience eq experiences.key }">
                                ${experiences.value} 及以上
                            </c:if>
                        </c:forEach>
                      </li>
                      <li class="d-flex align-items-center">
                        学历要求：
                        <c:forEach var="educations" items="<%=educations%>">
                            <c:if test="${item.education eq educations.key }">
                                ${educations.value} 及以上
                            </c:if>
                        </c:forEach>
                      </li>
                      <li class="d-flex align-items-center">
                        招聘人数：${item.number}人
                      </li>
                    </ul>
                  </div>

                  <div class="entry-content">
                    <p>
                      职位要求：<br> ${item.requirements}
                    </p>
                  </div>

                </article><!-- End blog entry -->
            </c:forEach>


          </div><!-- End blog entries list -->

          <div class="col-lg-4">
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
                    <c:forEach var="item" items="<%=SystemManage.getInstance().getRecruitments()%>">
                           <li><a href="">${item.position}</a></li>
                    </c:forEach>
                </ul>

              </div><!-- End sidebar categories-->

              <h3 class="sidebar-title">标签</h3>
              <div class="sidebar-item tags">
                <ul>
                  <li><a href="#">全职</a></li>
                  <li><a href="#">兼职</a></li>
                  <li><a href="#">本科</a></li>
                  <li><a href="#">硕士</a></li>
                </ul>

              </div><!-- End sidebar tags-->

            </div><!-- End sidebar -->
          </div><!-- End blog sidebar -->

        </div><!-- End .row -->

      </div><!-- End .container -->

    </section><!-- End Blog Section -->

  </main><!-- End #main -->

<%@include file="/modern/common/foot.jsp"%>