<%@ page language="java" contentType="text/html; UTF-8"
         pageEncoding="UTF-8" %>

<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>

<!-- ======= Services Section ======= -->
    <section class="services">
      <div class="container">

        <div class="row">

            <c:forEach var="item" items="<%=SystemManage.getInstance().getServiceCard()%>" varStatus="xh">
                <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up">
                    <div class="icon-box icon-box-pink">
                      <div class="icon">
                        <c:if test="${xh.index == 0}"><i class="bx bxl-dribbble"></i></c:if>
                        <c:if test="${xh.index == 1}"><i class="bx bx-file"></i></c:if>
                        <c:if test="${xh.index == 2}"><i class="bx bx-tachometer"></i></c:if>
                        <c:if test="${xh.index == 3}"><i class="bx bx-world"></i></c:if>
                      </div>
                      <h4 class="title"><a href="">${item.title}</a></h4>
                      <p class="description">${item.content}</p>
                    </div>
                  </div>
            </c:forEach>

        </div>

      </div>
    </section><!-- End Services Section -->