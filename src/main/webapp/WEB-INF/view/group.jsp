<%--
  Created by IntelliJ IDEA.
  User: Ja
  Date: 19.06.2017
  Time: 21:51
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

    <link rel="stylesheet" src="https://npmcdn.com/react-bootstrap-table/dist/react-bootstrap-table-all.min.css">
    </link>



    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/carousel.css" rel="stylesheet">
</head>
<body>



<jsp:include page="module/navbar.jsp" />

<jsp:include page="module/carousel1.jsp" />

<div class="row">
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

<div class="container">
    <div class=".col-md-6">
        <h4>Terminarz</h4>
        <table class="table table-striped" style="text-align: center">
            <tbody>
                <c:forEach items="${matchs}" var="matchs">
                    <tr>
                        <td>
                            <c:forEach items="${teams}" var="teams">
                                <c:if test="${matchs.idteam1==teams.idteams}">${teams.name}</c:if>
                            </c:forEach>
                        </td>
                        <th> ${matchs.idteam1_wynik}:${matchs.idteam2_wynik} </th>
                        <td>
                            <c:forEach items="${teams}" var="teams">
                                <c:if test="${matchs.idteam2==teams.idteams}">${teams.name}</c:if>
                            </c:forEach>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>



    </div>
</div>




<jsp:include page="module/footer.jsp" />

<!-- /.container -->


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
