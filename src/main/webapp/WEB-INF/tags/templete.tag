<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@tag description="The template for the front-end" pageEncoding="UTF-8" %>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="head_area" fragment="true" %>
<%@attribute name="body_area" fragment="true" required="true" %>
<%@attribute name="javascript" fragment="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Bhadoo Cloud - Upload to Google Drive</title>
    <meta name="description" content="Upload Files using URL to Google Drive the easy way.">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <link rel=apple-touch-icon href="//cdn.jsdelivr.net/gh/ParveenBhadooOfficial/BhadooJS@1.0.10/icons/apple-touch-icon.png"/>
    <link rel="shortcut icon" href="//cdn.jsdelivr.net/gh/ParveenBhadooOfficial/BhadooJS@1.0.10/icons/apple-touch-icon.png"/>
    <link rel=apple-touch-icon sizes=180x180 href="//cdn.jsdelivr.net/gh/ParveenBhadooOfficial/BhadooJS@1.0.10/icons/apple-touch-icon.png">
    <link rel=icon type="image/png" sizes=32x32 href="//cdn.jsdelivr.net/gh/ParveenBhadooOfficial/BhadooJS@1.0.14/icons/favicon-32x32.png">
    <link rel=icon type="image/png" sizes=16x16 href="//cdn.jsdelivr.net/gh/ParveenBhadooOfficial/BhadooJS@1.0.14/icons/favicon-16x16.png">
    <link rel=mask-icon href="//cdn.jsdelivr.net/gh/jscdn/images@1.0.1/PBG_Corporation_Owner_Profile.svg" color="#5bbad5">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <!-- Google fonts - Lato | Open Sans | Poppins | Roboto | Work Sans -->
    <link href="https://fonts.googleapis.com/css?family=Roboto|Lato|Open+Sans|Poppins|Work+Sans" rel="stylesheet">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.default.css" id="theme-stylesheet">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico">
    <!-- Font Awesome CDN-->
    <script src="https://use.fontawesome.com/99347ac47f.js"></script>
    <!-- Font Icons CSS-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/jscdn/icons/icons.css">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <jsp:invoke fragment="head_area"/>
</head>
<body>
<div class="page home-page">
    <!-- Main Navbar-->
    <header class="header">
        <nav class="navbar">
            <div class="container-fluid">
                <div class="navbar-holder d-flex align-items-center justify-content-between">
                    <!-- Navbar Header-->
                    <div class="navbar-header">
                        <!-- Navbar Brand --><a href="/" class="navbar-brand">
                        <div class="brand-text brand-big hidden-lg-down"><span>Bhadoo Cloud</span> <strong>Drive</strong>
                        </div>
                        <div class="brand-text brand-small"><strong>BCD</strong></div>
                    </a>
                        <!-- Toggle Button--><a id="toggle-btn" href="#"
                                                class="menu-btn active"><span></span><span></span><span></span></a>
                    </div>
                    <!-- Navbar Menu -->
                    <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                        <li class="nav-item"><a href="https://github.com/ParveenBhadooOfficial/SaveToGoogleDrive" target="_blank">Open Source</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="page-content d-flex align-items-stretch">
        <!-- Side Navbar -->
        <nav class="side-navbar" style="min-height: 100%">
            <!-- Sidebar Header-->
            <div class="sidebar-header d-flex align-items-center">
                <c:choose>
                    <c:when test='${empty(user)}'>
                        <div class="avatar"><img src="${pageContext.request.contextPath}/img/guest.png" alt="..."
                                                 class="img-fluid rounded-circle"></div>
                        <div class="title">
                            <p>Welcome</p>
                            <h1 class="h4">Guest</h1>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="avatar"><img src="${user.profilePhotoUrl}"
                                                 alt="Avatar of <c:out value='${user.name}' />"
                                                 class="img-fluid rounded-circle"></div>
                        <div class="title">
                            <p>Welcome</p>
                            <h1 class="h4"><c:out value='${user.name}'/></h1>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
            <!-- Sidebar Navidation Menus--><span class="heading">Main</span>
            <ul class="list-unstyled">
                <li><a href="${pageContext.request.contextPath}"><i class="fa fa-home"></i>Home</a></li>
                <li><a href="${pageContext.request.contextPath}/new_upload"><i class="fa fa-cloud-upload"></i>New upload</a></li>
                <li><a href="${pageContext.request.contextPath}/uploads"> <i class="fa fa-tachometer"></i>Your Uploads </a></li>
                <li><a href="https://github.com/ParveenBhadooOfficial/SaveToGoogleDrive/issues"> <i class="fa fa-thumbs-o-up"></i>Suggest an Idea</a></li>
                <li><a href="https://github.com/ParveenBhadooOfficial/SaveToGoogleDrive/issues"> <i class="fa fa-bug"></i>Report a Bug</a></li>
                <li><a href="https://hashhackers.com/contact"> <i class="fa fa-envelope-o "></i>Contact</a></li>
            </ul>
        </nav>
        <div class="content-inner" id="content-inner">

            <jsp:invoke fragment="body_area"/>

            <div class="push"></div>

            <!-- Page Footer-->
            <footer class="main-footer bg-white has-shadow">
                <div class="container-fluid">
                    <div class="row ">
                        <div class="col-sm-12 text-center">
                            <p>Theme by <a href="https://bootstrapious.com/" target="_blank">BootStrapious</a> and App Deployed by <a href="https://github.com/ParveenBhadooOfficial/SaveToGoogleDrive" target="_blank">Parveen Bhadoo</a></p>
                            <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
</div>
<!-- Javascript files-->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/tether.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/js/front.js"></script>
<script src="${pageContext.request.contextPath}/js/sticky-footer.js"></script>
<jsp:invoke fragment="javascript"/>
</body>
</html>
