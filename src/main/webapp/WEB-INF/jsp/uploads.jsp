<%--
    Document   : uploads
    Created on : 13 Sep, 2017, 8:15:34 PM
    Author     : Dhaval
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="ui" tagdir="/WEB-INF/tags" %>

<ui:templete>

    <jsp:attribute name="head_area">

    </jsp:attribute>

    <jsp:attribute name="body_area">
	    <c:choose>
	    <c:when test='${empty(user)}'>
        <section class="dashboard-counts no-padding-bottom center">
            <div class="container-fluid">
                <div class="row bg-white has-shadow">
                	<div class="col-xl-12" style="text-align:center">
	                <p style="font-size: 20px; color: #ed3424">You need to Login First</p>
			<img src="https://developers.google.com/identity/images/btn_google_signin_dark_normal_web.png" title="Sign in with Google" onclick="location.href = '${pageContext.request.contextPath}/api/oauth/google/redirect'"><br><br><br>
                    </div>
                </div>
            </div>
        </section>
		</c:when>
        <c:otherwise>
        <!-- Page Header-->
        <header class="page-header">
            <div class="container-fluid">
                <h2 class="no-margin-bottom">Dashboard</h2>
            </div>
        </header>

        <ul class="breadcrumb">
            <div class="container-fluid">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item active">Your Uploads</li>
            </div>
        </ul>
<br>
	</c:otherwise>
	</c:choose>
    </jsp:attribute>
    <jsp:attribute name="javascript">
        <script src="https://cdn.jsdelivr.net/gh/PBhadoo/gdupload/src/main/resources/static/js/uploads.js"></script>
    </jsp:attribute>
</ui:templete>
