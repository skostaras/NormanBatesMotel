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
<link href="../static/css/bootstrap.css" rel='stylesheet'
	type='text/css' />
<!-- I do this because while on updateComment view, it looks on updateComment/static... and doesn't load the resourses. Couldn't find another solution, so I use this workaround -->

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="static/js/jquery.min.js"></script>
<script src="../static/js/jquery.min.js"></script>
<!-- Custom Theme files -->

<link href="static/css/style.css" rel='stylesheet' type='text/css' />
<link href="../static/css/style.css" rel='stylesheet' type='text/css' />


<!-- Custom Theme files -->

<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!-- animated-css -->
<link href="static/css/animate.css" rel="stylesheet" type="text/css"
	media="all"></link>
<link href="../static/css/animate.css" rel="stylesheet" type="text/css"
	media="all"></link>
<script type="text/javascript" src="static/js/jquery.corner.js"></script>
<script type="text/javascript" src="../static/js/jquery.corner.js"></script>
<script src="static/js/wow.min.js"></script>
<script src="../static/js/wow.min.js"></script>
<script>
		 new WOW().init();
		</script>
<!-- animated-css -->
<!-- start-smoth-scrolling-->
<script type="text/javascript" src="static/js/move-top.js"></script>
<script type="text/javascript" src="../static/js/move-top.js"></script>
<script type="text/javascript" src="static/js/easing.js"></script>
<script type="text/javascript" src="../static/js/easing.js"></script>
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

	<div class="bg">
		<!-- start-header-->
		<div class="container">
			<div id="home" class="header wow bounceInDown" data-wow-delay="0.4s">
				<div class="top-header">

					<!--start-top-nav-->
					<nav class="top-nav">
						<ul class="top-nav">
							<li><a href="#about" class="scroll">Ο ιδιοκτητης</a></li>
							<li><a href="#port" class="scroll">Οι χωροι μας</a></li>
							<li class="page-scroll"><a href="#contact" class="scroll">επικοινωνια</a></li>
							<li class="active-join" class="page-scroll"><a
								href="#guestbook" class="scroll">guestbook</a></li>
						</ul>
						<a href="#" id="pull"><img src="/static/images/nav-icon.png"
							title="menu" /></a>
					</nav>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!-- //End-header-->
		<!-- banner-info -->
		<div class="banner-info">
			<div class="container">
				<h1 class="wow fadeIn" data-wow-delay="0.5s">
					<span>Motel</span><br /> <label>Norman Bates</label>
				</h1>
				<div class="top-banner-grids wow bounceInUp" data-wow-delay="0.4s">
					<div class="banner-grid text-center">
						<span class="top-icon1"> </span>
						<h3>επαγγελματισμος</h3>
					</div>
					<div class="banner-grid text-center">
						<span class="top-icon2"> </span>
						<h3>εμπειρια</h3>
					</div>
					<div class="banner-grid banner-grid-active text-center">
						<span class="top-icon4"> </span>
						<h3>εχεμυθεια</h3>
					</div>
					<div class="banner-grid text-center">
						<span class="top-icon3"> </span>
						<h3>καθαριοτητα</h3>
					</div>

					<div class="banner-grid text-center">
						<span class="top-icon5"> </span>
						<h3>οικονομια</h3>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- banner-info -->
	<!-- top-grids -->
	<div class="top-grids text-center">
		<div class="container">
			<div class="col-md-3 wow bounceIn" data-wow-delay="0.4s">

				<div class="top-grid">
					<img src="/static/images/fac1.png"> <label> </label>
					<p>Δειπνήστε στο καλύτερο εστιατόριο της περιοχής "Deserted
						Area District" με τον αγαπημένο ή την αγαπημένη σας</p>
				</div>
			</div>

			<div class="col-md-3 wow bounceIn" data-wow-delay="0.4s">
				<div class="top-grid">
					<img src="/static/images/fac2.png"> <label> </label>
					<p>Διαθέτουμε τα καλύτερα αφαιρετικά κόκκινων λεκέδων για τα
						ρούχα σας και χωρίς να ρωτάμε πώς βρέθηκαν εκεί.</p>
				</div>
			</div>

			<div class="col-md-3 wow bounceIn" data-wow-delay="0.4s">
				<div class="top-grid">
					<img src="/static/images/fac3.png"> <label> </label>
					<p>Με τις σύγχονες τηλεοράσεις των δωματίων μας, θα ξεχάσετε
						ακόμη και να μπείτε στα πεντακάθαρα ντουζ μας.</p>
				</div>
			</div>

			<div class="col-md-3 wow bounceIn" data-wow-delay="0.4s">
				<div class="top-grid">
					<img src="/static/images/fac4.png"> <label> </label>
					<p>Ο πελάτης που ανακηρύσσεται ως πελάτης του μήνα, θα έχει την
						τιμή να απολάυσει ένα απερετίφ με τον ιδιοκτήτη.</p>
				</div>
			</div>

			<div class="clearfix"></div>
		</div>
	</div>
	<!-- top-grids -->
	<!-- about -->
	<div id="about" class="about">
		<div class="head-section">
			<div class="container">
				<h3>
					<span>ο</span><label>ιδιοκτητης</label>
				</h3>
			</div>
		</div>
		<!-- about-grids -->
		<div class="about-grids">
			<div class="col-md-4 about-grid about-grid1 wow fadeInLeft"
				data-wow-delay="0.4s">
				<div class="about-grid-info">
					<h4>
						<a href="#">Ο κος Μπειτς</a>
					</h4>
					<p>Είναι φανερό πως ο Νόρμαν ως παιδί υπέστη ψυχολογική
						καταπίεση από την μητέρα του, που προσπαθούσε να τον πείσει ότι οι
						γυναίκες είναι σατανικές. Οι δυο τους ζούσαν με πολλά προβλήματα
						έπειτα τον θάνατο του πατέρα του, αποκομμένοι από τον υπόλοιπο
						κόσμο.</p>
				</div>
				<div class="about-grid-pic">
					<img src="/static/images/perkins3.jpg" title="name" />
				</div>
			</div>
			<div class="col-md-4 about-grid about-grid2 wow fadeInUp"
				data-wow-delay="0.4s">
				<div class="about-grid-pic">
					<img src="/static/images/perkins2.jpg" title="name" />
				</div>
				<div class="about-grid-info">
					<h4>
						<a href="#">η μουσα του, η μητερα του</a>
					</h4>
					<p>Ως "Νόρμαν" Μπέητς, είναι απλά ο μικρός γιος της μητέρας του
						και πρέπει να κάνει ό,τι εκείνη του πει. Ως "Νόρμα" Μπέητς,
						ντύνεται με τα ρούχα της, μιμείται την φωνή της, και σκοτώνει
						οποιονδήποτε προσπαθεί να μπει ανάμεσά της και στον "Νόρμαν",
						ειδικά νεαρές όμορφες γυναίκες.</p>
				</div>
			</div>
			<div class="col-md-4 about-grid about-grid1 wow fadeInDown"
				data-wow-delay="0.4s">
				<div class="about-grid-info">
					<h4>
						<a href="#">απο αγαπημενο γιο, σε πετυχημενο επιχειρηματια</a>
					</h4>
					<p>Μετά τον φόνο της Μαίρυ Κρέιν (Μάριον Κρέιν στην ταινία) και
						του Μίλτον Άρμπογκαστ, ενός ιδιωτικού ντετέκτιβ, συλλαμβάνεται από
						τις αρχές. Θεωρείται "τρελός" και στέλνεται σε ένα ψυχιατρείο,
						όπου η προσωπικότητα της μητέρας του υπερνικά τις δύο άλλες στο
						μυαλό του και κυριαρχεί: συμπεριφέρεται, μιλά και σκέφτεται
						ακριβώς όπως εκείνη.</p>
				</div>
				<div class="about-grid-pic">
					<img src="/static/images/perkins1.gif" title="name" />
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<!-- /about-grids -->
	</div>
	</div>
	<!-- about -->



	<!-- portfolio -->
	<div id="port" class="portfolio">
		<div class="head-section">
			<div class="container">
				<h3>Οι χωροι μας</h3>
			</div>
		</div>
		<!-- Portfolio -->
		<div id="port" class="portfolio-box">

			<!-- start-portfolio-script-->
			<script type="text/javascript" src="/static/js/jquery.mixitup.min.js"></script>
			<script type="text/javascript">
						$(function () {
							var filterList = {
								init: function () {

									// MixItUp plugin
									// http://mixitup.io
									$('#portfoliolist').mixitup({
										targetSelector: '.portfolio',
										filterSelector: '.filter',
										effects: ['fade'],
										easing: 'snap',
										// call the hover effect
										onMixEnd: filterList.hoverEffect()
									});

								},
								hoverEffect: function () {
									// Simple parallax effect
									$('#portfoliolist .portfolio').hover(
										function () {
											$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
											$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');
										},
										function () {
											$(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');
											$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');
										}
									);

								}

							};
							// Run the show!
							filterList.init();
						});
					</script>
			<div class="container">
				<!--//End-portfolio-script-->

				<ul id="filters" class="clearfix">
					<li class="filtter-color1"><span class="filter active"
						data-filter="pool rooms outdoor">Ολοι οι χωροι</span></li>
					<li class="filtter-color2"><span class="filter"
						data-filter="pool">Η πισινα μας</span></li>
					<li class="filtter-color3"><span class="filter"
						data-filter="rooms">Τα δωματια μας</span></li>
					<li class="filtter-color4"><span class="filter"
						data-filter="outdoor">Εξωτερικοι χωροι</span></li>
				</ul>
			</div>

			<div id="portfoliolist">
				<div class="portfolio pool mix_all port-big-grid wow bounceIn"
					data-wow-delay="0.5s" data-cat="logo"
					style="display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">
						<a data-toggle="modal" data-target=".bs-example-modal-md" href="#"
							class="b-link-stripe b-animate-go  thickbox"> <img
							class="p-img" src="/static/images/2.jpg" />
							<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
									<div class="caption">
										<h4>φερτε τα παιδια σας</h4>
										<p>Το ξενοδοχείο Bates που χρησιμοποιήθηκε στη ταινία,
											δεσπόζει ακόμη στα Universal Studios του Λος Άντζελες.
											Χρειάστηκε μια εβδομάδα για να ολοκληρωθεί.</p>
									</div>
								</h2>
							</div></a>
					</div>
				</div>
				<div class="portfolio rooms mix_all wow bounceIn"
					data-wow-delay="0.5s" data-cat="app"
					style="display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">
						<a data-toggle="modal" data-target=".bs-example-modal-md" href="#"
							class="b-link-stripe b-animate-go  thickbox"> <img
							class="p-img" src="/static/images/3.jpg" />
							<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
									<div class="caption">
										<h4>υπερσυγχρονα δωματια</h4>
										<p>Η σκηνή στο μπάνιο δεν προβλεπόταν να έχει μουσική.
											Όμως ο Μπέρναρντ Χέρμαν επέμενε τόσο πολύ να δείξει την
											μελωδία του στον Χίτσκοκ. Χρειάστηκε μια εβδομάδα για να
											ολοκληρωθεί.</p>
									</div>
								</h2>
							</div></a>
					</div>
				</div>
				<div class="portfolio outdoor mix_all wow bounceIn"
					data-wow-delay="0.5s" data-cat="web"
					style="display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">
						<a data-toggle="modal" data-target=".bs-example-modal-md" href="#"
							class="b-link-stripe b-animate-go  thickbox"> <img
							class="p-img" src="/static/images/8.jpg" />
							<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
									<div class="caption">
										<h4>φουλ ρελαξ</h4>
										<p>Το Ψυχώ παραλίγο να μην συμβεί. Ο Χίτσκοκ ετοίμαζε το
											No Bail For The Judge με την Όντρεϊ Χέπμπορν, το οποίο
											εγκατέλειψε για χάρη του Ψυχώ. Χρειάστηκε μια εβδομάδα για να
											ολοκληρωθεί.</p>
									</div>
								</h2>
							</div></a>
					</div>
				</div>
				<div class="portfolio icon mix_all wow bounceIn"
					data-wow-delay="0.5s" data-cat="icon"
					style="display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">
						<a data-toggle="modal" data-target=".bs-example-modal-md" href="#"
							class="b-link-stripe b-animate-go  thickbox"> <img
							class="p-img" src="/static/images/11.jpg" />
							<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
									<div class="caption">
										<h4>νιωθετε σαν το σπιτι σας</h4>
										<p>Το σπίτι των Bates είναι βασισμένο σε πίνακα! Το The
											House By the Railroad, είναι δημιούργημα του Έντουαρντ Χόπερ.
											Χρειάστηκε μια εβδομάδα για να ολοκληρωθεί. Χρειάστηκε μια
											εβδομάδα για να ολοκληρωθεί.</p>
									</div>
								</h2>
							</div></a>
					</div>
				</div>
				<div class="portfolio outdoor mix_all wow bounceIn"
					data-wow-delay="0.5s" data-cat="app"
					style="display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">
						<a data-toggle="modal" data-target=".bs-example-modal-md" href="#"
							class="b-link-stripe b-animate-go  thickbox"> <img
							class="p-img" src="/static/images/4.jpg" />
							<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
									<div class="caption">
										<h4>τεσσαρων αστερων</h4>
										<p>Η Paramount έβρισκε το Ψυχώ πολύ κακή ιδέα για τον
											κινηματογράφο και δέχτηκε να κάνει την παραγωγή, μόνο όταν ο
											Χίτσκοκ τους ανακοίνωσε</p>
									</div>
								</h2>
							</div></a>
					</div>
				</div>
				<div class="portfolio rooms mix_all wow bounceIn"
					data-wow-delay="0.5s" data-cat="card"
					style="display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">
						<a data-toggle="modal" data-target=".bs-example-modal-md" href="#"
							class="b-link-stripe b-animate-go  thickbox"> <img
							class="p-img" src="/static/images/5.jpg" />
							<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
									<div class="caption">
										<h4>χαλαρωση διπλα στην θαλασσα</h4>
										<p>Η περίφημη σκηνή στο μπάνιο τραβήχτηκε από 77
											διαφορετικές κάμερες. Χρειάστηκε μια εβδομάδα για να
											ολοκληρωθεί. Χρειάστηκε μια εβδομάδα για να ολοκληρωθεί.</p>
									</div>
								</h2>
							</div></a>
					</div>
				</div>
				<div class="portfolio pool mix_all wow bounceIn"
					data-wow-delay="0.5s" data-cat="icon"
					style="display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">
						<a data-toggle="modal" data-target=".bs-example-modal-md" href="#"
							class="b-link-stripe b-animate-go  thickbox"> <img
							class="p-img" src="/static/images/6.jpg" />
							<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
									<div class="caption">
										<h4>το υπεροχο προσωπικο μας</h4>
										<p>Ο Χίτσκοκ έγινε σαφής να μην επιτραπεί η είσοδος στους
											αργοπορημένους θεατές, προκειμένου να διατηρήσει τις
											ανατροπές στη ταινία. Αυτό του έδωσε μεγάλη δημοσιότητα.
											Χρειάστηκε μια εβδομάδα για να ολοκληρωθεί.</p>
									</div>
								</h2>
							</div></a>
					</div>
				</div>
				<div class="portfolio outdoor mix_all wow bounceIn"
					data-wow-delay="0.5s" data-cat="app"
					style="display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">
						<a data-toggle="modal" data-target=".bs-example-modal-md" href="#"
							class="b-link-stripe b-animate-go  thickbox"> <img
							class="p-img" src="/static/images/7.jpg" />
							<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
									<div class="caption">
										<h4>με εγχρωμη τηλεοραση</h4>
										<p>Η νουβέλα του Μπλοχ βασίζεται πάνω στον δολοφόνο Εντ
											Γκέινς, ο οποίος έμενε 40 μίλια μακριά από τον συγγραφέα.
											Χρειάστηκε μια εβδομάδα για να ολοκληρωθεί.</p>
									</div>
								</h2>
							</div></a>
					</div>
				</div>

				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	</div>

	<!-- end portfolio -->

	<!-- GuestBook -->
	<br>
	<div class="container">

		</br>



		<div class="head-section" id="guestbook">
			<div class="container">
				<h3>
					<label>Guestbook</label>
				</h3>
			</div>
		</div>


		<c:if test="${!empty allComments}">
			<table class="table table-hover">
				<tr>
					<th width="120">Όνομα</th>
					<th width="120">email</th>
					<th width="120">Πόλη</th>
					<th width="120">Σχόλια</th>
					<th width="60">Επεξεργασία</th>
					<th width="60">Διαγραφή</th>
				</tr>
				<c:forEach items="${allComments}" var="guestbook">
					<tr>
						<td>${guestbook.nickname}</td>
						<td>${guestbook.email}</td>
						<td>${guestbook.city}</td>
						<td>${guestbook.comments}</td>
						<td><a
							href="<c:url value='/updateComment/${guestbook.id}' />">Επεξεργασία</a></td>
						<td><a
							href="<c:url value='/deleteComment/${guestbook.id}' />">Διαγραφή</a></td>
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
