<%@ page language="java" contentType="text/html; UTF-8"
         pageEncoding="UTF-8"%>

<%@include file="/modern/common/common.jsp"%>
<body>
<%@include file="/modern/common/navigation.jsp"%>


<main id="main">

    <!-- ======= About Us Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>关于我们</h2>
          <ol>
            <li><a href="<%=path%>/index">首页</a></li>
            <li>关于我们</li>
          </ol>
        </div>

      </div>
    </section><!-- End About Us Section -->

    <!-- ======= About Section ======= -->
    <section class="about" data-aos="fade-up">
      <div class="container">

        <div class="row">
          <div class="col-lg-6">
            <img src="<%=SystemManage.getInstance().getSystemSetting().getImageRootPath()%>/<%=SystemManage.getInstance().getAbout().getImage()%>" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0">
            <h3><%=SystemManage.getInstance().getAbout().getTitle()%></h3>
            <%=SystemManage.getInstance().getAbout().getContentHtml()%>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    <!-- ======= Facts Section ======= -->
    <section class="facts section-bg" data-aos="fade-up">
      <div class="container">

        <div class="row counters">

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up"><%=SystemManage.getInstance().getAbout().getClient()%></span>
            <p>企业客户</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up"><%=SystemManage.getInstance().getAbout().getProject()%></span>
            <p>服务项目</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up"><%=SystemManage.getInstance().getAbout().getHours()%></span>
            <p>个人客户</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up"><%=SystemManage.getInstance().getAbout().getWorker()%></span>
            <p>核心员工</p>
          </div>

        </div>

      </div>
    </section><!-- End Facts Section -->

    <!-- ======= Our Skills Section ======= -->
    <section class="skills" data-aos="fade-up">
      <div class="container">

        <div class="section-title">
          <h2><%=SystemManage.getInstance().getAbout().getSkill_title()%></h2>
          <p><%=SystemManage.getInstance().getAbout().getSkill_content()%></p>
        </div>

        <div class="skills-content">

          <div class="progress">
            <div class="progress-bar bg-success" role="progressbar" aria-valuenow="<%=SystemManage.getInstance().getAbout().getNum1()%>" aria-valuemin="0" aria-valuemax="100">
              <span class="skill"><%=SystemManage.getInstance().getAbout().getLabel1()%> <i class="val"><%=SystemManage.getInstance().getAbout().getNum1()%>%</i></span>
            </div>
          </div>

          <div class="progress">
            <div class="progress-bar bg-info" role="progressbar" aria-valuenow="<%=SystemManage.getInstance().getAbout().getNum2()%>" aria-valuemin="0" aria-valuemax="100">
              <span class="skill"><%=SystemManage.getInstance().getAbout().getLabel2()%> <i class="val"><%=SystemManage.getInstance().getAbout().getNum2()%>%</i></span>
            </div>
          </div>

          <div class="progress">
            <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="<%=SystemManage.getInstance().getAbout().getNum3()%>" aria-valuemin="0" aria-valuemax="100">
              <span class="skill"><%=SystemManage.getInstance().getAbout().getLabel3()%> <i class="val"><%=SystemManage.getInstance().getAbout().getNum3()%>%</i></span>
            </div>
          </div>

          <div class="progress">
            <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="<%=SystemManage.getInstance().getAbout().getNum4()%>" aria-valuemin="0" aria-valuemax="100">
              <span class="skill"><%=SystemManage.getInstance().getAbout().getLabel4()%> <i class="val"><%=SystemManage.getInstance().getAbout().getNum4()%>%</i></span>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Our Skills Section -->

    <!-- ======= Tetstimonials Section ======= -->
    <section class="testimonials" data-aos="fade-up">
      <div class="container">

        <div class="section-title">
          <h2><%=SystemManage.getInstance().getAbout().getWorker_title()%></h2>
          <p><%=SystemManage.getInstance().getAbout().getWorker_content()%></p>
        </div>

        <div class="owl-carousel testimonials-carousel">

          <div class="testimonial-item">
            <img src="<%=path%>/modern/assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
            <h3>Saul Goodman</h3>
            <h4>Ceo &amp; Founder</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>

          <div class="testimonial-item">
            <img src="<%=path%>/modern/assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
            <h3>Sara Wilsson</h3>
            <h4>Designer</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>

          <div class="testimonial-item">
            <img src="<%=path%>/modern/assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
            <h3>Jena Karlis</h3>
            <h4>Store Owner</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>

          <div class="testimonial-item">
            <img src="<%=path%>/modern/assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
            <h3>Matt Brandon</h3>
            <h4>Freelancer</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>

          <div class="testimonial-item">
            <img src="<%=path%>/modern/assets/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt="">
            <h3>John Larson</h3>
            <h4>Entrepreneur</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>

        </div>

      </div>
    </section><!-- End Ttstimonials Section -->

  </main><!-- End #main -->

<%@include file="/modern/common/foot.jsp" %>
