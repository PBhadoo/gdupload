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
<iframe src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-5435553179213419&output=html&h=250&slotname=1921571160&w=300&fwr_io=true&fwrn=4&fwrnh=100&format=300x250&url=https%3A%2F%2Fwww.tricksbystg.org" height="310" width="100%" frameborder="0"></iframe>
    </jsp:attribute>
    <jsp:attribute name="javascript">
        <script src="${pageContext.request.contextPath}/js/uploads.js"></script>
    </jsp:attribute>
</ui:templete>
