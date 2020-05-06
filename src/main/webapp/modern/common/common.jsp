<%@ page language="java" contentType="text/html; UTF-8"
         pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@page import="com.enterprise.core.SystemManage" %>
<%@page import="com.enterprise.entity.SystemSetting" %>
<%@ page import="org.apache.commons.lang.StringUtils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title><%=SystemManage.getInstance().getSystemSetting().getTitle()%></title>
  <meta content="<%=SystemManage.getInstance().getSystemSetting().getDescription() %>" name="descriptison">
  <meta content="<%=SystemManage.getInstance().getSystemSetting().getKeywords() %>" name="keywords">

  <!-- Favicons -->
  <link href="<%=path%>/modern/assets/img/favicon.png" rel="icon">
  <link href="<%=path%>/modern/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="<%=path%>/modern/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="<%=path%>/modern/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="<%=path%>/modern/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="<%=path%>/modern/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="<%=path%>/modern/assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="<%=path%>/modern/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="<%=path%>/modern/assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="<%=path%>/modern/assets/css/style.css" rel="stylesheet">

  <!-- Vendor JS Files -->
  <script src="<%=path%>/modern/assets/vendor/jquery/jquery.min.js"></script>
  <script src="<%=path%>/modern/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<%=path%>/modern/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="<%=path%>/modern/assets/vendor/venobox/venobox.min.js"></script>
  <script src="<%=path%>/modern/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="<%=path%>/modern/assets/vendor/counterup/counterup.min.js"></script>
  <script src="<%=path%>/modern/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="<%=path%>/modern/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="<%=path%>/modern/assets/vendor/aos/aos.js"></script>
  <script type="text/javascript" src="<%=path%>/resource/js/jquery.SuperSlide.2.1.1.js"></script>


</head>

<%
    SystemSetting s=SystemManage.getInstance().getSystemSetting();
    if (s != null && StringUtils.isNotBlank(s.getIsopen())
            && !Boolean.valueOf(s.getIsopen())) {
%>
    <%@include file="/modern/common/close.jsp" %>
<%
        return;
    }
%>


