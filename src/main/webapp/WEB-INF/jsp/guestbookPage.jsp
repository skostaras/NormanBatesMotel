<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE HTML>
<html>
<head>
<!-- <meta charset="UTF-8"> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /></meta>
<meta name="viewport" content="width=device-width, initial-scale=1"></meta>
<title>Norman Bates Motel</title>

<link href="static/css/bootstrap.css" rel='stylesheet' type='text/css' />

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="static/js/jquery.min.js"></script>
<!-- Custom Theme files -->

<link href="static/css/style.css" rel='stylesheet' type='text/css' />






<!-- Custom Theme files -->

<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- animated-css -->
<link href="static/css/animate.css" rel="stylesheet" type="text/css"
	media="all"></link>
<script type="text/javascript" src="static/js/jquery.corner.js"></script>
<script src="static/js/wow.min.js"></script>
<script>
		 new WOW().init();
		</script>
<!-- animated-css -->
<!-- start-smoth-scrolling-->
<script type="text/javascript" src="static/js/move-top.js"></script>
<script type="text/javascript" src="static/js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
<!-- start-smoth-scrolling-->
<!--webfonts-->
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'
	rel='stylesheet' type='text/css'></link>
<!--//webfonts-->
<!--start-top-nav-script-->
<script>
			$(function() {
				var pull 		= $('#pull');
					menu 		= $('nav ul');
					menuHeight	= menu.height();
				$(pull).on('click', function(e) {
					e.preventDefault();
					menu.slideToggle();
				});
				$(window).resize(function(){
	        		var w = $(window).width();
	        		if(w > 320 &amp;&amp; menu.is(':hidden')) {
	        			menu.removeAttr('style');
	        		}
	    		});
			});
		</script>
<!--//End-top-nav-script-->
</head>
<body>

		

		<div class="head-section" id="guestbook">
			<div class="container">
				<h3>
					<label>Guestbook</label>
				</h3>
			</div>
		</div>


		<c:if test="${!empty allComments}">
			<table class = "table table-hover">
			<tr>
				<th width="120">Όνομα</th>
				<th width="120">email</th>
				<th width="120">Πόλη</th>
				<th width="120">Σχόλια</th>
				<th width="60">Επεξεργασία</th>
				<th width="60">Διαγραφή</th>
			</tr>
			<c:forEach items="${allComments}" var="guestbook"> <!-- δεν είμαι σίγουρος για το var, έλεγε country -->
				<tr>
					<td>${guestbook.nickname}</td>
					<td>${guestbook.email}</td>
					<td>${guestbook.city}</td>
					<td>${guestbook.comments}</td>
					<td><a href="<c:url value='/updateComment/${guestbook.id}' />" >Επεξεργασία</a></td>
					<td><a href="<c:url value='/deleteComment/${guestbook.id}' />" >Διαγραφή</a></td>
				</tr>
			</c:forEach>
			</table>
		</c:if>


	</div>

	<!-- End GuestBook -->

	<!-- Add Comment to GuestBook -->
	<br>
	<br>
	<div class="container">
		<form:form method="post" modelAttribute="guestbook"
			action="/addComment">
			<table class="table table-hover">
				<tr>
					<th colspan="2"text-align:"center" >Αν μας έχετε ήδη
						επισκεπτεί και μείνατε ευχαριστημένοι, παρακαλώ αφήστε τα σχόλιά
						σας παρακάτω.</th>
				</tr>

				<tr>
					<form:hidden path="id" />
					<td><form:label path="nickname">Όνομα:</form:label></td>
					<td><form:input path="nickname" size="30" maxlength="30"></form:input></td>
				</tr>

				<tr>
					<td><form:label path="email">email:</form:label></td>
					<td><form:input path="email" size="30" maxlength="30"></form:input></td>
				</tr>

				<tr>
					<td><form:label path="city">Πόλη:</form:label></td>
					<td><form:input path="city" size="30" maxlength="30"></form:input></td>
				</tr>

				<tr>
					<td><form:label path="comments">Σχόλια:</form:label></td>
					<td><form:input path="comments" size="30" maxlength="140"></form:input></td>
				</tr>

				<tr>

					<td colspan="2"><input type="submit" class="btn btn-bates"
						value="Υποβολή" /></td>
				</tr>
			</table>
		</form:form>

	</div>



	<!-- End Add Comment to GuestBook -->




	<div class="clearfix"></div>

	<!-- footer -->
	<div class="footer text-center">
		<div class="container">
			<div class="footer-inner wow zoomIn" data-wow-delay="0.3s">
				<ul id="contact">
					<li><a href="#"><img src="/static/images/sign3.jpg"
							title="ruddy" height="100" /></a></li>
					<li><a class="contact-me" href="#">επικοινωνία</a></li>
				</ul>
			</div>
			<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear'
								 		};
										*/

										$().UItoTop({ easingType: 'easeOutQuart' });

									});
								</script>
			<a href="#" id="toTop" style="display: block;"> <span
				id="toTopHover" style="opacity: 1;"> </span></a>
		</div>
	</div>
	<!-- footer -->
	</div>
</body>
</html>
