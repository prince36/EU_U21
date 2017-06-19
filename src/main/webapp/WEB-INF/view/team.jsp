<%--
  Created by IntelliJ IDEA.
  User: Ja
  Date: 16.06.2017
  Time: 00:41
  To change this template use File | Settings | File Templates.
--%>

<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${pageContext.request.contextPath}/resources/favicon.ico">

    <title>Carousel Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/carousel.css" rel="stylesheet">
</head>
<body>

<jsp:include page="module/navbar.jsp" />




<div class="container marketing">
    <div class="row" style="margin-bottom: 35px">
        <c:forEach items="${teams}" var="teams">
            <div class="col-lg-4">
                <div class="" style="margin-bottom: 35px">
                    <img class="rounded-circle" src="<c:url value="/resources/sz1/${teams.idteams}.png"></c:url>" alt="<c:url value="${boot.idboots}"></c:url>" style = "width: 120px; vertical-align:middle" class="img-thumbnail"/>
                    <h3>${teams.name} </h3>
                    <p>${teams.group}</p>
                </div>
            </div>
        </c:forEach>
    </div>
</div>



    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider">
        <c:forEach items="${teams}" var="teams">
            <div class="row featurette">
                <div class="col-md-7 push-md-5">
                    <h2 class="featurette-heading">${teams.name} <span class="text-muted">Grupa: ${teams.group}</span></h2>
                    <p class="lead">${teams.description}</p>
                </div>
                <div class="col-md-5 pull-md-7">
                    <img href="<spring:url value="/teams/team/${teams.name}" />" class="featurette-image img-fluid mx-auto" data-src="<c:url value="/resources/sz1/${teams.idteams}.png"></c:url>" alt="Generic placeholder image">
                </div>
            </div>
        </c:forEach>
    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->

    <jsp:include page="module/footer.jsp" />

</div><!-- /.container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="../../assets/js/vendor/holder.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>