<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>EasyRecipe</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: sans-serif;
}

html {
	scroll-behavior: smooth;
}

section {
	width: 100%;
	height: 100vh;
}

section nav {
	display: flex;
	justify-content: space-around;
	align-items: center;
	position: fixed;
	right: 0;
	left: 0;
	background: white;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
	z-index: 1000;
}

section nav .logo img {
	width: 110px;
	cursor: pointer;
	margin: 7px 0;
}

section nav ul {
	list-style: none;
}

section nav ul li {
	display: inline-block;
	margin: 0 15px;
}

section nav ul li a {
	text-decoration: none;
	color: #000;
	font-weight: 500;
	font-size: 17px;
	transition: 0.1s;
}

section nav ul li a::after {
	content: '';
	width: 0;
	height: 2px;
	background: #fac031;
	display: block;
	transition: 0.2s linear;
}

section nav ul li a:hover::after {
	width: 100%;
}

section nav ul li a:hover {
	color: #fac031;
}

section nav .icon i {
	font-size: 18px;
	color: #000;
	margin: 0 5px;
	cursor: pointer;
	transition: 0.3s;
}

section nav .icon i:hover {
	color: #fac031;
}

section .main {
	display: flex;
	align-items: center;
	justify-content: space-around;
	position: relative;
	top: 130px;
}

section .main .men_text h1 {
	font-size: 60px;
	position: relative;
	top: -90px;
	left: 20px;
}

section .main .men_text h1 span {
	margin-left: 15px;
	color: #fac031;
	font-family: mv boli;
	line-height: 22px;
}

section .main .main_image img {
	width: 650px;
	position: relative;
	left: 70px;
}

section p {
	width: 600px;
	text-align: justify;
	position: relative;
	left: 55px;
	bottom: 120px;
	line-height: 22px;
}

section .main_btn {
	background: #fac031;
	position: relative;
	left: 55px;
	bottom: 65px;
	width: 150px;
	cursor: pointer;
	padding: 12px 25px;
}

section .main_btn a {
	color: #fff;
	margin-right: 5px;
	text-decoration: none;
}

section .main_btn i {
	color: #fff;
	transition: 0.3s;
}

section .main_btn:hover i {
	transform: translateX(7px);
}

.about {
	width: 100%;
	height: 100vh;
	padding: 70px 0;
}

.about .about_main {
	display: flex;
	align-items: center;
	justify-content: space-around;
}

.about .about_main .image img {
	width: 800px;
	height: 630px;
	position: relative;
	top: 60px;
}

.about .about_main .about_text h1 span {
	color: #fac031;
	margin-right: 15px;
	font-family: mv boli;
}

.about .about_main .about_text h1 {
	font-size: 55px;
	position: relative;
	bottom: 50px;
}

.about .about_main .about_text h3 {
	font-size: 30px;
	margin: 0 0 50px 0;
}

.about .about_main .about_text p {
	width: 650px;
	text-align: justify;
	margin-right: 30px;
	line-height: 22px;
}

.about .about_btn {
	background: #fac031;
	padding: 12px 25px;
	text-decoration: none;
	color: #fff;
	position: relative;
	left: 57%;
	bottom: 70px;
}

.review {
	width: 100%;
	height: 100vh;
	padding: 7px 0;
}

.review h1 {
	font-size: 55px;
	display: flex;
	align-items: center;
	justify-content: center;
}

.review h1 span {
	margin-left: 15px;
	color: #fac031;
	font-family: mv boli;
}

.review h1 span::after {
	content: '';
	width: 100%;
	height: 2px;
	background: #fac031;
	position: relative;
	bottom: 15px;
	display: block;
}

.review .review_box {
	width: 95%;
	margin: 70px auto;
	display: flex;
}

.review .review_box .review_card {
	width: 350px;
	height: 485px;
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.5);
	border-radius: 8px;
	padding: 8px 20px;
	margin: 0 8px;
}

.review .review_box .review_card .review_profile {
	display: flex;
	align-items: center;
	justify-content: center;
	position: relative;
	transition: 0.3s;
}

.review .review_box .review_card:hover .review_profile {
	transform: translateY(-60px);
}

.review .review_box .review_card .review_profile img {
	width: 180px;
	height: 180px;
	object-fit: cover;
	object-position: center;
	border-radius: 50%;
	border: 5px solid #cccccc;
}

.review .review_box .review_card .review_text {
	text-align: center;
}

.review .review_box .review_card .review_text .name {
	color: #000;
	transition: 0.3s;
}

.review .review_box .review_card:hover .review_text .name {
	transform: translateY(-50px);
}

.review .review_box .review_card .review_text .review_icon {
	color: #fac031;
	transition: 0.3s;
}

.review .review_box .review_card:hover .review_text .review_icon {
	transform: translateY(-30px);
}

.review .review_box .review_card .review_text .review_social i {
	margin: 5px 1px;
	font-size: 15px;
	opacity: 0;
	cursor: pointer;
	transition: 0.3s;
}

.review .review_box .review_card:hover .review_text .review_social i {
	opacity: 1;
	transform: translateY(-8px);
}

.review .review_box .review_card .review_text p {
	text-align: center;
	line-height: 22px;
	transition: 0.3s;
}

.review .review_box .review_card:hover .review_text p {
	margin-top: 5px;
}

.team {
	width: 100%;
	height: 90vh;
	background-size: cover;
	background-position: center;
}

.team h1 {
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 55px;
	margin-bottom: 30px;
}

.team h1 span {
	color: #fac031;
	margin-left: 15px;
	font-family: mv boli;
}

.team h1 span::after {
	content: '';
	width: 100%;
	height: 2px;
	background: #fac031;
	display: block;
	position: relative;
	bottom: 15px;
}

.team .team_box {
	width: 95%;
	margin: 0 auto;
	display: flex;
	align-items: center;
	justify-content: center;
	position: relative;
	top: 13%;
}

.team .team_box .profile {
	width: 320px;
	height: 320px;
	border-radius: 50%;
	margin: 0 15px;
	display: flex;
	align-items: center;
	justify-content: center;
	position: relative;
	box-shadow: 0 0 8px rgba(0, 0, 0, 0.5);
	transition: 0.4s;
}

.team .team_box .profile:hover {
	border-radius: 20px;
	height: 320px;
}

.team .team_box .profile img {
	width: 250px;
	height: 250px;
	object-fit: cover;
	object-position: center;
	border-radius: 50%;
	cursor: pointer;
	box-shadow: 0 0 8px rgba(0, 00, 0.5);
	z-index: 2;
	transition: 0.4s;
}

.team .team_box .profile:hover img {
	border-radius: 20px;
	margin-top: -230px;
}

.team .team_box .profile .info {
	position: absolute;
	text-align: center;
	top: 25%;
	transition: 0.4s;
}

.team .team_box .profile:hover .info {
	top: 60%;
}

.team .team_box .profile .info .name {
	color: #fac031;
	margin-bottom: 15px;
}

.team .team_box .profile .info .bio {
	width: 70%;
	text-align: center;
	margin: 0 auto 10px auto;
}

.team .team_box .profile .info .team_icon i {
	margin: 10px 5px 5px 0;
	cursor: pointer;
	transition: 0.3s;
}

.team .team_box .profile .info .team_icon i:hover {
	color: #fac031;
}

footer {
	width: 100%;
	padding: 30px 0 0 20px;
	background: #eeeeee;
}

footer .footer_main {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
}

footer .footer_main .footer_tag {
	text-align: center;
}

footer .footer_main .footer_tag h2 {
	color: #000;
	margin-bottom: 25px;
	font-size: 30px;
}

footer .footer_main .footer_tag p a {
	margin: 10px 0;
	text-decoration: none;
	color: #000;
}

footer .footer_main .footer_tag i {
	margin: 0 5px;
	cursor: pointer;
}

footer .footer_main .footer_tag i:hover {
	color: #fac031;
}

::-webkit-scrollbar {
	width: 13px;
}

::webkit-scrollbar-track {
	border-radius: 15px;
	box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.5);
}

::-webkit-scrollbar-thumb {
	background: #fac031;
	border-radius: 15px;
}
</style>
<body>

	<section id="Home">
		<nav>
			<div class=" logo">
				<img src=".\Image\logo.png">

			</div>

			<ul>
				<li><a href="#Home">Home</a></li>
				<li><a href="#About">About</a></li>
				<li><a href="RecipeList">Recipes</a></li>
				<li><a href="gallery">Gallery</a></li>
				<li><a href="#Review">Review</a></li>
			</ul>

			<div class="icon">
				<i class="fa-solid fa-heart"></i>
			</div>

		</nav>

		<div class="main">
			<div class="men_text">
				<h1>
					Get Fresh <span>Food Recipes</span><br>in an Easy Way
				</h1>

			</div>

			<div class="main_image">
				<img src=".\Image\main_img.jpg">
			</div>

		</div>

		<p>"Welcome to EasyRecipe - Where Culinary Creativity Meets
			Simplicity! Explore a world of delectable delights with our
			collection of easy-to-follow recipes. From quick weeknight meals to
			impressive dinner party dishes, EasyRecipe is your go-to destination
			for culinary inspiration. Start cooking up delicious memories today!"</p>

		<div class="main_btn">
			<a href="RecipeList">Recipes</a> <i class="fa-solid fa-angle-right"></i>
		</div>

	</section>


	<div class="about" id="About">
		<div class="about_main">
			<div class="image">
				<img src="Image/Food-plate.jpg">
			</div>

			<div class="about_text">
				<h1>
					<span>About</span>Us
				</h1>
				<h3>Why Choose Us?</h3>
				<p>"At EasyRecipe, we're passionate about making cooking fun,
					accessible, and rewarding for everyone. Our mission is simple: to
					empower home cooks with easy-to-follow recipes and helpful tips, so
					they can unleash their inner chef and create culinary masterpieces
					with confidence. Join us on this delicious journey!"</p>
			</div>
		</div>

		<a href="RecipeList" class="about_btn">Recipes</a>
	</div>


	<div class="review" id="Review">
		<h1>
			Customer <span>Review</span>
		</h1>

		<div class="review_box">
			<div class="review_card">

				<div class="review_profile">
					<img src="Image/review1.avif">
				</div>

				<div class="review_text">
					<h2 class="name">Aastha Sharma</h2>

					<div class="review_icon">
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star-half-stroke"></i>
					</div>

					<div class="review_social">
						<a href="www.facebook.com/aastha.user"><i class="fa-brands fa-facebook-f"></i></a> 
						 <a href=" www.instagram.com/aastha.user"><i class="fa-brands fa-instagram"></i></a>
						 <a href=" www.linkedin.com/in/aastha-user"><i class="fa-brands fa-linkedin-in"></i></a>
					</div>

					<p>"As a busy mom, EasyRecipe has been a lifesaver! Their quick
						and delicious meal ideas have made dinner time stress-free and
						enjoyable for the whole family."</p>

				</div>

			</div>


			<div class="review_card">

				<div class="review_profile">
					<img src="Image/review2.jpg">
				</div>

				<div class="review_text">
					<h2 class="name">Vijay</h2>

					<div class="review_icon">
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star-half-stroke"></i>
					</div>

					<div class="review_social">
						<a href=" www.facebook.com/vijay.user"><i class="fa-brands fa-facebook-f"></i></a> 
						 <a href=" www.instagram.com/vijay.user"><i class="fa-brands fa-instagram"></i></a>
						 <a href="www.linkedin.com/in/vijay-user"><i class="fa-brands fa-linkedin-in"></i></a>
					</div>

					<p>"EasyRecipe has revolutionized my cooking routine! Their
						recipes are simple to follow yet yield restaurant-quality results.
						I'm hooked!"</p>

				</div>

			</div>


			<div class="review_card">

				<div class="review_profile">
					<img src="Image/review3.jpg">
				</div>

				<div class="review_text">
					<h2 class="name">Aashish Tamang</h2>

					<div class="review_icon">
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star-half-stroke"></i>
					</div>

					<div class="review_social">
						<a href=" www.facebook.com/aashish.user"><i class="fa-brands fa-facebook-f"></i></a> 
						 <a href=" www.instagram.com/aashish.user"><i class="fa-brands fa-instagram"></i></a>
						 <a href=" www.linkedin.com/in/aashish-user"><i class="fa-brands fa-linkedin-in"></i></a>
					</div>

					<p>"I've never been much of a cook, but EasyRecipe has changed
						that! Their user-friendly website and mouthwatering recipes have
						turned me into a kitchen hero among my friends and family."</p>

				</div>

			</div>


			<div class="review_card">

				<div class="review_profile">
					<img src="Image/review4.jpg">
				</div>

				<div class="review_text">
					<h2 class="name">Sweta</h2>

					<div class="review_icon">
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star-half-stroke"></i>
					</div>

					<div class="review_social">
						<a href="www.facebook.com/sweta.user"><i class="fa-brands fa-facebook-f"></i></a> 
						 <a href=" www.instagram.com/sweta.user"><i class="fa-brands fa-instagram"></i></a>
						 <a href=" www.linkedin.com/in/sweta-user"><i class="fa-brands fa-linkedin-in"></i></a>
					</div>

					<p>"EasyRecipe makes cooking a breeze! Their recipes are
						foolproof and absolutely delicious. Highly recommend!"</p>

				</div>

			</div>

		</div>

	</div>


	<div class="team">
		<h1>
			Our <span>Team</span>
		</h1>

		<div class="team_box">
			<div class="profile">

				<img src="Image/chef1.avif">

				<div class="info">
					<h2 class="name">Chef David</h2>
					<p class="bio">"Savory Sensation Specialist"</p>

					<div class="team_icon">
						<a href=" www.facebook.com/alex_cuisine"><i class="fa-brands fa-facebook-f"></i></a> 
						<a href="www.twitter.com/alex_cuisine"><i class="fa-brands fa-twitter"></i></a>
						 <a href="www.instagram.com/alex_cuisine"><i class="fa-brands fa-instagram"></i></a>
					</div>

				</div>
			</div>


			<div class="profile">

				<img src="Image/chef2.avif">

				<div class="info">
					<h2 class="name">Chef Sofia</h2>
					<p class="bio">"Culinary Innovator & Fusion Queen"</p>

					<div class="team_icon">
						<a href="www.facebook.com/sophia_fusionqueen"><i class="fa-brands fa-facebook-f"></i></a> 
						<a href="www.twitter.com/sophia_fusion"><i class="fa-brands fa-twitter"></i></a>
						 <a href="www.instagram.com/sophia_fusionqueen"><i class="fa-brands fa-instagram"></i></a>
					</div>


				</div>
			</div>


			<div class="profile">

				<img src="Image/chef3.jpg">

				<div class="info">
					<h2 class="name">Chef Jessica</h2>
					<p class="bio">"Master of Bakking Delights"</p>

					<div class="team_icon">
						<a href="www.facebook.com/emilychef"><i class="fa-brands fa-facebook-f"></i></a> 
						<a href="www.twitter.com/emilychef"><i class="fa-brands fa-twitter"></i></a>
						 <a href=" www.instagram.com/emilychef"><i class="fa-brands fa-instagram"></i></a>
					</div>


				</div>
			</div>




			<div class="profile">

				<img src="Image/chef4.avif">

				<div class="info">
					<h2 class="name">Chef Sujan</h2>
					<p class="bio">"Grill Master Extraordinaire"</p>

					<div class="team_icon">
						<a href="www.facebook.com/michael_grillmaster"><i class="fa-brands fa-facebook-f"></i></a> 
						<a href="www.twitter.com/michael_grill"><i class="fa-brands fa-twitter"></i></a>
						 <a href="www.instagram.com/michael_grillmaster"><i class="fa-brands fa-instagram"></i></a>
					</div>


				</div>
			</div>

		</div>
	</div>


	<footer>
		<div class="footer_main">


			<div class="footer_tag">

				<h2>Quick Link</h2>
				<p>
					<a href="#Home">Home</a>
				</p>
				<p>
					<a href="#About">About</a>
				</p>
				<p>
					<a href="RecipeList">Recipes</a>
				</p>
				<p>
					<a href="gallery">Gallery</a>
				</p>
				<p>
					<a href="#Review">Review</a>
				</p>
			</div>


			<div class="footer_tag">

				<h2>Contact</h2>
				<p>+977 9856555644</p>
				<p>+977 9887555766</p>
				<p>easyrecipe3@gmail.com</p>
				<p>easycooking2@gmail.com</p>
			</div>

			<div class="footer_tag">

				<h2>Our Services</h2>
				<p>Easy Instructions</p>
				<p>Search By Ingredients</p>
				<p>Instructional videos</p>
			</div>

			<div class="footer_tag">

				<h2>Follow Us</h2>
					<a href=" www.facebook.com/easyrecipe"><i class="fa-brands fa-facebook-f"></i></a> 
					<a href=" www.instagram.com/easyrecipe"><i class="fa-brands fa-instagram"></i></a>
					<a href=" www.twitter.com/easyrecipe"><i class="fa-brands fa-twitter"></i></a>
					<a href="www.youtube.com/easyrecipe"><i class="fa-brands fa-youtube"></i></a>
					<a href="https://github.com/Ad-Manisha/easy-recipe-web-app"><i class="fa-brands fa-github"></i></a>
					
			</div>

		</div>
	</footer>