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

<div class="blog-header">
    <div class="container">
        <h1 class="blog-title">Reprezentacja: ${teams.get(0).name}</h1>
        <p class="lead blog-description">Drużyna reprezentuje swój kraj w mistrzostwach Europu poniżej 21 wieku.</p>
    </div>
</div>

<div class="container">

    <div class="row">
        <div class="col-sm-8 blog-main">
            <div class="blog-post">
                <h2 class="blog-post-title">Szczegóły</h2>
                <p class="blog-post-meta">January 1, 2014 by <a href="#">Mark</a></p>

                <p>This blog post shows a few different types of content that's supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>
                <hr>
                <p>${teams.get(0).description}</p>

                <h2>Tabela grupy: ${teams.get(0).group}</h2>
                <table class="table table-striped">
                    <thead> <tr> <th>#</th> <th>Drużyna</th> <th>MR</th> <th>G+</th> <th>G-</th> <th>PKT</th> </tr> </thead>
                    <% int licznik3=0; %>
                    <tbody>
                    <c:forEach items="${tables}" var="teams">
                        <% licznik3 = licznik3 +1; %>
                        <tr>
                            <th scope="row"><%=licznik3%></th>
                            <td>${teams.team_name}</td>
                            <td>${teams.mr}</td>
                            <td>${teams.g_plus}</td>
                            <th>${teams.g_minus}</th>
                            <th>${teams.pkt}</th>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

                <h2>Skład drużyny:</h2>
                <div class="row">
                    <div class=".col-md-6">
                        <div class="panel panel-default">
                            <!-- Default panel contents -->
                            <h1>Bramkarze:</h1>
                            <!-- Table -->
                            <table class="table">
                                <c:forEach items="${players}" var="players">
                                <c:if test="${players.position=='b'}">
                                <tr>
                                    <td>${players.full_name}</td>
                                    <td>
                                        <c:if test="${players.position=='b'}">Bramkarz</c:if>
                                        <c:if test="${players.position=='o'}">Obrońca</c:if>
                                        <c:if test="${players.position=='p'}">Pomocnik</c:if>
                                        <c:if test="${players.position=='n'}">Napastnik</c:if>
                                    </td>
                                </tr>
                                </c:if>
                                </tbody>
                                </c:forEach>
                            </table>
                        </div>
                        <div class="panel panel-default">
                            <!-- Default panel contents -->
                            <h1>Obrońcy:</h1>
                            <!-- Table -->
                            <table class="table">
                                <c:forEach items="${players}" var="players">
                                    <c:if test="${players.position=='o'}">
                                        <tr>
                                            <td>${players.full_name}</td>
                                            <td>
                                                <c:if test="${players.position=='b'}">Bramkarz</c:if>
                                                <c:if test="${players.position=='o'}">Obrońca</c:if>
                                                <c:if test="${players.position=='p'}">Pomocnik</c:if>
                                                <c:if test="${players.position=='n'}">Napastnik</c:if>
                                            </td>
                                        </tr>
                                    </c:if>
                                    </tbody>
                                </c:forEach>
                            </table>
                        </div>
                    </div>
                    <div class=".col-md-6">
                        <div class="panel panel-default">
                            <!-- Default panel contents -->
                            <h1>Pomocnicy:</h1>
                            <!-- Table -->
                            <table class="table">
                                <c:forEach items="${players}" var="players">
                                    <c:if test="${players.position=='p'}">
                                        <tr>
                                            <td>${players.full_name}</td>
                                            <td>
                                                <c:if test="${players.position=='b'}">Bramkarz</c:if>
                                                <c:if test="${players.position=='o'}">Obrońca</c:if>
                                                <c:if test="${players.position=='p'}">Pomocnik</c:if>
                                                <c:if test="${players.position=='n'}">Napastnik</c:if>
                                            </td>
                                        </tr>
                                    </c:if>
                                    </tbody>
                                </c:forEach>
                            </table>
                        </div>
                        <div class="panel panel-default">
                            <!-- Default panel contents -->
                            <h1>Napastnicy:</h1>
                            <!-- Table -->
                            <table class="table">
                                <c:forEach items="${players}" var="players">
                                    <c:if test="${players.position=='n'}">
                                        <tr>
                                            <td>${players.full_name}</td>
                                            <td>
                                                <c:if test="${players.position=='b'}">Bramkarz</c:if>
                                                <c:if test="${players.position=='o'}">Obrońca</c:if>
                                                <c:if test="${players.position=='p'}">Pomocnik</c:if>
                                                <c:if test="${players.position=='n'}">Napastnik</c:if>
                                            </td>
                                        </tr>
                                    </c:if>
                                    </tbody>
                                </c:forEach>
                            </table>
                        </div>
                    </div>
                </div>


            <nav class="blog-pagination">
                <a class="btn btn-outline-primary" href="#">Older</a>
                <a class="btn btn-outline-secondary disabled" href="#">Newer</a>
            </nav>
            </div>
        </div><!-- /.blog-main -->

        <div class="col-sm-3 offset-sm-1 blog-sidebar">
            <div class="sidebar-module sidebar-module-inset">
                <img class="rounded-circle" src="<c:url value="/resources/sz1/${teams.get(0).idteams}.png"></c:url>" alt="<c:url value="${teams.get(0).idteams}"></c:url>" style = "width: 120px; vertical-align:middle" class="img-thumbnail"/>
                <h4>O drużynie:</h4>
                <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
            </div>
            <div class="sidebar-module">
                <h4>Archives</h4>
                <ol class="list-unstyled">
                    <li><a href="#">Trener</a></li>
                    <li><a href="#">Terminarz</a></li>
                    <li><a href="#">Tabele</a></li>
                    <li><a href="#">December 2013</a></li>
                    <li><a href="#">November 2013</a></li>
                    <li><a href="#">October 2013</a></li>
                    <li><a href="#">September 2013</a></li>
                    <li><a href="#">August 2013</a></li>
                    <li><a href="#">July 2013</a></li>
                    <li><a href="#">June 2013</a></li>
                    <li><a href="#">May 2013</a></li>
                    <li><a href="#">April 2013</a></li>
                </ol>
            </div>
            <div class="sidebar-module">
                <h4>Elsewhere</h4>
                <ol class="list-unstyled">
                    <li><a href="#">GitHub</a></li>
                    <li><a href="#">Twitter</a></li>
                    <li><a href="#">Facebook</a></li>
                </ol>
            </div>
        </div><!-- /.blog-sidebar -->
    </div><!-- /.row -->

</div><!-- /.container -->


























<div class="container">
<div class="row" style="margin-top: 50px">
    <div class=".col-md-6">
        <div class="container marketing">
            <div class="row" style="margin-bottom: 35px">
                <c:forEach items="${teams}" var="teams">
                    <div class="col-lg-6" style="text-align: center!important;">
                        <div class="" style="margin-bottom: 35px">
                            <img class="rounded-circle" src="<c:url value="/resources/sz1/${teams.idteams}.png"></c:url>" alt="<c:url value="${boot.idboots}"></c:url>" style = "width: 120px; vertical-align:middle" class="img-thumbnail"/>
                            <h3>${teams.name} </h3>
                            <p>${teams.group}</p>
                            <a href="<spring:url value="/teams/team/${teams.name}" />" >LINK</a>

                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>

    <div class=".col-md-6" style="text-align: center!important; margin-left: 40px">
        <h4>Tabela</h4>
        <table class="table table-striped">
            <thead> <tr> <th>#</th> <th>Drużyna</th> <th>MR</th> <th>G+</th> <th>G-</th> <th>PKT</th> </tr> </thead>
            <% int licznik=0; %>
            <tbody>
            <c:forEach items="${tables}" var="teams">
                <% licznik = licznik +1; %>
                <tr>
                    <th scope="row"><%=licznik%></th>
                    <td>${teams.team_name}</td>
                    <td>${teams.mr}</td>
                    <td>${teams.g_plus}</td>
                    <th>${teams.g_minus}</th>
                    <th>${teams.pkt}</th>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <%-- Test react --%>
    </div>
</div>

<!-- START THE Terminarz -->
<div class="container marketing">
<h3>Skład</h3>
    <table>
    <% int licznik2=0; %>
    <c:forEach items="${players}" var="players">
        <% licznik2 = licznik2 +1; %>
        <tbody>
        <tr>
            <th scope="row"><%=licznik2%></th>
            <td>${players.full_name}</td>
            <td>
                <c:if test="${players.position=='b'}">Bramkarz</c:if>
                <c:if test="${players.position=='o'}">Obrońca</c:if>
                <c:if test="${players.position=='p'}">Pomocnik</c:if>
                <c:if test="${players.position=='n'}">Napastnik</c:if>
            </td>
        </tr>

    </c:forEach>
        </tbody>
    </table>
</div>
<!-- START THE Terminarz -->
<div class="container marketing">
<h3>Terminarz</h3>
</div>

<h3>Artykuły</h3>4




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